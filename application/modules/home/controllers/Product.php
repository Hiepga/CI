<?php if ( ! define('BASEBATH')) exit('NO Direct script access allowed');

	class Product extends FRONTEND_Controller{

		public function __construct(){
			parent::__construct();
		}

		public function index(){
			$this->parser->parse("product/list.tpl", $this->view_data);
		}
	}