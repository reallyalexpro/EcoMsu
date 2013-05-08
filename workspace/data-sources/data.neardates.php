<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourceNeardates extends Datasource {
		/**
		 * Initialise data source
		 */
		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);			
		}
				
		/**
		 * About this data source
		 */
		public function about() {
			return array(
				'name' => __('Near Dates'),
				'author' => array(
					'name' => 'Bla bla',
					'website' => 'http://yyyyy.ry'
				),
				'version' => '1.0',
				'release-date' => '2013-04-24'
			);	
		}
		
		/**
		 * Disallow data source parsing
		 */
		public function allowEditorToParse() {
			return false;
		}
		
		/**
		 * This function generates a list of month and weekday names for each language provided.
		 */
		public function grab(&$param_pool=NULL) {
			$result = new XMLElement('neardates');
			$today = new DateTime();
			$future = date_add($today, date_interval_create_from_date_string('10 days'));
			$a = new XMLElement('future', date_format($future, 'Y-m-d'));
			$result->appendChild($a);
			$post = date_sub($today, date_interval_create_from_date_string('-10 days'));
			$a = new XMLElement('post', date_format($post, 'Y-m-d'));
			$result->appendChild($a);
			return $result;
		}
		
	}
