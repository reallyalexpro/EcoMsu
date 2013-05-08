<?php
	require_once(TOOLKIT . '/class.sectionmanager.php');
	
	Class extension_ckeditor extends Extension
	{
        protected $addedCKEditorHeaders = false;
        protected $sections;

		/**
		 * Add callback functions to backend delegates
		 * @return array
		 */
		public function getSubscribedDelegates(){
			return array(
				array('page'		=>	'/backend/',
					  'delegate'	=>	'ModifyTextareaFieldPublishWidget',
					  'callback'	=>	'applyCKEditor'),
				      
				array('page'		=>	'/backend/',
					  'delegate'	=>	'ModifyTextBoxFullFieldPublishWidget',
					  'callback'	=>	'applyCKEditor'),
				
				array('page'		=> '/system/preferences/',
					  'delegate'	=> 'AddCustomPreferenceFieldsets',
					  'callback'	=> 'appendPresets'),
				
				array('page'		=> '/system/preferences/',
					  'delegate'	=> 'Save',
					  'callback'	=> 'savePresets')
			);
		}
		
		/**
		 * Append presets
		 * @param $context
		 */
		public function appendPresets($context)
		{
			Symphony::Engine()->Page->addScriptToHead(URL . '/extensions/ckeditor/assets/preferences.js', 4676);

			$wrapper = $context['wrapper'];

			$fieldset = new XMLElement('fieldset', '', array('class'=>'settings'));
			$fieldset->appendChild(new XMLElement('legend', __('CKEditor File Browser')));

			$sectionManager = new SectionManager($this);
			$sections = $sectionManager->fetch();
			
			// Check which sections are allowed:
			$data = Symphony::Configuration()->get('sections', 'ckeditor');
			$checkedSections = $data != false ? explode(',', $data) : array();
			
			// If there are no sections found:
			if($sections)
			{
				$options = array();
				foreach($sections as $section)
				{
					$options[] = array($section->get('id'), in_array($section->get('id'), $checkedSections), $section->get('name'));
				}
				$label = Widget::Label(__('Permitted sections for the file browser:'));
				$label->appendChild(Widget::Select('ckeditor_sections[]', $options, array('multiple'=>'multiple')));
				$fieldset->appendChild($label);
			}

            // Link templates for CKEditor:
			$sections = SectionManager::fetch();
			$dbpages 	= PageManager::fetch();

			$pages = array();

			// Filter out the ck_hide:
			foreach ($dbpages as $page) {
				$types = PageManager::fetchPageTypes($page['id']);
				if(!in_array('ck_hide', $types))
				{
					$pages[] = $page;
				}
			}

			// Adjust page title:
			foreach ($pages as &$_page) {
				$p = $_page;
				$title = $_page['title'];
				while (!is_null($p['parent'])) {
					$p = PageManager::fetch(false, array(), array('id' => $p['parent']));
					$title = $p['title'] . ' : ' . $title;
				}
				$_page['title'] = $title;
			}

			// Sort the array:
			$titles = array();
			foreach ($pages as $key => $row) {
				$titles[$key] = strtolower($row['title']);
			}
			array_multisort($titles, SORT_ASC, $pages);

			$this->sections = array();
			foreach($sections as $s)
			{
				$a = array('id'=>$s->get('id'), 'name'=>$s->get('name'), 'fields'=>array());
				$fields = FieldManager::fetch(null, $s->get('id'));
				foreach($fields as $field)
				{
					// For now, only allow fields of the type 'input' to be used as a handle:
					if($field->get('type') == 'input')
					{
						$a['fields'][] = array('id'=>$field->get('id'), 'label'=>$field->get('label'), 'element_name'=>$field->get('element_name'));
					}
				}
				$this->sections[] = $a;
			}

			$fieldset->appendChild(new XMLElement('p', __('Link templates:'), array('class' => 'label')));
			$ol = new XMLElement('ol');
			$ol->setAttribute('class', 'ckeditor-duplicator');

			$templates = Symphony::Database()->fetch('SELECT * FROM `tbl_ckeditor_link_templates`;');
			if(!is_array($pages)) $pages = array($pages);

			foreach($pages as $page)
			{
				foreach($templates as $template) {
					if($template['page_id'] != $page['id']) continue;
					$duplicator = $this->__buildDuplicatorItem($page, $template);
					$ol->appendChild($duplicator);
				}

				$duplicator = $this->__buildDuplicatorItem($page, NULL);
				$ol->appendChild($duplicator);
			}

			$fieldset->appendChild($ol);

			// Styles:
			$fieldset->appendChild(new XMLElement('p', __('Styles: (one style per line: <code>h3.example { color: #f00; background: #0f0; }</code>) Class name is converted to name (h3.hello-world = Hello World).'), array('class'=>'label')));
			$textarea = Widget::Textarea('ckeditor[styles]', 5, 50, Symphony::Configuration()->get('styles', 'ckeditor'));
			$fieldset->appendChild($textarea);

			$wrapper->appendChild($fieldset);
		}

		/**
		 * @param $page
		 * @param null $template
		 * @return XMLElement
		 */
        private function __buildDuplicatorItem($page, $template=NULL) {
            // value of -1 signifies a duplicator "template"
            $index = ($template == NULL) ? '-1' : $template['id'];

            $wrapper = new XMLElement('li');
            $wrapper->setAttribute('class', ($template == NULL) ? 'template' : '');

	        $header = new XMLElement('header', null, array('data-name' => $page['title']));
            $header->appendChild(new XMLElement('h4', $page['title']));
	        $wrapper->appendChild($header);

            $divgroup = new XMLElement('div');

            $label = Widget::Label(__('Link template') . '<i>' . __('Use {$id} for the entry ID, and {$fieldname} for field-placeholders. If the field has a handle, this is automatically used.') . '</i>');
            $label->appendChild(Widget::Input(
                "ckeditor_link_templates[" . $index . "][link]",
                General::sanitize($template['link']
            )));
            $divgroup->appendChild($label);
            $wrapper->appendChild($divgroup);
            
            $divgroup = new XMLElement('div', null, array('class'=>'group'));
            
            $label = Widget::Label(__('Section to get the entries from'));
            $options = array();
            foreach($this->sections as $section)
            {
                $options[] = array($section['id'], $template['section_id'] == $section['id'], $section['name']);
            }
/*            $label->appendChild(Widget::Select('ckeditor_link_templates[' . $index . '][section]', $options, array('onchange'=>
                "jQuery('optgroup[label!=' + jQuery(this).val() + '], optgroup[label!=' + jQuery(this).val() + '] option', jQuery(this).parent().parent()).hide()")));*/
            $label->appendChild(Widget::Select('ckeditor_link_templates[' . $index . '][section_id]', $options));
            $divgroup->appendChild($label);

            $label = Widget::Label(__('Field to display as name'));
            $options = array(array('', false, 0));
            foreach($this->sections as $section)
            {
                $fields = array();
                foreach($section['fields'] as $field)
                {
                    $fields[] = array($field['id'], $template['field_id'] == $field['id'], $field['label']);
                }
                $options[] = array('label'=>$section['name'], 'options'=>$fields);
            }
            $label->appendChild(Widget::Select('ckeditor_link_templates[' . $index . '][field_id]', $options));
            $divgroup->appendChild($label);

            $wrapper->appendChild(new XMLElement('input', NULL, array(
                'type' => 'hidden',
                'name' => 'ckeditor_link_templates[' . $index . '][page_id]',
                'value' => $page['id']
            )));

            $wrapper->appendChild($divgroup);

            return $wrapper;

        }
		
		/**
		 * Save the presets
		 * @param $context
		 */
		public function savePresets($context)
		{
			if(isset($_POST['ckeditor_sections'])) {
                // Save the sections to the config-file
				$sectionStr = implode(',', $_POST['ckeditor_sections']);
                Symphony::Configuration()->set('sections', $sectionStr, 'ckeditor');
                if(version_compare(Administration::Configuration()->get('version', 'symphony'), '2.2.5', '>'))
                {
                    // 2.3 and up:
                    Symphony::Configuration()->write();
                } else {
                    // Earlier versions:
					Symphony::Configuration()->write();
                }

			} else {
				// If no sections are selected, delete the file:
                Symphony::Configuration()->remove('sections', 'ckeditor');
				Symphony::Configuration()->write();
			}
			if(isset($_POST['ckeditor_link_templates'])) {
                // Save the link templates to the database:
                Symphony::Database()->query("DELETE FROM `tbl_ckeditor_link_templates`");

				$shortcuts = $_POST['ckeditor_link_templates'];
                unset($_POST['ckeditor_link_templates']);

                if(!empty($shortcuts))
                {
                    foreach($shortcuts as $i => $shortcut) {
                        Symphony::Database()->insert($shortcut, "tbl_ckeditor_link_templates");
                    }
                }
			}
			if(isset($_POST['ckeditor']['styles']))
			{
				Symphony::Configuration()->set('styles', General::sanitize($_POST['ckeditor']['styles']), 'ckeditor');
				Symphony::Configuration()->write();
			} else {
				Symphony::Configuration()->remove('styles', 'ckeditor');
				Symphony::Configuration()->write();
			}
		}

        /**
         * Install CKEditor
         * @return void
         */
        public function install()
        {
            Symphony::Database()->query("
                CREATE TABLE IF NOT EXISTS `tbl_ckeditor_link_templates` (
                `id` int(11) NOT NULL auto_increment,
                `link` varchar(255) NOT NULL,
                `field_id` int(11) NOT NULL,
                `section_id` int(11) NOT NULL,
                `page_id` int(11) NOT NULL,
                `sort_order` int(11) NOT NULL,
                PRIMARY KEY (`id`)
                )
    		");
        }

        /**
         * Update CKEditor
		 * @param bool|string $prevVersion
		 */
        public function update($prevVersion)
        {
            if(version_compare($prevVersion, '1.2.4', '<'))
            {
                $this->install();
            }
        }

		/**
		 * On uninstall, delete the ckeditor_sections-file
		 */
		public function uninstall()
		{
			Symphony::Configuration()->remove('sections', 'ckeditor');
			Administration::instance()->saveConfig();
            Symphony::Database()->query("DROP TABLE `tbl_ckeditor_link_templates`");
		}
		
		/**
		 * Load and apply CKEditor
		 * @param $context
		 * @return mixed
		 */
		public function applyCKEditor($context) {

			$format = $context['field']->get('text_formatter') == TRUE ? 'text_formatter' : 'formatter';

			if(($context['field']->get($format) != 'ckeditor' && $context['field']->get($format) != 'ckeditor_compact')) return;
			
			if(!$this->addedCKEditorHeaders){
				Administration::instance()->Page->addScriptToHead(URL . '/extensions/ckeditor/lib/ckeditor/ckeditor.js', 200, false);
				Administration::instance()->Page->addScriptToHead(URL . '/symphony/extension/ckeditor/js/', 209, false);				
				Administration::instance()->Page->addScriptToHead(URL . '/extensions/ckeditor/assets/symphony.ckeditor.js', 210, false);				
				Administration::instance()->Page->addStylesheetToHead(URL . '/extensions/ckeditor/assets/symphony.ckeditor.css', 'screen', 30);
				
				$this->addedCKEditorHeaders = true;
			}
		}
		
	}

