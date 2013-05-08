<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceall_conferences extends SectionDatasource{

		public $dsParamROOTELEMENT = 'all-conferences';
		public $dsParamORDER = 'asc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '5';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'datetime';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'74' => 'later than {$today}, {$today}',
				'75' => 'Конференции, Международные конференции',
				'80' => 'yes',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'datetime',
				'category',
				'short: formatted'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'All Conferences',
				'author' => array(
					'name' => 'Главный Администратор',
					'website' => 'http://cafedra',
					'email' => 'a@a.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2013-04-25T09:35:50+00:00'
			);
		}

		public function getSource(){
			return '16';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
