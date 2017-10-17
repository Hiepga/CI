<?php
	if (!defined('BASEPATH')) {
		exit('No direct script access allowed');
	}

	/**
	* NEWS MODEL
	*/
	class News_model extends MY_Model
	{
		
		public function __construct()
		{
			parent::__construct();
			$this->table_name = 'News';
		}
	}
