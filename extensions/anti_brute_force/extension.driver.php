<?php
	/*
	License: MIT, see the LICENCE file
	*/

	if(!defined("__IN_SYMPHONY__")) die("<h2>Error</h2><p>You cannot directly access this file</p>");

	// facade
	require_once(EXTENSIONS . '/anti_brute_force/lib/class.ABF.php');
	// UI
	require_once(EXTENSIONS . '/anti_brute_force/lib/class.ViewFactory.php');

	/**
	 *
	 * Anti Brute Force Decorator/Extension
	 * @author nicolasbrassard
	 *
	 */
	class extension_anti_brute_force extends Extension {

		/**
		 * Name of the extension
		 * @var string
		 */
		const EXT_NAME = 'Anti Brute Force';

		/**
		 * private variable for holding the errors encountered when saving
		 * @var array
		 */
		protected $errors = array();

		/**
		 * Flag to check if ban check was done
		 * @var boolean
		 */
		protected $banCheckDone = false;

		/**
		 * Credits for the extension - this is found in extension.meta.xml
		 */

		/**
		 *
		 * Symphony utility function that permits to
		 * implement the Observer/Observable pattern.
		 * We register here delegate that will be fired by Symphony
		 */
		public function getSubscribedDelegates(){
			return array(
				array(
					'page' => '/login/',
					'delegate' => 'AuthorLoginFailure',
					'callback' => 'authorLoginFailure'
				),
				array(
					'page' => '/login/',
					'delegate' => 'AuthorLoginSuccess',
					'callback' => 'authorLoginSuccess'
				),
				array(
					'page'		=> '/system/preferences/',
					'delegate'	=> 'AddCustomPreferenceFieldsets',
					'callback'	=> 'addCustomPreferenceFieldsets'
				),
				array(
					'page'      => '/system/preferences/',
					'delegate'  => 'Save',
					'callback'  => 'save'
				),
				array(
					'page'      => '/backend/',
					'delegate'  => 'AdminPagePreGenerate',
					'callback'  => 'adminPagePreGenerate'
				),
				array(
					'page'      => '/backend/',
					'delegate'  => 'InitaliseAdminPageHead',
					'callback'  => 'initaliseAdminPageHead'
				),
				array(
					'page'     => '/backend/',
					'delegate' => 'AppendPageAlert',
					'callback' => 'appendPageAlert'
				)
			);
		}

		/**
		 * Delegate fired to add a link to the Banned IPs Administration page
		 */
		public function fetchNavigation() {
			return array(
					array (
						'location' => __(self::EXT_NAME),
						'name' => __(self::EXT_NAME),
						'limit' =>  ABF::instance()->getNaviguationGroup(),
						'children' => array(
							array(
								'name'	=> __('Banned IPs'),
								'link'	=> '/banned_ips/'
							),
							array(
								'name'	=> __('Black Listed IPs'),
								'link'	=> '/colored_lists/?list=black'
							),
							array(
								'name'	=> __('Grey Listed IPs'),
								'link'	=> '/colored_lists/?list=grey'
							),
							array(
								'name'	=> __('White Listed IPs'),
								'link'	=> '/colored_lists/?list=white'
							)
						) // children
					) // nav group
				); // nav
		}

		/**
		 * Delegate fired when the HEAD section will be built
		 * @param array $context
		 */
		public function initaliseAdminPageHead($context) {
			// do it here since it is called before
			// processing $_POST['action']
			// BUT NOT CALLED ON THE LOGIN PAGE... DAMN...
			$this->doBanCheck();
		}

		/**
		 *
		 * Delegate fired when a login fails
		 * @param array $context
		 */
		public function authorLoginFailure($context) {
			// do not do anything is ip is white listed
			if (!ABF::instance()->isWhiteListed()) {
				
				// register failure in DB
				ABF::instance()->registerFailure($context['username'], self::EXT_NAME);
	
				// if user is now banned
				if (ABF::instance()->isCurrentlyBanned()) {
					// register into grey list
					ABF::instance()->registerToGreyList(self::EXT_NAME);
					// move to black list if necessary
					ABF::instance()->moveGreyToBlack(self::EXT_NAME);
				}
			}
		}

		/**
		 *
		 * Delegate fired when a author is logged in correctly
		 * N.B. Fired on each and every page in the admin *except* login
		 * @param array $context
		 */
		public function authorLoginSuccess($context) {
			// Since user can still post data to the login page
			// we don't want them to be able to know they guessed it right.
			// So, if user is loggued in but still ban, we logout them
			if (ABF::instance()->isCurrentlyBanned()) {
				Administration::instance()->logout();
			} else {
				// unregister any result with current IP
				ABF::instance()->unregisterFailure();
			}
		}

		/**
		 *
		 * Delegate fired when the body of the page must be build
		 * @param array $context
		 */
		public function adminPagePreGenerate($context) {
			$oPage = $context['oPage'];

			// clean on login page
			if ($oPage instanceof contentLogin) {
				// clean database before check
				ABF::instance()->removeExpiredEntries();
				ABF::instance()->removeExpiredListEntries();
			}

			// N.B. We must still do it here
			// since initaliseAdminPageHead is not fired on some requests
			if ($this->mustCheck($oPage)) {
				$this->doBanCheck();
			}
		}

		public function appendPageAlert() {
			$blocked = ABF::instance()->getFailures();
			$blockedCount = count($blocked);
			if ($blockedCount > 0) {
				Administration::instance()->Page->pageAlert(
					__('There are currently') .
					'<a href="' . SYMPHONY_URL . '/extension/anti_brute_force/banned_ips/">' .
					__('%d blocked IPs.', array($blockedCount)) .
					'</a>'
				);
			}
		}


		/**
		 * Check if this type $oPage needs ban check
		 * @param HTMLPage $oPage
		 */
		private function mustCheck($oPage) {
			return (
				   !($oPage instanceof contentExtensionAnti_brute_forceLogin)) ||
					($oPage instanceof contentExtensionAnti_brute_forceLogin &&
					$unBanViaEmail != 'No' &&
					$unBanViaEmail != false &&
					$unBanViaEmail != 'off');
		}

		/**
		 * Do the actual ban check: throw exception if banned/black listed
		 * N.B. This one will be called only once; wont do anything after that
		 */
		public function doBanCheck() {
			// if no already done...
			if (!$this->banCheckDone) {

				ABF::instance()->doBanCheck();

				$this->banCheckDone = true;
			}
		}

		/**
		 *
		 * Delegate fired when the extension is install
		 */
		public function install() {
			return ABF::instance()->install($this);
		}

		/**
		 *
		 * Delegate fired when the extension is updated (when version changes)
		 * @param string $previousVersion
		 */
		public function update($previousVersion) {
			$about = ExtensionManager::about('anti_brute_force');
			return ABF::instance()->update($previousVersion,$about['version']);
		}

		/**
		 *
		 * Delegate fired when the extension is uninstall
		 * Cleans settings and Database
		 */
		public function uninstall() {
			return ABF::instance()->uninstall();
		}

		/**
		 * Delegate handle that adds Custom Preference Fieldsets
		 * @param string $page
		 * @param array $context
		 */
		public function addCustomPreferenceFieldsets($context) {
			// creates the field set
			$fieldset = new XMLElement('fieldset');
			$fieldset->setAttribute('class', 'settings');
			$fieldset->appendChild(new XMLElement('legend', self::EXT_NAME));

			// create a paragraph for short intructions
			$p = new XMLElement('p', __('Define here when and how IP are blocked'), array('class' => 'help'));

			// append intro paragraph
			$fieldset->appendChild($p);

			// outter wrapper
			$out_wrapper = new XMLElement('div');

			// create a wrapper
			$wrapper = new XMLElement('div');
			$wrapper->setAttribute('class', 'group');

			// append labels to field set
			$wrapper->appendChild(ViewFactory::generateField(ABF::SETTING_FAILED_COUNT, 'Fail count limit', $this->hasErrors(), $this->errors));
			$wrapper->appendChild(ViewFactory::generateField(ABF::SETTING_LENGTH, 'Blocked length <em>in minutes</em>', $this->hasErrors(), $this->errors));

			$out_wrapper->appendChild($wrapper);

			// create a new wrapper
			$wrapper = new XMLElement('div');
			$wrapper->setAttribute('class', 'group');
			$wrapper->appendChild(ViewFactory::generateField(ABF::SETTING_GL_THRESHOLD, 'Grey list threshold', $this->hasErrors(), $this->errors));
			$wrapper->appendChild(ViewFactory::generateField(ABF::SETTING_GL_DURATION, 'Grey list duration <em>in days</em>', $this->hasErrors(), $this->errors));

			$out_wrapper->appendChild($wrapper);

			// create a new wrapper
			$wrapper = new XMLElement('div');
			$wrapper->setAttribute('class', 'group');
			$wrapper->appendChild(ViewFactory::generateField(ABF::SETTING_AUTO_UNBAN, 'Users can unban their IP via email', $this->hasErrors(), $this->errors, 'checkbox'));
			$wrapper->appendChild(ViewFactory::generateField(ABF::SETTING_RESTRICT_ACCESS, 'Restrict access from authors', $this->hasErrors(), $this->errors, 'checkbox'));

			$out_wrapper->appendChild($wrapper);

			// wrapper into fieldset
			$fieldset->appendChild($out_wrapper);

			// adds the field set to the wrapper
			$context['wrapper']->appendChild($fieldset);
		}



		/**
		 *
		 * Utility method to know if there was any error
		 * while saving preferences
		 * @return boolean
		 */
		private function hasErrors() {
			return count($this->errors) > 0;
		}

		/**
		 * Delegate handle that saves the preferences
		 * Saves settings and cleans the database acconding to the new settings
		 * @param array $context
		 */
		public function save(&$context){
			ABF::instance()->setConfigVal($context, $this->errors, ABF::SETTING_LENGTH, false);
			ABF::instance()->setConfigVal($context, $this->errors, ABF::SETTING_FAILED_COUNT, false);
			ABF::instance()->setConfigVal($context, $this->errors, ABF::SETTING_GL_DURATION, false);
			ABF::instance()->setConfigVal($context, $this->errors, ABF::SETTING_GL_THRESHOLD, true);

			ABF::instance()->setConfigVal($context, $this->errors, ABF::SETTING_AUTO_UNBAN, false, 'checkbox');
			ABF::instance()->setConfigVal($context, $this->errors, ABF::SETTING_RESTRICT_ACCESS, true, 'checkbox');

			if (!$this->hasErrors()) {
				// clean old entry after save, since this may affects some banned IP
				ABF::instance()->removeExpiredEntries();
			}
		}
	}