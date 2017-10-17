<?php if (!defined('BASEPATH'))  exit('No direct script access allowed');

require APPPATH . 'core/FRONTEND_Controller.php';
require APPPATH . 'core/BACKEND_Controller.php';

class MY_Controller extends CI_Controller{
	public function __construct(){
		parent::__construct();

		$controller 	=	$this->uri->segment(2);
		$controller 	=	strtolower($controller);
		$login 			=	$this->session->userdata('info_user');

		// echo "<pre>";
		// print_r($controller);
		// die();

		if (isset($login) && $controller != ' ') {
			die('đã đăng nhập');
			redirect(site_url('admin/authenticate'));
		}
	}

	private function _check_login()
	{
		$controller 	=	$this->uri->rsegment(1);
		$controller 	=	strtolower($controller);
		$login 			=	$this->session->userdata('info_user');

		
	}
	/**
	 * Utility method for sending emails.
	 *
	 * @param type $to
	 * @param type $subject
	 * @param type $message
	 */
	protected function send_mail($to, $subject, $message){
		$this->load->library('email');
		$this->email->from($this->config->item('from_email_address'));
		$this->email->to($to);
		$this->email->subject($subject);
		$this->email->message($message);
		$this->email->send();
	}
	
	protected function check_role(){
		$role_code = $this->uri->rsegment(1);
		$permission_code = $this->uri->rsegment(3);
		$permission_code = $permission_code=='0' || $permission_code==NULL 
							? 'view' : $permission_code;
		if(isset($this->user_model)){
			return $this->user_model->has_right_code($this->user_model->get_user_id(), $role_code, $permission_code);
		}else{
			return FALSE;
		}
	}
}