<?php
	if (!defined("BASEPATH")) {
		exit("No direct script access script");
	}

	/**
	* PRODUCT MODEL
	*/
	class Product_model extends My_Model
	{
		
		function __construct()
		{
			parent::__construct();
			$this->table_name = "product";
		}

		public function init_data()
		{
			return array(
				array(
					'name'	=>	'name',
					'label'	=>	'Tên sản phẩm',
					'width'	=>	'20%',
				),
				array(
					'name'	=>	'name_cat',
					'label'	=>	'Danh mục',
					'width'	=>	'20%',
				),
				array(
					'name'	=>	'price',
					'label'	=>	'Giá',
					'width'	=>	'15%',
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
									<a style="width: 82px;" href="'.site_url('admin/product/index/add').'" class="btn btn-success">Thêm</a>
								</div>',
				),

			);
		}

		public function json_data($controller)
		{
			$this->datatables
			->select($this->table_name.'.name as name, product_category.name_cat,'.$this->table_name.'.price as price,'.$this->table_name.'.date_update,'.$this->table_name.'.date_create,'.$this->table_name.'.id as id')
			->from('product')
			->join('product_category','product_category.id = '.$this->table_name.'.id_cat','left');
			$this->db->order_by('name','desc');
			$this->datatables->set_produce_output(false);
			$ouput = $datatables = $this->datatables->generate();
			unset($ouput['aaData']);
			$ouput['aaData'] = array();
			foreach ($datatables['aaData'] as $item) {
				$ouput['aaData'][] 	=	array(
					$item['name'],
					$item['name_cat'],
					$item['price'],
					$item['date_create'],
					$item['date_update'],
					$this->add_button($controller, $item),
				);
			}
			return json_encode($ouput);
		}
	}