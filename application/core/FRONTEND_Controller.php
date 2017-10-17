<?php if (!defined('BASEPATH')){ exit('No direct script access allowed');
}

/**
 *  FRONTEND Controller
 *
 * @package XGO CMS v3.0
 * @subpackage FRONTEND
 * @link http://sunsoft.vn
 */

class FRONTEND_Controller extends MY_Controller {

	private $controller 	= '';
	private $model 			= '';

	protected $view_data 			= NULL;
	protected $db_connection_status = FALSE;

	public function __construct() {
		parent::__construct();
		// $this->output->enable_profiler(ENABLE_PROFILER);
		//$this->trust_ip();
		$this->load->library('parser');
		$this->view_data['link_frontend']	=  base_url().'public/static/frontend/';		
	}

	protected function check_db_connection() {
		//$this->load->database();
		if($this->db->conn_id != FALSE){
			return TRUE;
		}
		else {
			$this->view_data['server_status'] = "Hệ thống máy chủ đang bận xin vui lòng trở lại sau ít phút";
			return FALSE;
		}
	}

	protected function get_time() {
		return date("Y-m-d H:i:s");
	}

	protected function trust_ip() {
		$this->load->helper('custom');
		$ip = $this->get_ip();
		
		$ip_list = list_ip();
		if(empty($ip_list) || !in_array($ip, $ip_list)){
			redirect(site_url('home/maintenance'));
			show_404(); exit;
		}
	}
	
	protected function get_ip()
	{
		$ip;
		if (getenv("HTTP_CLIENT_IP"))
			$ip = getenv("HTTP_CLIENT_IP");
		else if(getenv("HTTP_X_FORWARDED_FOR"))
			$ip = getenv("HTTP_X_FORWARDED_FOR");
		else if(getenv("REMOTE_ADDR"))
			$ip = getenv("REMOTE_ADDR");
		else
			$ip = "UNKNOWN";
			
		$ip = explode(',', $ip);
		return $ip[0];
	}

	protected function get_configuration() {
		$this->view_data['configuration'] = $this->configuration_model->get_by_code(array('metadata','ios','android','payment','tinhnang','tonghopthebai','dieukhoansudung','baomattaikhoan','thanhtoan'));
	}

	protected function display_error() {
		error_reporting(E_ALL);
		ini_set('display_errors', 1);
	}

	protected function start_session() {
		if (session_status() == PHP_SESSION_NONE) {
		    session_start();
		}
	}

	protected function enable_debug() {
		$this->output->enable_profiler(true);
	}

	protected function isLogin(){
		if(isset($_SESSION['user_info']) && isset($_SESSION['user_info']->UserName) ){
			return true;
		}
		return false;
	}

	protected function count_cart(){
		$count = 0;
		if(isset($_SESSION['vat-pham']) && is_array($_SESSION['vat-pham'])){
			$count += count($_SESSION['vat-pham']);
		}
		if(isset($_SESSION['an-pham']) && is_array($_SESSION['an-pham'])){
			$count += count($_SESSION['an-pham']);
		}
		return $count;
	}

	public function check_order_isset($username){
		$this->load->model(array('home/payment_history_model'));
		$order_list = $this->payment_history_model->get_cron_list("username = '".$username."' AND status != '1' AND status != '-20'  ", 'id,username,status', TRUE);
	
		if(!empty($order_list)){
			return true;
		}
		return false;
	}
}

/* End of file FRONTEND_Controller.php */
/* Location: ./application/core/MY_Backend_Controller.php */