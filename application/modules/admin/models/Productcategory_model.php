<?php
	if (!defined("BASEPATH")) {
		exit("No direct script access allowned");
	}

	/**
	* Productcategory_model
	*/
	class Productcategory_model extends My_Model
	{
		
		function __construct()
		{
			parent::__construct();
			$this->table_name = 'product_category';
		}

		public function load_all_category()
		{
			$this->db->select('id, name_cat, parent_id');
			$this->db->from($this->table_name);
			$query = $this->db->get()->result_array();

			return $query;
		}

		public function build_tree_category($category_list, $parents = 0, $level = 1, &$result_array){
			if(count($category_list > 0)){
				foreach($category_list as $key => $value){
					if($value['parent_id'] == $parents){
						$value['level'] = $level;
						$line = '»';
						for($i = 1; $i < $level; $i++){
							$line .= '»';
						}
						$value['name_cat']	= $line. ' ' .$value['name_cat'];
						$result_array[] = $value;
						$newParents = $value['id'];
						unset($category_list[$key]);
						$this->build_tree_category($category_list, $newParents, $level + 1, $result_array);
					}
				}
			}
		}

		public function get_category_tree()
		{
			$category_list = $this->load_all_category();
			$this->build_tree_category($category_list, 0, 1, $result_array);
			
			return $result_array;
		}

		public function init_data()
		{
			return array(
				array(
					'name'		=>	'name',
					'label'		=>	'Tên danh mục',
					'width'		=>	'20%',
				),

				array(
					'name'		=>	'date_create',
					'label'		=>	'Thời gian tạo',
					'width'		=>	'15%',
				),

				array(
					'name'		=>	'date_update',
					'label'		=>	'Thời gian cập nhật',
					'width'		=>	'15%',
				),

				array(
					'name'		=>	'editor',
					'label'		=>	'Người sửa',
					'width'		=>	'20%',
				),
				array(
					'name'				=>	'button',
					'width'				=>	'5%',
					'label'				=>	'<div class="btn-group">
												<a style="width: 82px;" href="'.site_url('admin/newscategory/index/add').'" class="btn btn-success">Thêm</a>
											</div>',
				),
			);
		}

		public function json_data($controller)
		{
			$this->datatables
			->select($this->table_name.'.name_cat,'.$this->table_name.'.date_create, admin.username,'.$this->table_name.'.date_update,'.$this->table_name.'.id as id')
			->from('product_category')
			->join('admin', 'admin.id = '.$this->table_name.'.editor_id', 'left');
			$this->db->order_by('date_create','desc');
			$this->datatables->set_produce_output(false);
			$ouput = $datatables = $this->datatables->generate();
			unset($ouput['aaData']);
			$ouput['aaData'] = array();
			foreach ($datatables['aaData'] as $item) {
				$ouput['aaData'][]	=	array(
					$item['name_cat'],
					$item['date_create'],
					$item['date_update'],
					$item['username'],
					$this->add_button($controller, $item),
				);
			}
			return json_encode($ouput);
		}
	}