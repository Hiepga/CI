{extends file="template.tpl"}

	{block name="content"}
		<!-- Page Home -->
			<section id="home">
				<div class="page-content">
					<div class="home_style">
						<div class="row">
							<div class="col-md-12">
								<div class="img-profile">
									<img src="{base_url('public/static/uploads/cv1/')}{$content_cv->avatar}" alt="">
								</div>
								<div class="infor-profile">
									<h3><span>{$content_cv->name} </span></h3>
									<h4>I'm a <span>{$content_cv->job}</span></h4>
									<p>Welcome to my website.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		<!-- End Page -->

		<!-- Page Profile -->
			<section id="profile">
				<div class="page-content">
					<div class="profile-style">
						<div class="row">
							<div class="col-md-6 col-sm-12">
								<div class="img-profile"></div>
							</div>
							<div class="col-md-6 col-sm-12">
								<div class="detail-profile">
									{$content_cv->introduce}
								</div>
								<div class="infor-profile">
									<ul>
										<li><span><i class="fa fa-user"></i>Name: </span>{$content_cv->name}</li>
										<li><span><i class="fa fa-calendar"></i>Birthday: </span>{$content_cv->birthday|date_format}</li>
										<li><span><i class="fa fa-envelope"></i>Email: </span>{$content_cv->email}</li>
										<li><span><i class="fa fa-phone"></i>Phone: </span>{$content_cv->phone}</li>
										<li><span><i class="fa fa-globe"></i>Website: </span>{$content_cv->website}</li>
										<li><span><i class="glyphicon glyphicon-map-marker"></i>Address: </span>{$content_cv->address}</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		<!-- End Page -->
			
		<!-- Page Resume -->
			<section id="resume">
				<div class="page-content">
					<div class="resume-style">
						<div class="title">
							<h3>RESUME – PERSONAL INFO</h3>
						</div>
						<div class="row">
							<div class="col-md-6 col-sm-12">

							<!-- EXPERIENCE -->
								{if isset($cv_experience)}
									<div class="block-experience block">
										<div class="head">
											<h2>Experience</h2>
										</div>
										<ul class="content">
											{foreach $cv_experience as $item}
												<li>
													<div class="item">
														<h5>{$item->position}
															<span class="duration">
																<i class="fa fa-calendar color"></i> 
																{$item->time_begin} - {$item->time_end}
															</span>
														</h5>
														<h6>
															<span class="fa fa-briefcase"></span>
															{$item->company_work}
														</h6>
														<p>{$item->describe}</p>
													</div>
												</li>
											{/foreach}
										</ul>
									</div>
								{/if}
							<!-- End -->
							
							<!-- EDUCATION -->
								{if isset($cv_education)}
									<div class="block-education block">
										<div class="head">
											<h2>Education</h2>
										</div>
										<ul class="content">
											{foreach $cv_education as $item}
												<li>
													<div class="item">
														<h5>{$item->study}
															<span class="duration">
																<i class="fa fa-calendar color"></i> 
																{$item->time_begin} - {$item->time_end}
															</span>
														</h5>
														<h6>
															<span class="fa fa-book"></span>
															{$item->school}
														</h6>
														<p>{$item->describe}</p>
														
													</div>
												</li>
											{/foreach}
										</ul>
									</div>
								{/if}
							<!-- End -->

								<div class="block-download block">
									<div class="head">
										<h2>Download My Resume</h2>
									</div>
									<a class="download" target="_blank" href="https://i.topcv.vn/tranchanhhiep?ref=903016">
										<span data-hover="Download My Resume"><i class="fa fa-cloud-download"></i> Download My Resume</span>
									</a>
								</div>
							</div>
							<div class="col-md-6 col-sm-12">

								<!-- Technical Skill  -->
									{if isset($cv_skill)}
										<div class="block-skills-tech block">
											<div class="head">
												<h2>Skills</h2>
											</div>
											<div class="skill">
												{foreach $cv_skill as $item}
													<div class="skillbar clear" data-percent="{$item->level_skill}%">
														<div class="skillbar-title"><span>{$item->name_skill}</span></div>
														<div class="skillbar-bar" style="width: {$item->level_skill}%;"></div>
														<div class="skill-bar-percent">{$item->level_skill}%</div>
													</div>
												{/foreach}
											</div>
										</div>
									{/if}
								<!-- End -->

								<!-- Language Skill -->
									{if isset($cv_language)}
										<div class="block-skills-language block">
											<div class="head">
												<h2>Lanuage Skills</h2>
											</div>

											<div class="skill">
												{foreach $cv_language as $item}
													<div class="skillbar clear" data-percent="{$item->level_language}%">
														<div class="skillbar-title"><span>{$item->name_language}</span></div>
														<div class="skillbar-bar" style="width: {$item->level_language}%;"></div>
														<div class="skill-bar-percent">{$item->level_language}%</div>
													</div>
												{/foreach}
											</div>
										</div>
									{/if}
								<!-- End -->
									
								<!-- Hobbit -->
									{if isset($cv_hobit)}
										<div class="block-skills-hobbies block">
											<div class="head">
												<h2>Hobbies And Interests</h2>
											</div>

											<div class="skill">
												{foreach $cv_hobit as $item}
													<div class="skillbar clear" data-percent="{$item->level_hobit}%">
														<div class="skillbar-title"><span>{$item->name_hobit}</span></div>
														<div class="skillbar-bar" style="width: {$item->level_hobit}%;"></div>
														<div class="skill-bar-percent">{$item->level_hobit}%</div>
													</div>
												{/foreach}
											</div>
										</div>
									{/if}
								<!-- End -->

							</div>
						</div>
					</div>
				</div>
			</section>
		<!-- End Page -->

		<!-- Page Portfolio -->
			<section id="portfolio">
				<div class="page-content">
					<div class="portfolio-style">
						<div class="row">
							<div class="col-md-12">
								<ul class="list-project">
									{if isset($cv_project)}
										{foreach $cv_project as $item}
											<li>
												<div class="item-project">
													<img src="{base_url('public/static/uploads/cv1/')}{$item->avatar_project}">
													<div class="hover-project">
														<h5>{$item->name_project}</h5>
														<p>{$item->describe_project}</p>
														<ul class="btn-link">
															<li><a class="fancybox-img" href="{base_url('public/static/uploads/cv1/')}{$item->detailed_pic}"><i class="fa fa-search"></i></a></li>
															<li><a target="_blank" href="{$item->link_project}"><i class="fa fa-link"></i></a></li>
														</ul>
													</div>
												</div>
											</li>
										{/foreach}
									{/if}
								</ul>
							</div>
						</div>
					</div>
				</div>
			</section>
		<!-- End Page -->

		<!-- Page Blog -->
			<section id="blog">
				<div class="page-content">
					<div class="blog-style">
						<div class="row row_responsive">
							{if isset($news)}
								{foreach $news as $item}
									<div class="col-sm-6 col-md-4">
										<a class="item_news" href="{base_url('cvonline/detail/')}{$item->code}">
											<div class="img_item">
												<div class="image_link">
													<img src="{base_url('public/static/uploads/product/')}{$item->img_avatar}" alt="">
												</div>
											</div>
											<div class="content_item">
												<h3 class="title">{$item->tittle}</h3>
												<div class="content">
													<p>{$item->content|truncate:150:"...":true}</p>
												</div>
											</div>
										</a>
									</div>
								{/foreach}
							{/if}
						</div>
					</div>
				</div>
			</section>
		<!-- End Page -->
			
		<!-- Page Contact -->
			<section id="contact">
				<div class="page-content">
					<div class="contact-style">
						<div class="row">
							<div class="col-md-12">
								<div class="map">
									<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3826.384572672674!2d107.59447527882948!3d16.456053486915938!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1505922016172" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		<!-- End Page -->
	{/block}
