<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcepositon extends SectionDatasource{

		public $dsParamROOTELEMENT = 'positon';
		public $dsParamORDER = 'asc';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'yes';
		public $dsParamREQUIREDPARAM = '$position';
		public $dsParamSORT = 'system:id';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'id' => '{$position}',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'firstname',
				'name',
				'patronymic',
				'position',
				'contacts: formatted',
				'info: formatted',
				'photo: photo'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Positon',
				'author' => array(
					'name' => 'Главный Администратор',
					'website' => 'http://eco-msu.metropol.ru',
					'email' => 'a@a.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2013-05-06T11:57:03+00:00'
			);
		}

		public function getSource(){
			return '12';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
