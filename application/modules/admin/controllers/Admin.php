<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	/**
	* Page Manage
	*/
	class Admin extends BACKEND_Controller{
		
		public function __construct(){
			parent::__construct();
			$this->load->model(
				array(
					'News_model',
					'Newscategory_model',
					'Product_model'
				)
			);
			
		}
		public function index(){
			$this->view_data	= array();
			$this->view_data['link_backend']	=	base_url().'public/static/backend/';
			$this->view_data["all_news"]		=	$this->News_model->find(array(
				'one'	=>	false
			));

			$this->view_data["all_product"]		=	$this->Product_model->find(array(
				'one'	=>	false
			));

			$this->view_data["total_product"]	=	$this->Product_model->count_by();
			$this->view_data["total_news"]		=	$this->News_model->count_by();

			$this->parser->parse("admin/index.tpl", $this->view_data);
		}
	}