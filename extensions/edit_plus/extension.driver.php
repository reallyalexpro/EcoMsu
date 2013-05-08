<?php

	Class extension_edit_plus extends Extension {

		public function getSubscribedDelegates(){
			return array(
				array(
					'page' => '/backend/',
					'delegate' => 'InitaliseAdminPageHead',
					'callback' => 'addFilesToHead'
				),
			);
		}

		public function addFilesToHead(){
			$uri = $_SERVER["REQUEST_URI"];
			if (preg_match('/blueprints\/utilities\/(new|edit)/', $uri) or strpos($uri, 'blueprints/pages/template')) {
				Administration::instance()->Page->addStylesheetToHead(URL . '/extensions/edit_plus/assets/edit-plus.css', 'screen');
				Administration::instance()->Page->addStylesheetToHead(URL . '/extensions/edit_plus/assets/xslt-highlighter.css', 'screen');
				Administration::instance()->Page->addScriptToHead(URL . '/extensions/edit_plus/assets/edit-plus.js');
				Administration::instance()->Page->addScriptToHead(URL . '/extensions/edit_plus/assets/xslt-highlighter.js');
			}
		}
	}
?>