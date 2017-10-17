<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	/**
	* Page Manage Products
	*/
	class Product extends BACKEND_Controller
	{
		function __construct()
		{
			parent::__construct();
			$this->load->library('form_validation');
			$this->load->library('session');
	        $this->load->helper('url'); 
	        $this->load->helper('form');
	        $this->load->helper('date');

			$this->load->model(
				array(
					'Product_model',
					'Productcategory_model'
				)
			);

			$this->set_model($this->Product_model);
			$this->set_controller('Product');
			$this->set_table("Danh sách sản phẩm", base_url('admin/product'));
		}


		protected function update($id=NULL){
			$this->view_data["list_category"]	=	$this->Productcategory_model->get_category_tree();

			$id = $this->uri->rsegment('4');
			

			if ($id > 0)
			{
				$this->view_data["product"]	=	$this->Product_model->find(array(
					'where'	=>	array('product.id' => $id),
					'one'	=>	true
				));
				$this->view_data['action_tit']		=	'Cập nhật tin tức';
			}
			else
			{
				$this->view_data['action_tit']		=	'Thêm mới tin tức';
			}

			if ($this->input->post())
			{
				$this->view_data["product"]				=	new StdClass();
				$this->view_data["product"]->id			=	$id;
				$this->view_data["product"]->name 		=	$this->input->post('name');
				$this->view_data["product"]->id_cat		=	$this->input->post('catproduct');
				$this->view_data["product"]->price 		=	$this->input->post('price');
				$this->view_data["product"]->code 		=	$this->input->post('code');
				$this->view_data["product"]->active 	=	$this->input->post('active');
				$this->view_data["product"]->content 	=	$this->input->post('content');
				$this->view_data["product"]->detail 	=	$this->input->post('detail');

				$this->form_validation->set_rules('name', 'name', 'required');
				$this->form_validation->set_rules('price', 'price', 'required');
				$this->form_validation->set_rules('content', 'content', 'required');
				$this->form_validation->set_rules('detail', 'detail', 'required');

				if ($this->form_validation->run()) 
				{
					$this->load->library('upload_library');
					$upload_path	=	'./public/static/uploads/product';
					$upload_data	=	$this->upload_library->upload($upload_path, 'images');
					
					if (isset($upload_data['file_name'])) {
						$images_link	=	$upload_data['file_name'];
						if ($images_link!='') {
							$this->view_data["product"]->img_avatar	=	$images_link;
						}
					}

					if ($id > 0) {
						$this->view_data["product"]->date_update =	date('Y-m-d H:i:s',now());
						$this->Product_model->update($this->view_data["product"], $id);
						redirect(site_url('admin/product'));
					}
					else
					{
						$this->Product_model->extract_code($product_code, alias_name($this->view_data["product"]->name));
						$this->view_data["product"]->code 			=	$product_code;
						$this->view_data["product"]->date_create 	=	date('Y-m-d H:i:s', now());
						$this->Product_model->create($this->view_data["product"]);
						redirect(site_url("admin/product"));
					}
				}
				else
				{
					die("nhập thiếu trường");
				}

			}
			$this->parser->parse("product/update.tpl", $this->view_data);
		}
	}