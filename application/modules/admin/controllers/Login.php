<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	/**
	* Page Login
	*/
	class Login extends BACKEND_Controller{
		
		public function __construct(){
			parent::__construct();
			$this->load->helper("form");
			$this->load->model('Admin_model');
		}
		public function index(){
			$login_data	=	array(
				'username' => $this->input->post('username'),
	        	'password' => $this->input->post('password')
	        );
	        $result = $this->admin_model->authenticate($login_data);

	        print_r($result);
	        die();


			$this->parser->parse("login/index.tpl", $this->view_data);
		}
	}