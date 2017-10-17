<?php 
	if (!defined('BASEPATH')){
		exit('No direct script access allowed');
	}

	/**
	* MODEL CV MODEL
	*/

	class CV_model extends MY_Model{
		public function __construct(){
			parent::__construct();
			$this->table_name = 'CV_event';
		}

		// DATATABLE INIT

		public function init_data()	
		{
			return array(
				array(
					'name' 				=> 'name',
					'label'				=>	'Tên',
					'width'				=> '15%',
					'sort'				=>	FALSE,
					'searchoptions'		=>	array(
						'type'			=>	'text',
					)
				),

				array(
					'name'				=>	'job',
					'label'				=>	'Nghề',
					'width'				=>	'15%',
					'searchoptions'		=>	array(
						'type'			=>	'text',
					)
				),
				array(
					'name'				=>	'create_day',
					'label'				=>	'Ngày Cập Nhật',
					'width'				=>	'15%',
					'searchoptions'		=>	array(
						'type'			=>	'text',
					)
				),

				array(
					'name'				=>	'active',
					'label'				=>	'Tình trạng',
					'width'				=>	'15%',
					'searchoptions'		=>	array(
						'type'			=>	'text',
					)
				),
				array(
						'name'  => 'button',
						'width' => '5%',
						'sort'  => FALSE,
						'label'  =>'<div class="btn-group">
										<a style="width: 82px;" href="'.site_url('admin/cvadmin/index/add').'" class="btn btn btn-success">Thêm</a>
									</div>',
						'searchoptions' => false
				),			

			);
		}

		public function json_data($controller)
		{
			$this->datatables
			->select($this->table_name.'.name as name, '.$this->table_name.'.job as job, '.$this->table_name.'.create_day as create_day,'.$this->table_name.'.active as active,'.$this->table_name.'.id as id')
			->from('CV_event');
			$this->db->order_by('name','desc');
			$this->datatables->set_produce_output(false);
			$ouput = $datatables = $this->datatables->generate();
			unset($ouput['aaData']);
			$ouput['aaData'] = array();
			foreach($datatables['aaData'] as $item){
				$ouput['aaData'][] = array(
						$item['name'],
						$item['job'],
						$item['create_day'],
						$item['active'],
						$this->add_button($controller, $item),
				);
			}
			return json_encode($ouput);
		}
	}
