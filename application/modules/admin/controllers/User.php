<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	/**
	* Page Manage
	*/
	class User extends BACKEND_Controller{
		
		public function __construct(){
			parent::__construct();
			$this->load->library('form_validation');
	        $this->load->library('session');
	        $this->load->helper('url'); 
	        $this->load->helper('form');
	        $this->set_controller('User');
	        $this->load->model(
				array(
					'User_model',
				)
			);
	        $this->set_model($this->User_model);
			$this->set_table("Danh sách quản trị viên", base_url("admin/User"));
			
			
		}
		public function update($id){

			$id = $this->uri->rsegment('4');
			if ($id > 0)
			{
				$this->view_data["user"]	=	$this->User_model->find(array(
					'where'	=>	array('admin.id' => $id),
					'one'	=>	true
				));

				$this->view_data['action_tit']		=	'Cập nhật quản trị viên';
			}
			else
			{
				$this->view_data['action_tit']		=	'Thêm mới quản trị viên';

			}

			if ($this->input->post())
			{
				$this->view_data["user"]			=	new stdClass();
				$this->view_data["user"]->id		=	$id;
				$this->view_data["user"]->username	=	$this->input->post('username');
				$this->view_data["user"]->email 	=	$this->input->post('email');
				$this->view_data["user"]->password 	=	$this->input->post('pass');
				$this->view_data["user"]->active 	=	$this->input->post('active');


				$this->form_validation->set_rules('username', 'username', 'required');
				$this->form_validation->set_rules('email', 'email', 'required');
				$this->form_validation->set_rules('password', 'password', 'required');

				if ($this->form_validation->run())
				{
					if ($id>0) {
						$this->view_data["user"]->date_update	=	date('Y-m-d H:i:s',now());
						$this->Admin_model->update($this->view_data["news"], $id);
						redirect(base_url('admin/user'));
					}
					else{
						$this->view_data["user"]->date_create	=	date('Y-m-d H:i:s',now());
						$this->Admin_model->create($this->view_data["news"]);
						redirect(base_url('admin/user'));
					}
				}
				else
				{
					die('Nhập thiếu trường');
				}
			}

			$this->parser->parse("user/update.tpl",$this->view_data); 
		}
	}