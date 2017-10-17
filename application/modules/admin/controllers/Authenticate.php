<?php
	if (!defined("BASEPATH")) {
		exit("No direct script access allowed");
	}

	/**
	* AUTHENTICATE LOGIN AND LOGOUT 
	*/
	class Authenticate extends BACKEND_Controller
	{
		
		function __construct()
		{
			parent::__construct();

			$this->load->helper("form");
			$this->load->library('form_validation');
			$this->load->library('session');
			$this->load->model("Authenticate_model");
		}

		public function index()
		{
			$this->view_data	= array();
			$this->view_data['link_backend']	=	base_url().'public/static/backend/';
			$this->parser->parse("login/index.tpl", $this->view_data);
		}

		public function login()
		{
			$this->form_validation->set_rules('username', 'username', 'trim|required|xss_clean');
			$this->form_validation->set_rules('password', 'password', 'trim|required|xss_clean');
			if ($this->form_validation->run() == True) {
				if (isset($this->session->userdata['info_user'])) {
					redirect(site_url('admin'));
				}
				else{
					redirect(site_url('admin/authenticate'));
				}
			}
			else{
				$data = array(
					'username'	=>	$this->input->post('username'),
					'password'	=>	$this->input->post('password')
				);
				$result	=	$this->Authenticate_model->checklogin($data);

				if ($result == TRUE) {
					$username = $this->input->post('username');
					$result = $this->Authenticate_model->read_user_information($username);
					if ($result != false) {
						$session_data = array(
							'username'	=>	$result[0]->username
						);
						$this->session->set_userdata('info_user', $session_data);
						redirect(site_url('admin'));
					}
				}
				else{
					redirect(site_url('admin/authenticate'));
				}
			}
		}

		public function logout() 
		{
			// Removing session data
			$sess_array = array(
				'username' => ''
			);
			$this->session->unset_userdata('info_user', $sess_array);
			$data['link_backend']	=	base_url().'public/static/backend/';
			$this->parser->parse("login/index.tpl",$data);
		}

	}
