<?php 
	if (!defined('BASEPATH')){
		exit('No direct script access allowed');
	}

	/**
	* MODEL CV HOBIT
	*/

	class CV_hobit_model extends MY_Model{
		public function __construct(){
			parent::__construct();
			$this->table_name = 'CV_hobit';
		}
	}