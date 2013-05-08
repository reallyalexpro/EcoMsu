<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcegraduates extends SectionDatasource{

		public $dsParamROOTELEMENT = 'graduates';
		public $dsParamORDER = 'asc';
		public $dsParamGROUP = '61';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'order';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'firstname',
				'name',
				'patronymic',
				'birthday',
				'graduation_year',
				'contacts',
				'photo: photo'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Graduates',
				'author' => array(
					'name' => 'Главный Администратор',
					'website' => 'http://cafedra',
					'email' => 'a@a.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2013-04-22T11:28:25+00:00'
			);
		}

		public function getSource(){
			return '14';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
