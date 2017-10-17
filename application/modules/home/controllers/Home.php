<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

	class Home extends FRONTEND_Controller{
		
		public function __construct(){
			parent::__construct();
		}
		public function index(){
			$this->parser->parse("home/index.tpl", $this->view_data);
		}
	}