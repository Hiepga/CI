<?php
	if (!defined('BASEPATH')) {
		exit('No direct script access allowed');
	}

	/**
	* NEWS MODEl
	*/
	class News_model extends My_Model
	{
		
		public function __construct()
		{
			parent::__construct();
			$this->table_name = 'news';
		}


		public function init_data()
		{
			return array(
				array(
					'name'				=>	'title',
					'label'				=>	'Tiêu đề',
					'width'				=>	'20%',
				),

				array(
					'name'				=> 'name_category',
					'label'				=>	'Danh Mục',
					'width'				=>	'15%',
				),

				array(
					'name'				=>	'date_create',
					'label'				=>	'Ngày Thêm',
					'width'				=>	'15%',
				),

				array(
					'name'				=>	'date_update',
					'label'				=>	'Ngày Sửa',
					'width'				=>	'20%',
				),

				array(
					'name'				=>	'editor',
					'label'				=>	'Người sửa',
					'width'				=>	'15%',
				),

				array(
					'name'				=>	'tinh_trang',
					'label'				=>	'Tình Trạng',
					'width'				=>	'10%',
				),

				array(
					'name'				=>	'button',
					'width'				=>	'5%',
					'sort'				=>	FALSE,
					'label'				=>	'<div class="btn-group">
												<a style="width: 82px;" href="'.site_url('admin/news/index/add').'" class="btn btn-success">Thêm</a>
											</div>',
				),
			);
		}

		public function json_data($controller)
		{
			$this->datatables
			->select($this->table_name.'.tittle as tittle, news_category.name_cat as name_category, admin.username,'.$this->table_name.'.date_create as date_create,' .$this->table_name.'.date_update as date_update,' .$this->table_name.'.active as active,' .$this->table_name.'.id as id')
			->from('news')
			->join('news_category','news_category.id = '.$this->table_name.'.id_cat', 'left')
			->join('admin','admin.id = '.$this->table_name.'.editor_id','left');
			$this->db->order_by('tittle', 'desc');
			$this->datatables->set_produce_output(false);
			$ouput = $datatables = $this->datatables->generate();
			unset($ouput['aaData']);
			$ouput['aaData'] = array();
			foreach($datatables['aaData'] as $item) {
				$ouput['aaData'][]	=	array(
					$item['tittle'],
					$item['name_category'],
					$item['date_create'],
					$item['date_update'],
					$item['username'],
					$item['active'],
					$this->add_button($controller, $item),
				);
			}
			return json_encode($ouput);
		}
	}



