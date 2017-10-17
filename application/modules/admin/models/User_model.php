<?php
	if (!defined("BASEPATH")) {
		exit('No direct script access allwoed');
	}


	/**
	* ADMIN MODEL
	*/
	class User_model extends MY_Model
	{
		
		public function __construct()
		{
			parent::__construct();
			$this->table_name 	=	'admin';
		}

		public function init_data()
		{
			return array(
				array(
					'name'	=>	'name',
					'label'	=>	'Quản trị viên',
					'width'	=>	'20%',
				),
				array(
					'name'	=>	'name_cat',
					'label'	=>	'Email',
					'width'	=>	'20%',
				),
				
				array(
					'name'	=>	'date_create',
					'label'	=>	'Thời gian tạo',
					'width'	=>	'15%'
				),

				array(
					'name'	=>	'date_update',
					'label'	=>	'Thời gian sửa',
					'width'	=>	'20%'
				),

				array(
					'name'	=>	'button',
					'width'	=>	'5%',
					'label'	=>	'<div class="btn-group">
									<a style="width: 82px;" href="'.site_url('admin/user/index/add').'" class="btn btn-success">Thêm</a>
								</div>',
				),

			);
		}

		public function json_data($controller)
		{
			$this->datatables
			->select($this->table_name.'.username as username,'.$this->table_name.'.email as email,'.$this->table_name.'.date_update,'.$this->table_name.'.date_create,'.$this->table_name.'.id as id')
			->from('admin');
			$this->db->order_by('username','desc');
			$this->datatables->set_produce_output(false);
			$ouput = $datatables = $this->datatables->generate();
			unset($ouput['aaData']);
			$ouput['aaData'] = array();
			foreach ($datatables['aaData'] as $item) {
				$ouput['aaData'][] 	=	array(
					$item['username'],
					$item['email'],
					$item['date_create'],
					$item['date_update'],
					$this->add_button($controller, $item),
				);
			}
			return json_encode($ouput);
		}
	}

