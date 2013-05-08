<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcetop_congratulations extends SectionDatasource{

		public $dsParamROOTELEMENT = 'top-congratulations';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '2';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'datetime';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'80' => 'yes',
				'75' => 'Поздравления',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'datetime',
				'short: formatted',
				'photos: image'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Top Congratulations',
				'author' => array(
					'name' => 'Главный Администратор',
					'website' => 'http://cafedra',
					'email' => 'a@a.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2013-04-25T06:11:13+00:00'
			);
		}

		public function getSource(){
			return '16';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
