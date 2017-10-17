<?php
	if (!defined("BASEPATH")) {
		exit('No direct script access alowned');
	}

	/**
	* PRODUCT CATEGORY CONTROLLER
	*/
	class Productcategory extends BACKEND_Controller
	{
		
		function __construct()
		{
			parent::__construct();
			$this->load->library('form_validation');
			$this->load->library('session');
			$this->load->helper('form');
			$this->load->helper('url');
			$this->load->model(
				array(
					'Productcategory_model'
				)
			);
			$this->set_model($this->Productcategory_model);
			$this->set_controller('Productcategory');
			$this->set_table('Danh mục sản phẩm', base_url('admin/Productcategory'));
		}

		protected function update($id)
		{
			$this->view_data["list_category"]	=	$this->Productcategory_model->get_category_tree();
			$id = $this->uri->rsegment('4');
			if ($id > 0)
			{
				$this->view_data['content_cat']	=	$this->Productcategory_model->find(array(
					'where'	=>	array('product_category.id'=> $id),
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
				$this->view_data["productcategory"]					=	new stdClass();
				$this->view_data["productcategory"]->id				=	$id;
				$this->view_data["productcategory"]->name_cat		=	$this->input->post('name_cat');
				$this->view_data["productcategory"]->content_cat	=	$this->input->post('content_cat');
				$this->view_data["productcategory"]->parent_id		=	$this->input->post('parent_id');
				$this->view_data["productcategory"]->active 		=	$this->input->post('active');

				$this->form_validation->set_rules('name_cat','name_cat','required');
				$this->form_validation->set_rules('content_cat', 'content_cat', 'required');

				if ($this->form_validation->run())
				{
					if ($id > 0) {
						$this->view_data["productcategory"]->date_update	=	date('Y-m-d H:i:s', now());
						$this->Productcategory_model->update($this->view_data["productcategory"], $id);
						redirect(base_url('admin/productcategory'));
					}
					else{
						$this->view_data["productcategory"]->date_create 	=	date('Y-m-d H:i:s', now());
						$this->Productcategory_model->create($this->view_data["productcategory"]);
						redirect(base_url('admin/productcategory'));
					}
				}
				else{
					die('Nhập thiếu trường');
				}
			}

			$this->parser->parse("productcategory/update.tpl", $this->view_data);
		}
	}