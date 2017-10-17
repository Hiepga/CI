<?php
	if (!defined('BASEPATH')) {
		exit('No direct script access allowed');
	}

	/**
	* MODEL Education
	*/
	class CV_education_model extends MY_Model
	{
		
		public function __construct()
		{
			parent::__construct();
			$this->table_name = 'CV_education';
		}
	}

?>