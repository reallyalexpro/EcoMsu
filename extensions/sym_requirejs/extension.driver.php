<?php 
/**
 * @package sym_requirejs
 * @author thomas appel <mail@thomas-appel.com>

 * Displays <a href="http://opensource.org/licenses/gpl-3.0.html">GNU Public License</a>
 * @license http://opensource.org/licenses/gpl-3.0.html GNU Public License
 */ 
Class extension_sym_requirejs extends Extension {

	public function about() {
		return array(
			'name' => 'requirejs',
			'type'	=> 'script',
			'version' => '1.3',
			'release-date' => '2012-04-17',
			'author' => array(
				'name' => 'Thomas Appel',
				'email' => 'mail@thomas-appel.com',
				'website' => 'http://thomas-appel.com'
			),
			'description' => 'adds requirejs amd library to the backend',
			'compatibility' => array(
				'2.2' => true
			)
		);
	}

	public function __construct(Array $args) {
		parent::__construct($args);

		$reqirepath = EXTENSION . '/requirejs/assets/requirejs/require.js';

		//if(!is_file($path)) {
		//throw new SymphonyErrorPage(__('Please make sure to include submodules as well. Try <code>git submodule update --init</code> from within the extensions/requirejs path'));
		//}
	}

	public function getSubscribedDelegates() {
		return array(

			// Subsection Manager
			array(
				'page' => '/backend/',
				'delegate' => 'AdminPagePreGenerate',
				'callback' => '__appendAssets'
			),
		);
	}

	public function __appendAssets($context) {
		$callback = Symphony::Engine()->getPageCallback();


		// Append Script for publish area
		if($callback['driver'] == 'publish') {
			Administration::instance()->Page->addScriptToHead(URL . '/extensions/sym_requirejs/assets/require.js', 111, false);
		}
	}
}
