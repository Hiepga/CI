<?php
	if (!defined("BASEPATH")) {
		exit("No direct script access allowned ");
	}


	/**
	* Order Controller
	*/
	class Order extends BACKEND_Controller
	{
		
		public function __construct()
		{
			parent::__construct();
			$this->load->library('form_validation');
			$this->load->library('session');
	        $this->load->helper('url'); 
	        $this->load->helper('form');
	        $this->load->helper('date');
			$this->load->model(
				array(
					'Order_model',
					'Transaction_model',
					'Product_model'
				)
			);
			$this->set_model($this->Order_model);
			$this->set_controller('Order');
			$this->set_table("Danh sách đơn hàng", base_url("admin/Order"));
		}

		protected function update($id)
		{
			$id	=	$this->uri->rsegment('4');
			if ($id > 0) {
				$this->view_data['order']	=	$this->Transaction_model->find(array(
					'select' 	=> 'transaction.createtime, transaction.customername, transaction.phone, product.name, product.price',
					'where'		=>	array('order.id' => $id),
					'join'		=>	array(
						'transaction'	=> 'transaction.id=order.transactionid',
						'product'		=>	'product.id=order.product.id'
					),
				));

				$this->view_data['product']	=	$this->Transaction_model->find(array(
					'select'	=>	'product'
				));

				echo "<pre>";
				print_r($this->view_data['order']);
				die();
			}
			$this->parser->parse("Order/update.tpl",$this->view_data);
		}
	}