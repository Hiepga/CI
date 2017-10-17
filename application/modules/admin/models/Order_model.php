<?php
	if (!defined("BASEPATH")) {
		exit("No direct script access alowned");
	}

	/**
	* Order model
	*/
	class Order_model extends MY_Model
	{
		
		function __construct()
		{
			parent::__construct();
			$this->table_name 	=	"order";
		}

		public function init_data()
		{
			return array(
				array(
					'name'				=>	'createtime',
					'label'				=>	'Ngày đặt hàng',
					'width'				=>	'20%',
				),

				array(
					'name'				=>	'customername',
					'label'				=>	'Khách hàng',
					'width'				=>	'15%',
				),

				array(
					'name'				=>	'phone',
					'label'				=>	'Số điện thoại',
					'width'				=>	'15%',
				),

				array(
					'name'				=>	'status',
					'label'				=>	'Tình trạng',
					'width'				=>	'15%',
				),

				array(
					'name'				=>	'button',
					'width'				=>	'5%',
					'sort'				=>	FALSE,
					'label'				=>	'<div class="btn-group">
												<a style="width: 82px;" class="btn btn-success">Chức Năng</a>
											</div>',
				),
			);
		}

		public function json_data($controller)
		{
			$this->datatables
			->select('transaction.createtime as createtime, transaction.customername as customername, transaction.status as status, transaction.phone as phone,'.$this->table_name.'.id as id')
			->from('order')
			->join('transaction','transaction.id = '.$this->table_name.'.transactionid', 'left')
			->join('product','product.id = '.$this->table_name.'.productid','left');
			$this->db->order_by('createtime', 'desc');
			$this->datatables->set_produce_output(false);
			$ouput = $datatables = $this->datatables->generate();
			unset($ouput['aaData']);
			$ouput['aaData'] = array();
			foreach($datatables['aaData'] as $item) {
				$ouput['aaData'][]	=	array(
					$item['createtime'],
					$item['customername'],
					$item['phone'],
					$item['status'],
					$this->add_button($controller, $item),
				);
			}
			return json_encode($ouput);
		}
	}