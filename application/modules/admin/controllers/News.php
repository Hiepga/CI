<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	/**
	* Page Manage News
	*/
	class News extends BACKEND_Controller
	{
		function __construct()
		{
			parent::__construct();
			$this->load->library('form_validation');
			$this->load->library('session');
	        $this->load->helper('url'); 
	        $this->load->helper('form');
	        $this->load->helper('date');

			$this->load->model(
				array(
					'News_model',
					'Newscategory_model'
				)
			);
			$this->set_model($this->News_model);
			$this->set_controller('News');
			$this->set_table("Danh sách tin tức", base_url("admin/news"));
		}

		protected function update($id=NULL)
		{
			$this->view_data["list_category"]	=	$this->Newscategory_model->get_category_tree();

			$id = $this->uri->rsegment('4');
			if ($id > 0)
			{
				$this->view_data["content_news"]	=	$this->News_model->find(array(
					'where'	=>	array('news.id' => $id),
					'one'	=>	true
				));

				$this->view_data['action_tit']		=	'Cập nhật tin tức';
			}
			else
			{
				$this->view_data['action_tit']		=	'Thêm mới tin tức';

			}

			if ($this->input->post())
			{
				$this->view_data["news"]			=	new stdClass();
				$this->view_data["news"]->id		=	$id;
				$this->view_data["news"]->tittle	=	$this->input->post('tieu_de');
				$this->view_data["news"]->id_cat	=	$this->input->post('categorynew');
				$this->view_data["news"]->content 	=	$this->input->post('content');
				$this->view_data["news"]->detail 	=	$this->input->post('detail');
				$this->view_data["news"]->code 		=	$this->input->post('code');
				$this->view_data["news"]->active 	=	$this->input->post('active');


				$this->form_validation->set_rules('tieu_de', 'tittle', 'required');
				$this->form_validation->set_rules('content', 'content', 'required');
				$this->form_validation->set_rules('detail', 'detail', 'required');

				if ($this->form_validation->run())
				{
					$this->load->library('upload_library');
					$upload_path =	'./public/static/uploads/product';
					$upload_data = $this->upload_library->upload($upload_path, 'images');
					if (isset($upload_data['file_name'])) {
						$image_link = $upload_data['file_name'];
						if ($image_link!='') {
							$this->view_data["news"]->img_avatar	=	$image_link;
						}
					}
					if ($id>0) {
						$this->view_data["news"]->date_update	=	date('Y-m-d H:i:s',now());

						$this->News_model->update($this->view_data["news"], $id);
						redirect(base_url('admin/news'));
					}
					else{
						$this->News_model->extract_code($news_code, alias_name($this->view_data["news"]->tittle));
						$this->view_data["news"]->code 			=	$news_code;
						$this->view_data["news"]->date_create	=	date('Y-m-d H:i:s',now());
						$this->News_model->create($this->view_data["news"]);
						redirect(base_url('admin/news'));
					}
				}
				else
				{
					die('Nhập thiếu trường');
				}
			}

			$this->parser->parse("news/update.tpl",$this->view_data); 
		}
	}
?>