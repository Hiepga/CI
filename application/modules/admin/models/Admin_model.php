<?php
	if (!defined("BASEPATH")) {
		exit('No direct script access allwoed');
	}


	/**
	* ADMIN MODEL
	*/
	class Admin_model extends MY_Model
	{
		
		public function __construct()
		{
			parent::__construct();
			$this->table_name 	=	'admin';
		}

		public function authenticate(array $data)
		{	
			$query = $this->db->get_where($this->table_name, array('username' => $data['username'], 'password' => $data['password']));
			if($query->num_rows() > 0){
				return TRUE;
			}else{
				return FALSE;
			}

		}
	}

