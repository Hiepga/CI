<?php
	if (!defined('BASEPATH')) {
		exit('No direct script access allowed');
	}

	/**
	* CUSTOMER ADMIN
	*/
	class Customer extends CI_Controller
	{
		
		function __construct()
		{
			parent::__construct();
			$this->load->library('parser');
		}

		public function index()
		{
			$data['link_backend'] = base_url().'public/static/backend/';
			$this->parser->parse('customer/index.tpl', $data);
		}
	}