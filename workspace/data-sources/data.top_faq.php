<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcetop_faq extends SectionDatasource{

		public $dsParamROOTELEMENT = 'top-faq';
		public $dsParamORDER = 'desc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '5';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'datetime';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		public $dsParamFILTERS = array(
				'80' => 'yes',
				'75' => 'Вопрос-ответ',
		);
		

		public $dsParamINCLUDEDELEMENTS = array(
				'title'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Top FAQ',
				'author' => array(
					'name' => 'Главный Администратор',
					'website' => 'http://cafedra',
					'email' => 'a@a.com'),
				'version' => 'Symphony 2.3.1',
				'release-date' => '2013-04-25T06:11:46+00:00'
			);
		}

		public function getSource(){
			return '16';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
