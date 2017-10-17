<?php 
	if (!defined('BASEPATH')){
		exit('No direct script access allowed');
	}

	/**
	* MODEL CV MODEL
	*/
	class CV_model extends MY_Model
	{
		public function __construct()
		{
			parent::__construct();
			$this->table_name = 'CV_event';
		}
	}