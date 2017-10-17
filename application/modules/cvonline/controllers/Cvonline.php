<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	/**
	* Controller CV Online
	*/
	class CVonline extends FRONTEND_Controller{
		
		public function __construct(){
			parent::__construct();
			$this->load->library('parser');
			$this->view_data['title']   		= "CV - Trần Chánh Hiệp";
			$this->load->model(
				array('CV_model', 'CV_skill_model', 'CV_hobit_model', 
					'CV_project_model', 'CV_language_model', 'CV_education_model',
					'CV_experience_model', 'News_model', 'Newscategory_model'
				)
			);
		}
		public function index()
		{
			$this->view_data['content_cv']	=	$this->CV_model->find(array(
				'where'	=>	array('cv_event.id'	=>	'1'),
				'one'   => true
			));

			if(!empty($this->view_data['content_cv'])){

				$this->view_data['cv_skill'] 					= $this->CV_skill_model->find(array(
					'where' => array('CV_skill.id_cv' 			=> $this->view_data['content_cv']->id)
				));

				$this->view_data['cv_hobit']					= $this->CV_hobit_model->find(array(
					'where' => array('CV_hobit.id_cv' 			=> $this->view_data['content_cv']->id)
				));

				$this->view_data['cv_project']			 		= $this->CV_project_model->find(array(
					'where' => array('CV_project.id_cv' 		=> $this->view_data['content_cv']->id)
				));

				$this->view_data['cv_language']				 	= $this->CV_language_model->find(array(
					'where' => array('CV_language.id_cv' 		=> $this->view_data['content_cv']->id)
				));

				$this->view_data['cv_education']			 	= $this->CV_education_model->find(array(
					'where' => array('CV_education.id_cv' 		=> $this->view_data['content_cv']->id)
				));

				$this->view_data['cv_experience']			 	= $this->CV_experience_model->find(array(
					'where' => array('CV_experience.id_cv'		=> $this->view_data['content_cv']->id)
				));

				$this->view_data['news'] 						=	$this->News_model->find(array(
					'where'	=>	array('news.id_cat'	=> '4', 'news.active' => '1'),	
					'one'	=>	false
				));

				$this->parser->parse("cvonline1/index.tpl", $this->view_data);
			}else{
				die('dữ liệu rỗng');
			}
		}

		public function detail($code=NULL)
		{
			$this->view_data['content_cv']	=	$this->CV_model->find(array(
				'one'   => true
			));

			$code = $this->uri->rsegment('3');
			$this->view_data['detail'] = $this->News_model->find(array(
				'where'		=>		array('news.code'	=>	$code),
				'one'		=>		true
			));
			$this->parser->parse("cvonline1/detail.tpl",$this->view_data);
		}
	}