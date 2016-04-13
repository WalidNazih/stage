<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Inbox settings |</title>

<!-- Bootstrap core CSS -->

<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="fonts/css/font-awesome.min.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">

<!-- Custom styling plus plugins -->
<link href="css/custom.css" rel="stylesheet">
<link href="css/icheck/flat/green.css" rel="stylesheet">


<script src="js/jquery.min.js"></script>

<!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>


<body class="nav-md">

	<div class="container body">


		<div class="main_container">

			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">

					<div class="navbar nav_title" style="border: 0;">
						<a href="dashboard.jsp" class="site_title"><i class="fa fa-cog"></i> <span>Dashboard</span></a>
					</div>
					<div class="clearfix"></div>


					<!-- menu prile quick info -->
					<div class="profile">
            <div class="profile_pic">
              <img src="images/img.jpg" alt="..." class="img-circle profile_img">
            </div>
            <div class="profile_info">
            <br>
              <span>Welcome,</span>
              <h2>Simour Houssein</h2>
            </div>
          </div>
          <!-- /menu prile quick info -->

          <br />
          <!-- sidebar menu -->
          <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

            <div class="menu_section">
              <h3>General</h3>
               <ul class="nav side-menu">
                <li><a  href="dashboard.jsp"><i class="fa fa-home"></i> Home</a>
                </li>
                <li><a  href="gallery.jsp"><i class="fa fa-camera-retro"></i> Gallery</a>
                </li>
                <li><a href="research.jsp"><i class="fa fa-book"></i> Research </a>
                </li>

                <li><a href="pedagogy.jsp"><i class="fa fa-graduation-cap"></i> Pedagogy</a>
                </li>
                <li><a href="calendar.jsp"><i class="fa fa-calendar"></i> Calendar</a>
                </li>
                <li><a href="about.jsp"><i class="fa fa-edit"></i> About </a>
                </li>
              </ul>
            </div>
          </div>
          <!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					<div class="sidebar-footer hidden-small">
						<a data-toggle="tooltip" data-placement="top" title="Settings">
							<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
							<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
							class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Logout">
							<span class="glyphicon glyphicon-off" aria-hidden="true"></span>
						</a>
					</div>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">

        <div class="nav_menu">
          <nav class="" role="navigation">
            <div class="nav toggle">
              <a id="menu_toggle"><i class="fa fa-bars"></i></a>
            </div>

            <ul class="nav navbar-nav navbar-right">
              <li class="">
                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                  <img src="images/img.jpg" alt="">Simour Houssein
                  <span class=" fa fa-angle-down"></span>
                </a>
                <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                  <li><a href="index.jsp">  See Changes</a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <span class="badge bg-red pull-right">50%</span>
                      <span>Settings</span>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">Help</a>
                  </li>
                  <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                  </li>
                </ul>
              </li>

             
          </nav>
        </div>

      </div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">

					<div class="page-title">
						<div class="title_left">
							<h3>
								Inbox
							</h3>
						</div>

						<div class="title_right">
							<div
								class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
								<div class="input-group">
									<input type="text" class="form-control"
										placeholder="Search for..."> <span
										class="input-group-btn">
										<button class="btn btn-default" type="button">Go!</button>
									</span>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>

					<div class="row">

						<div class="col-md-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										Inbox <small>User Mail</small>
									</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a href="#"><i class="fa fa-chevron-up"></i></a></li>
										<li><a href="#"><i class="fa fa-close"></i></a></li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">


									<div class="row">

										<div class="col-sm-3 mail_list_column">

											<div class="mail_list">
												<div class="left">
													<i class="fa fa-circle"></i> <i class="fa fa-edit"></i>
												</div>
												<div class="right">
													<h3>
														Dennis Mugo <small>3.00 PM</small>
													</h3>
													<p>Ut enim ad minim veniam, quis nostrud exercitation
														enim ad minim veniam, quis nostrud exercitation...</p>
												</div>
											</div>
											<div class="mail_list">
												<div class="left">
													<i class="fa fa-star"></i>
												</div>
												<div class="right">
													<h3>
														Jane Nobert <small>4.09 PM</small>
													</h3>
													<p>
														<span class="badge">To</span> Ut enim ad minim veniam,
														quis nostrud exercitation enim ad minim veniam, quis
														nostrud exercitation...
													</p>
												</div>
											</div>
											<div class="mail_list">
												<div class="left">
													<i class="fa fa-circle-o"></i><i class="fa fa-paperclip"></i>
												</div>
												<div class="right">
													<h3>
														Musimbi Anne <small>4.09 PM</small>
													</h3>
													<p>
														<span class="badge">CC</span> Ut enim ad minim veniam,
														quis nostrud exercitation enim ad minim veniam, quis
														nostrud exercitation...
													</p>
												</div>
											</div>
											<div class="mail_list">
												<div class="left">
													<i class="fa fa-paperclip"></i>
												</div>
												<div class="right">
													<h3>
														Jon Dibbs <small>4.09 PM</small>
													</h3>
													<p>Ut enim ad minim veniam, quis nostrud exercitation
														enim ad minim veniam, quis nostrud exercitation...</p>
												</div>
											</div>
											<div class="mail_list">
												<div class="left">.</div>
												<div class="right">
													<h3>
														Debbis & Raymond <small>4.09 PM</small>
													</h3>
													<p>Ut enim ad minim veniam, quis nostrud exercitation
														enim ad minim veniam, quis nostrud exercitation...</p>
												</div>
											</div>
											<div class="mail_list">
												<div class="left">.</div>
												<div class="right">
													<h3>
														Debbis & Raymond <small>4.09 PM</small>
													</h3>
													<p>Ut enim ad minim veniam, quis nostrud exercitation
														enim ad minim veniam, quis nostrud exercitation...</p>
												</div>
											</div>
											<div class="mail_list">
												<div class="left">
													<i class="fa fa-circle"></i> <i class="fa fa-edit"></i>
												</div>
												<div class="right">
													<h3>
														Dennis Mugo <small>3.00 PM</small>
													</h3>
													<p>Ut enim ad minim veniam, quis nostrud exercitation
														enim ad minim veniam, quis nostrud exercitation...</p>
												</div>
											</div>
											<div class="mail_list">
												<div class="left">
													<i class="fa fa-star"></i>
												</div>
												<div class="right">
													<h3>
														Jane Nobert <small>4.09 PM</small>
													</h3>
													<p>Ut enim ad minim veniam, quis nostrud exercitation
														enim ad minim veniam, quis nostrud exercitation...</p>
												</div>
											</div>



										</div>
										<!-- /MAIL LIST -->


										<!-- CONTENT MAIL -->
										<div class="col-sm-9 mail_view">
											<div class="inbox-body">
												<div class="mail_heading row">
													<div class="col-md-8">
														<div class="compose-btn">
															<a class="btn btn-sm btn-primary"
																href="mail_compose.html"><i class="fa fa-reply"></i>
																Reply</a>
															<button title="" data-placement="top"
																data-toggle="tooltip" type="button"
																data-original-title="Print" class="btn  btn-sm tooltips">
																<i class="fa fa-print"></i>
															</button>
															<button title="" data-placement="top"
																data-toggle="tooltip" data-original-title="Trash"
																class="btn btn-sm tooltips">
																<i class="fa fa-trash-o"></i>
															</button>
														</div>

													</div>
													<div class="col-md-4 text-right">
														<p class="date">8:02 PM 12 FEB 2014</p>
													</div>
													<div class="col-md-12">
														<h4>Donec vitae leo at sem lobortis porttitor eu
															consequat risus. Mauris sed congue orci. Donec ultrices
															faucibus rutrum.</h4>
													</div>
												</div>
												<div class="sender-info">
													<div class="row">
														<div class="col-md-12">
															<strong>Jon Doe</strong> <span>(jon.doe@gmail.com)</span>
															to <strong>me</strong> <a class="sender-dropdown"><i
																class="fa fa-chevron-down"></i></a>
														</div>
													</div>
												</div>
												<div class="view-mail">
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing
														elit, sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea commodo
														consequat. Duis aute irure dolor in reprehenderit in
														voluptate velit esse cillum dolore eu fugiat nulla
														pariatur. Excepteur sint occaecat cupidatat non proident,
														sunt in culpa qui officia deserunt mollit anim id est
														laborum.</p>
													<p>Riusmod tempor incididunt ut labor erem ipsum dolor
														sit amet, consectetur adipiscing elit, sed do eiusmod
														tempor incididunt ut labore et dolore magna aliqua. Ut
														enim ad minim veniam, quis nostrud exercitation ullamco
														laboris nisi ut aliquip ex ea commodo consequat. Duis aute
														irure dolor in reprehenderit in voluptate velit esse
														cillum dolore eu fugiat nulla pariatur. Excepteur sint
														occaecat cupidatat non proident, sunt in culpa qui officia
														deserunt mollit anim id est laborum.</p>
													<p>Modesed do eiusmod tempor incididunt ut labore et
														dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
														exercitation ullamco laboris nisi ut aliquip ex ea commodo
														consequat. Duis aute irure dolor in reprehenderit in
														voluptate velit esse cillum dolore eu fugiat nulla
														pariatur. Excepteur sint occaecat cupidatat non proident,
														sunt in culpa qui officia deserunt mollit anim id est
														laborum.</p>
												</div>
												<div class="attachment">
													<p>
														<span><i class="fa fa-paperclip"></i> 3 attachments
															— </span> <a href="#">Download all attachments</a> | <a href="#">View
															all images</a>
													</p>
													<ul>
														<li><a href="#" class="atch-thumb"> <img
																src="images/1.png" alt="img" />
														</a>

															<div class="file-name">image-name.jpg</div> <span>12KB</span>


															<div class="links">
																<a href="#">View</a> - <a href="#">Download</a>
															</div></li>

														<li><a href="#" class="atch-thumb"> <img
																src="images/1.png" alt="img" />
														</a>

															<div class="file-name">img_name.jpg</div> <span>40KB</span>

															<div class="links">
																<a href="#">View</a> - <a href="#">Download</a>
															</div></li>
														<li><a href="#" class="atch-thumb"> <img
																src="images/1.png" alt="img" />
														</a>

															<div class="file-name">img_name.jpg</div> <span>30KB</span>

															<div class="links">
																<a href="#">View</a> - <a href="#">Download</a>
															</div></li>

													</ul>
												</div>
												<div class="compose-btn pull-left">
													<a class="btn btn-sm btn-primary" href="mail_compose.html"><i
														class="fa fa-reply"></i> Reply</a>
													<button class="btn btn-sm ">
														<i class="fa fa-arrow-right"></i> Forward
													</button>
													<button title="" data-placement="top" data-toggle="tooltip"
														type="button" data-original-title="Print"
														class="btn  btn-sm tooltips">
														<i class="fa fa-print"></i>
													</button>
													<button title="" data-placement="top" data-toggle="tooltip"
														data-original-title="Trash" class="btn btn-sm tooltips">
														<i class="fa fa-trash-o"></i>
													</button>
												</div>
											</div>

										</div>
										<!-- /CONTENT MAIL -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- footer content -->
				<!-- /footer content -->

			</div>
			<!-- /page content -->
		</div>

	</div>

	<div id="custom_notifications" class="custom-notifications dsp_none">
		<ul class="list-unstyled notifications clearfix"
			data-tabbed_notifications="notif-group">
		</ul>
		<div class="clearfix"></div>
		<div id="notif-group" class="tabbed_notifications"></div>
	</div>

	<script src="js/bootstrap.min.js"></script>

	<!-- bootstrap progress js -->
	<script src="js/progressbar/bootstrap-progressbar.min.js"></script>
	<!-- icheck -->
	<script src="js/icheck/icheck.min.js"></script>
	<!-- pace -->
	<script src="js/pace/pace.min.js"></script>
	<script src="js/custom.js"></script>

</body>

</html>
