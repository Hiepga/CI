<?php 
if (!defined('BASEPATH')){
	exit('No direct script access allowed');
}

/**
 *  MY Backend Controller
 *
 * @package XGO CMS v3.0
 * @subpackage MY Backend
 * @link http://sunsoft.vn
 */

class BACKEND_Controller extends MY_Controller {

	private $controller = '';
	private $model 		= '';

	private $active_list = array(
		'0' => 'Không',
		'1' => 'Có'
	);
	
	public function __construct() {
		parent::__construct();
		$this->load->library('parser');
		$this->load->helper('character');
	}

	/**
	 * Displays list of category.
	 */
	public function index(){		
		$this->view_data	= array();
			
		$action = $this->uri->rsegment(3);
		$this->view_data['name_table']		=	$this->name_table;
		$this->view_data['link']			=	$this->link;
		$this->view_data['flash_message']	=	$this->session->flashdata('flash_message');
		$this->view_data['link_backend']	=	base_url().'public/static/backend/';
		// die($action);
		switch ($action) {
			case 'update':
				$this->update($this->uri->rsegment(4));
				break;
			case 'add':
				$this->update();
				break;
			case 'delete':
				$this->delete($this->uri->rsegment(4));
				break;
			case 'view'://view/json_data
				$this->json_data();
				break;
			default:
				$this->datatables();
		}
	}

	protected function datatables(){
		$this->load->library('Xgo_datatables', '', 'datatables');
		

		$this->view_data['datatables']		= array(
				'json_data'		=> site_url('admin/'.$this->controller.'/index/view/json_data'),
				'init_data' 	=> $this->model->init_data(),
				'filter'		=> '',
		);

		// echo '<pre>';
		// print_r($this->view_data['datatables']['json_data']);exit;	
		
		$this->parser->parse('datatable/index.tpl', $this->view_data);
	}

	protected function json_data(){
		$this->load->library('Xgo_datatables', '', 'datatables');
		echo $this->input->get('callback').'('.$this->model->json_data($this->controller).')';
	}

	protected function delete($id){
		$this->load->helper('form');		
		$this->model->delete(array('id' => $id));
		$this->session->set_flashdata('flash_message', 'delete_successful');
		redirect('admin/'.$this->controller.'/');
	}
	
	protected function set_controller($controller){
		$this->controller = $controller;
	}
	
	protected function set_model($model){
		$this->model = $model;
	}

	protected function set_table($name_table, $link){
		$this->name_table	=	$name_table;
		$this->link 		=	$link;
	}
}

/* End of file BACKEND_Controller.php */
/* Location: ./application/core/BACKEND_Controller.php */