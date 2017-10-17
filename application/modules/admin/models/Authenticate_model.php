<?php
	if (!defined("BASEPATH")) {
		exit("No direct script access allowed");
	}

	/**
	* AUTHENTICATE MODEL
	*/
	class Authenticate_model extends MY_Model
	{
		
		public function __construct()
		{
			parent::__construct();
			$this->table_name 	=	'admin';
		}

		public function checklogin($data)
		{
			$condition = "username =" . "'" . $data['username'] . "' AND " . "password =" . "'" . $data['password'] . "'";
			$this->db->select('*');
			$this->db->from('admin');
			$this->db->where($condition);
			$this->db->limit(1);
			$query = $this->db->get();

			if ($query->num_rows() == 1) {
				return true;
			} else {
				return false;
			}
		}
		public function read_user_information($username) {
			$condition = "username =" . "'" . $username . "'";
			$this->db->select('*');
			$this->db->from('admin');
			$this->db->where($condition);
			$this->db->limit(1);
			$query = $this->db->get();

			if ($query->num_rows() == 1) {
				return $query->result();
			} else {
				return false;
			}
		}
	}