<?php
	if (!defined('BASEPATH')) {
		exit('No direct script access allowed');
	}

	/**
	* NEWS CATEGORY MODEL
	*/
	class Newscategory_model extends MY_Model
	{
		
		function __construct()
		{
			parent::__construct();
			$this->table_name = 'news_category';
		}
	}


