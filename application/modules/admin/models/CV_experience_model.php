<?php
	if (!defined('BASEPATH')) {
		exit('No direct script access allowed');
	}

	/**
	* MODEL Experience
	*/
	class CV_experience_model extends MY_Model
	{
		
		public function __construct()
		{
			parent::__construct();
			$this->table_name = 'CV_experience';
		}
	}



?>