<?php
	if (!defined("BASEPATH")) {
		exit("No direct script access alowned");
	}

	/**
	* Transaction model
	*/
	class Transaction_model extends MY_Model
	{
		
		function __construct()
		{
			parent::__construct();
			$this->table_name 	=	"transaction";
		}
	}