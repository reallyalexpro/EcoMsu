<?php

	if(!defined("__IN_SYMPHONY__")) die("<h2>Error</h2><p>You cannot directly access this file</p>");

	require_once(CONTENT . '/content.login.php');
	require_once(EXTENSIONS . '/anti_brute_force/lib/class.ABF.php');

	/*
	License: MIT
	*/

	/**
	 *
	 * N.B. : Page is named login in order for the Administration Class to
	 * pretend in the login page via <code>$this->_context['driver']</code>.
	 * Should certainly be named something else
	 * @author nicolasbrassard
	 *
	 */
	class contentExtensionAnti_brute_forceLogin extends contentLogin {

		private $_email_sent = null;

		/**
		 *
		 * Overrides the view method
		 */
		public function view() {

			// if this is the unban request
			if (isset($this->_context) && is_array($this->_context) && count($this->_context) > 0) {
				// check if we have a hash present
				$hash = $this->_context[0];
				if (strlen($hash) == 36) {
					// Sanatize user inputed values... ALWAYS
					$hash = General::sanitize($hash);
					$this->__unban($hash);
				}

				// redirect not matter what
				// evil users won't be able to detect anything from the response
				// they *should* still be blocked since guessing a hash is
				// practicly unfesable
				redirect(SYMPHONY_URL);
				die();

			} else {

				// not banned ? do not show this page!
				if (!ABF::instance()->isCurrentlyBanned()) {
					redirect(SYMPHONY_URL);
					die();
				}

				$this->setTitle(sprintf('%1$s &ndash; %2$s', __('Unban via email'), __('Symphony')));

				$this->Form = Widget::Form('', 'post');
				$this->Form->setAttribute('class', 'frame');

				$this->Form->appendChild(new XMLElement('h1', __('Symphony')));

				$this->__buildFormContent();

				$this->Body->appendChild($this->Form);
			}
		}

		private function __buildFormContent() {
			$fieldset = new XMLElement('fieldset');

			// email was not send
			// or first time here (email_sent == NULL)
			if ($this->_email_sent !== true) {

				$fieldset->appendChild(new XMLElement('p', __('Enter your email address to be sent a remote unban link with further instructions.')));

				$label = Widget::Label(__('Email Address'));
				$label->appendChild(Widget::Input('email', $_POST['email'], 'text', array('autofocus','autofocus')));

			}

			if(isset($this->_email_sent)){

				if ($this->_email_sent) {

					$div = new XMLElement('div', __('Email sent. Follow the instruction in it.'));
					$fieldset->appendChild($div);

				} else {

					$div = new XMLElement('div', NULL, array('class' => 'invalid'));
					$div->appendChild($label);
					$div->appendChild(new XMLElement('p', __('There was a problem locating your account. Please check that you are using the correct email address.')));
					$fieldset->appendChild($div);
				}

			} else {

				$fieldset->appendChild($label);
			}

			$this->Form->appendChild($fieldset);

			if ($this->_email_sent !== true) {
				$div = new XMLElement('div', NULL, array('class' => 'actions'));
				$div->appendChild(new XMLElement('button', __('Send Email'), array('name' => 'action[send-email]', 'type' => 'submit')));
				$this->Form->appendChild($div);
			}
		}

		/**
		 *
		 * Overrides the action method
		 */
		public function action(){

			// set error flag
			$this->_email_sent = false;

			if(isset($_POST['action']) && is_array($_POST['action'])){

				foreach ($_POST['action'] as $action => $value) {

					switch ($action) {
						case 'send-email':
							$this->__sendEmail();
							break;
					}
				}
			}
		}

		private function __sendEmail() {

			$author = Symphony::Database()->fetchRow(0, "SELECT `id`, `email`, `first_name` FROM `tbl_authors` WHERE `email` = '".MySQL::cleanValue($_POST['email'])."'");
			$failure = ABF::instance()->getFailureByIp();

			if (is_array($author) && isset($author['email']) &&
				is_array($failure) && isset($failure[0]) && isset($failure[0]->Hash)) {
				// safe run
				try {
					// use default values
					$email = Email::create();

					$email->recipients = $author['email'];
					$email->subject = __('Unban IP link');
					$email->text_plain =
							__('Please follow this link to unban your IP: ') .
							SYMPHONY_URL . ABF::UNBAND_LINK . $failure[0]->Hash . '/' . PHP_EOL .
							__('If you do not remember your password, follow the "forgot password" link on the login page.') . PHP_EOL .
							__('The Symphony Team');

					// set error flag
					$this->_email_sent = $email->validate() && $email->send();

				} catch (Exception $e) {
					// do nothing
					$this->_email_sent = false;
				}
			}
		}

		private function __unban($hash) {
			ABF::instance()->unregisterFailure($hash);
		}
	}