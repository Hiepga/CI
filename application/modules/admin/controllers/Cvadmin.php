<?php
	if (!defined('BASEPATH')) {
		exit('No direct script access allowed');
	}
	/**
	* QUAN TRỊ CV
	*/
	class Cvadmin extends BACKEND_Controller
	{
		
		public function __construct()
		{
			parent::__construct();
			$this->load->library('form_validation');
	        $this->load->library('session');
	        $this->load->helper('url'); 
	        $this->load->helper('form');
	        $this->set_controller('Cvadmin');
	        $this->load->model(
				array(	'CV_model', 'CV_skill_model', 'CV_hobit_model', 
						'CV_project_model', 'CV_language_model', 'CV_education_model',
						'CV_experience_model'
				)
			);
			$this->set_model($this->CV_model);
			$this->set_table("Danh sách CV", base_url("admin/cvadmin"));
			
		}

		protected function update($id=NULL)
		{

			$this->view_data["CV"]				=	new stdClass();
			$this->view_data["CV"]->id 			=	$id;
			$this->view_data["CV"]->name 		=	$this->input->post('hoten');
			$this->view_data["CV"]->job 		=	$this->input->post('ngheungtuyen');
			$this->view_data["CV"]->phone		=	$this->input->post('phone');
			$this->view_data["CV"]->email 		=	$this->input->post('email');
			$this->view_data["CV"]->address 	=	$this->input->post('address');
			$this->view_data["CV"]->website 	=	$this->input->post('website');
			$this->view_data["CV"]->create_day 	=	date('d/m/y - H:i:s');
			$this->view_data["CV"]->active 		=	$this->input->post('active');
			$this->view_data["CV"]->introduce	=	$this->input->post('introduce');

	// Update Experience	
			$company_work						=	$this->input->post('name_company');
            $position							=	$this->input->post('name_job');
            $time_begin							=	$this->input->post('date_begin');
            $time_end							=	$this->input->post('date_end');
            $describe							=	$this->input->post('describe');

    // Update Education	
			$school								=	$this->input->post('name_school');
            $study								=	$this->input->post('name_study');
            $time_begin_study					=	$this->input->post('date_begin_study');
            $time_end_study						=	$this->input->post('date_end_study');
            $describe_study						=	$this->input->post('describe_study');

    // Update Project	
			$name_project						=	$this->input->post('name_project');
            $link_project						=	$this->input->post('link_project');
            $describe_project					=	$this->input->post('describe_project');

            $id = $this->uri->rsegment('4');

			if ($id>0) {
				$this->view_data["content_cv"] = $this->CV_model->find(array(
					'where' => array('cv_event.id' => $id),
					'one'    => true
				));

				foreach($this->CV_project_model->find_by(array('id_cv' => $id), 'name_project,describe_project,avatar_project,detailed_pic,link_project') as $item){
					$this->view_data["project"][]= array(
							'name_project'			=> $item->name_project,
							'describe_project'  	=> $item->describe_project,
							'avatar_project'      	=> $item->avatar_project,
							'detailed_pic' 			=> $item->detailed_pic,
							'link_project' 			=> $item->link_project
					);
				}

				foreach($this->CV_education_model->find_by(array('id_cv' => $id), 'school,describe,study,time_begin,time_end') as $item){
					$this->view_data["education"][]= array(
							'school'			=> $item->school,
							'describe'  	 	=> $item->describe,
							'study'      		=> $item->study,
							'time_begin' 		=> $item->time_begin,
							'time_end' 			=> $item->time_end
					);
				}

				foreach($this->CV_experience_model->find_by(array('id_cv' => $id), 'company_work,describe,position,time_begin,time_end') as $item){
					$this->view_data["experience"][]= array(
							'company_work'		=> $item->company_work,
							'describe'  	 	=> $item->describe,
							'position'      	=> $item->position,
							'time_begin' 		=> $item->time_begin,
							'time_end' 			=> $item->time_end
					);
				}

				$this->view_data['action_tit']	=	'Cập nhật CV';
			}
			else{
				$this->view_data['action_tit']	=	'Thêm mới CV';
			}

			if($describe_project[0]!=NULL){
				foreach($describe_project as $k=>$item){
					if(!empty($name_project[$k])){
						$this->view_data["project"][]				= array(
								'name_project'		 	=>	$name_project[$k],
								'link_project'			=>	$link_project[$k],
								'describe_project'  	=>	$item
						);
					}
				}
			}else{
				$this->view_data["project"][]				= array(
						'name_project'			=> '',
						'link_project'			=> '',
						'describe_project'  	=> '',
				);
			}

			if($describe_study[0]!=NULL){
				foreach($describe_study as $k=>$item){
					if(!empty($school[$k])){
						$this->view_data["education"][]				= array(
								'school'			=> $school[$k],
								'describe'  	 	=> $item,
								'study'      		=> $study[$k],
								'time_begin' 		=> $time_begin_study[$k],
								'time_end' 			=> $time_end_study[$k]
						);
					}
				}
			}else{
				$this->view_data["education"][]				= array(
						'school'			=> '',
						'describe'  	 	=> '',
						'study'      		=> '',
						'time_begin' 		=> '',
						'time_end' 			=> ''
				);
			}

			if($describe[0]!=NULL){
				foreach($describe as $k=>$item){
					if(!empty($company_work[$k])){
						$this->view_data["experience"][]				= array(
								'company_work'		 	=>	$company_work[$k],
								'position'				=>	$position[$k],
								'describe'  	 		=>	$item,
								'time_begin'       		=>	$time_begin[$k],
								'time_end' 				=>	$time_end[$k]
						);
					}
				}
			}else{
				$this->view_data["experience"][]				= array(
						'company_work'		=> '',
						'position'			=> '',
						'describe'  	 	=> '',
						'time_begin'       	=> '',
						'time_end' 			=> ''
				);
			}

			if($this->input->post())
	        {
	            $this->form_validation->set_rules('hoten', 'Tên', 'required');
	            $this->form_validation->set_rules('ngheungtuyen', 'Nghề ứng tuyển', 'required');
	            $this->form_validation->set_rules('email', 'Email', 'required');
	            $this->form_validation->set_rules('phone', 'Số điện thoại', 'required');
	            $this->form_validation->set_rules('address', 'Địa chỉ', 'required');

	            if ($this->form_validation->run()) {
            	 //lay ten file anh minh hoa duoc update len
	                $this->load->library('upload_library');
	                $upload_path = './public/static/uploads/cv1';

	                $upload_data = $this->upload_library->upload($upload_path, 'images');
	                if(isset($upload_data['file_name']))
	                {
	                    $image_link = $upload_data['file_name'];
	                    if($image_link != '')
		                {
		                    $this->view_data["CV"]->avatar = $image_link;
		                }
	                }
	            	if ($id>0) {
		                $this->CV_model->update($this->view_data["CV"], $id);
		                $this->CV_experience_model->delete(array('id_cv' => $id));
		                $this->CV_education_model->delete(array('id_cv' => $id));
		                $this->CV_project_model->delete(array('id_cv' => $id));
						
					//SAVE CV_EXPERIENCE
		                if($describe[0]!=NULL){
							foreach($describe as $k=>$item){
								if(!empty($company_work[$k])){
									$experience['company_work']		 	=	$company_work[$k];
									$experience['position']				=	$position[$k];
									$experience['describe']  	 		=	$item;
									$experience['time_begin']       	=	$time_begin[$k];
									$experience['time_end'] 			=	$time_end[$k];
									$experience['id_cv'] 				=	$id;
									$this->CV_experience_model->create($experience);
								}
							}
						}
						else{
							die('Lưu Công ty thất bại');
						}

					//SAVE CV_EDUCATION
		                if($describe_study[0]!=NULL){
							foreach($describe_study as $k=>$item){
								if(!empty($school[$k])){
									$education['school']		 	=	$school[$k];
									$education['study']				=	$study[$k];
									$education['describe']  	 	=	$item;
									$education['time_begin']       	=	$time_begin_study[$k];
									$education['time_end'] 			=	$time_end_study[$k];
									$education['id_cv'] 			=	$id;
									$this->CV_education_model->create($education);
								}
							}
						}
						else{
							die('Lưu học vấn thất bại');
						}

					//SAVE CV_PROJECT
		                if($describe_project[0]!=NULL){
							foreach($describe_project as $k=>$item){
								if(!empty($name_project[$k])){
									$project['name_project']		 	=	$name_project[$k];
									$project['link_project']			=	$link_project[$k];
									$project['describe_project']  		=	$item;
									$project['id_cv'] 					=	$id;
									$upload_avatar_project 				= $this->upload_library->upload($upload_path, 'avatar_project'.$k);
									$upload_detailed_pic 				= $this->upload_library->upload($upload_path, 'detailed_pic'.$k);
		               				if(isset($upload_avatar_project['file_name']))
					                {
					                    $avatar_project_link = $upload_avatar_project['file_name'];
					                    if($avatar_project_link != '')
						                {
						                    $project['avatar_project'] 		= $avatar_project_link;
						                }
					                }

					                if(isset($upload_detailed_pic['file_name']))
					                {
					                    $detailed_pic_link = $upload_detailed_pic['file_name'];
					                    if($detailed_pic_link != '')
						                {
						                    $project['detailed_pic'] 		= $detailed_pic_link;
						                }
					                }
									$this->CV_project_model->create($project);
								}
							}
						}
						else{
							die('Lưu dự án thất bại');
						}

		                redirect(base_url('admin/cvadmin'));
		            }
					else{
						$id = $this->CV_model->create($this->view_data["CV"]);
					//SAVE CV_EXPERIENCE
		                if($describe[0]!=NULL){
							foreach($describe as $k=>$item){
								if(!empty($company_work[$k])){
									$experience['company_work']		 	=	$company_work[$k];
									$experience['position']				=	$position[$k];
									$experience['describe']  	 		=	$item;
									$experience['time_begin']       	=	$time_begin[$k];
									$experience['time_end'] 			=	$time_end[$k];
									$experience['id_cv'] 				=	$id;
									$this->CV_experience_model->create($experience);
								}
							}
						}
						else{
							die('Lưu Công ty thất bại');
						}

					//SAVE CV_EDUCATION
		                if($describe_study[0]!=NULL){
							foreach($describe_study as $k=>$item){
								if(!empty($school[$k])){
									$education['school']		 	=	$school[$k];
									$education['study']				=	$study[$k];
									$education['describe']  	 	=	$item;
									$education['time_begin']       	=	$time_begin_study[$k];
									$education['time_end'] 			=	$time_end_study[$k];
									$education['id_cv'] 			=	$id;
									$this->CV_education_model->create($education);
								}
							}
						}
						else{
							die('Lưu học vấn thất bại');
						}

					//SAVE CV_PROJECT
		                if($describe_project[0]!=NULL){
							foreach($describe_project as $k=>$item){
								if(!empty($name_project[$k])){
									$project['name_project']		 	=	$name_project[$k];
									$project['link_project']			=	$link_project[$k];
									$project['describe_project']  		=	$item;
									$project['id_cv'] 					=	$id;
									$upload_avatar_project 				= $this->upload_library->upload($upload_path, 'avatar_project'.$k);
									$upload_detailed_pic 				= $this->upload_library->upload($upload_path, 'detailed_pic'.$k);
		               				if(isset($upload_avatar_project['file_name']))
					                {
					                    $avatar_project_link = $upload_avatar_project['file_name'];
					                    if($avatar_project_link != '')
						                {
						                    $project['avatar_project'] 		= $avatar_project_link;
						                }
					                }

					                if(isset($upload_detailed_pic['file_name']))
					                {
					                    $detailed_pic_link = $upload_detailed_pic['file_name'];
					                    if($detailed_pic_link != '')
						                {
						                    $project['detailed_pic'] 		= $detailed_pic_link;
						                }
					                }
									$this->CV_project_model->create($project);
								}
							}
						}
						else{
							die('Lưu dự án thất bại');
						}
		                redirect(base_url('admin/cvadmin'));
					}
	            }
	        }

	        $this->parser->parse("cvadmin/update.tpl",$this->view_data); 	
		}
	}
