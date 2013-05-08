<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcestaff extends SectionDatasource{

		public $dsParamROOTELEMENT = 'staff';
		public $dsParamORDER = 'asc';
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
				'position',
				'contacts: formatted',
				'photo: photo'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Staff',
				'author' => array(
					'name' => 'Главный Администратор',
					'website' => 'http://eco-msu.metropol.ru',
					'email' => 'a@a.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2013-05-06T11:55:56+00:00'
			);
		}

		public function getSource(){
			return '12';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
