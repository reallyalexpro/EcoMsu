<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourceprojects extends SectionDatasource{

		public $dsParamROOTELEMENT = 'projects';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '5';
		public $dsParamSTARTPAGE = '{$page}';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'datetime';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'80' => 'yes',
				'75' => 'Курсовые и дипломные проекты',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'system:pagination',
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
				'name' => 'Projects',
				'author' => array(
					'name' => 'Главный Администратор',
					'website' => 'http://cafedra',
					'email' => 'a@a.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2013-04-25T07:54:39+00:00'
			);
		}

		public function getSource(){
			return '16';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
