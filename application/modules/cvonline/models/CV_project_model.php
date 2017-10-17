<?php 
	if (!defined('BASEPATH')){
		exit('No direct script access allowed');
	}

	/**
	* MODEL CV PROJECT
	*/

	class CV_project_model extends MY_Model{
		public function __construct(){
			parent::__construct();
			$this->table_name = 'CV_project';
		}
	}