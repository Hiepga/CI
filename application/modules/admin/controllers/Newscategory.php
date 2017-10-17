<?php
	if (!defined('BASEPATH')) {
		exit('No direct script access allowed');
	}

	/**
	* NEWS CATEGORY
	*/
	class Newscategory extends BACKEND_Controller
	{
		
		public function __construct()
		{
			parent::__construct();
			$this->load->library('form_validation');
			$this->load->library('session');
	        $this->load->helper('url'); 
	        $this->load->helper('form');

			$this->load->model(
				array(
					'Newscategory_model'
				)
			);
			$this->set_model($this->Newscategory_model);
			$this->set_controller('Newscategory');
			$this->set_table('Danh mục tin', base_url('admin/newscategory'));
			
		}

		protected function update($id=NULL)
		{
			$this->view_data["list_category"]	=	$this->Newscategory_model->get_category_tree();
			$id = $this->uri->rsegment('4');
			if ($id > 0)
			{
				$this->view_data['content_cat']	=	$this->Newscategory_model->find(array(
					'where'	=>	array('news_category.id'=> $id),
					'one'	=>	true
				));
				$this->view_data['action_tit']	=	'Cập nhật danh mục';
			}
			else
			{
				$this->view_data['action_tit']	=	'Thêm mới danh mục';
			}

			if ($this->input->post())
			{
				$this->view_data["newscategory"]				=	new stdClass();
				$this->view_data["newscategory"]->id			=	$id;
				$this->view_data["newscategory"]->name_cat		=	$this->input->post('name_cat');
				$this->view_data["newscategory"]->content_cat	=	$this->input->post('content_cat');
				$this->view_data["newscategory"]->parent_id		=	$this->input->post('parent_id');
				$this->view_data["newscategory"]->active 		=	$this->input->post('active');

				$this->form_validation->set_rules('name_cat','name_cat','required');
				$this->form_validation->set_rules('content_cat', 'content_cat', 'required');

				if ($this->form_validation->run())
				{
					if ($id > 0) {
						$this->view_data["newscategory"]->date_update	=	date('Y-m-d H:i:s', now());
						$this->Newscategory_model->update($this->view_data["newscategory"], $id);
						redirect(base_url('admin/newscategory'));
					}
					else{
						$this->view_data["newscategory"]->date_create 	=	date('Y-m-d H:i:s', now());
						$this->Newscategory_model->create($this->view_data["newscategory"]);
						redirect(base_url('admin/newscategory'));
					}
				}
				else{
					die('Nhập thiếu trường');
				}
			}
			$this->parser->parse("newscategory/update.tpl", $this->view_data);
		}
	}

