<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Contact |</title>

<!-- Bootstrap core CSS -->

<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="fonts/css/font-awesome.min.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">

<!-- Custom styling plus plugins -->
<link href="css/custom.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="css/maps/jquery-jvectormap-2.0.3.css" />
<link href="css/icheck/flat/green.css" rel="stylesheet" />
<link href="css/floatexamples.css" rel="stylesheet" type="text/css" />

<script src="js/jquery.min.js"></script>
<script src="js/nprogress.js"></script>

<!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
<script type="text/javascript">
	$(document).ready(function() {
		$("#all").click(function() {
			var cat = 4;
			$.get('ImageAjax', {
				cat : cat
			}, function(responseText) {
				$("#image-container").html(responseText);
			});
		});
		$("#photo").click(function() {
			var cat = 2;
			$.get('ImageAjax', {
				cat : cat
			}, function(responseText) {
				$("#image-container").html(responseText);
			});
		});
		$("#video").click(function() {
			var cat = 3;
			$.get('ImageAjax', {
				cat : cat
			}, function(responseText) {
				$("#image-container").html(responseText);
			});
		});
		$("#web").click(function() {
			var cat = 1;
			$.get('ImageAjax', {
				cat : cat
			}, function(responseText) {
				$("#image-container").html(responseText);
			});
		});
		$(".like").click(function() {
			var imgurl = $(this).find('img').attr('src');
			var obj = $(this);
			$.get('LikeAjax', {
				imgurl : imgurl
			}, function(responseText) {
				obj.siblings('#likecount').text(responseText + " likes")
				obj.find('i').removeClass("fa-heart-o");
				obj.find('i').addClass("fa-heart");
			});
		});
	});
</script>

<style>
.modal-content iframe {
	margin: 0 auto;
	display: block;
}
</style>

</head>


<body class="nav-md" onload="getCaptcha();">

	<div class="container body">


		<div class="main_container">

			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div>
						<a id="logobig" href="index.jsp"><img
							style="margin-bottom: -10px; width: 180px; height: 60px; margin-top: 20px; margin-left: 10px"
							src="images/logo.png"></a>
					</div>
					<div>
						<a id="logosmall" hidden="true" href="index.jsp"><img
							style="height: 30px; width: 35px; margin-top: 20px; margin-left: 17px"
							src="images/logosmall.png"></a>
					</div>
					<div class="clearfix"></div>


					<br />
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">

						<div class="menu_section">
							<ul class="nav side-menu">
								<li class="principale"><a href="index.jsp"><i
										class="fa fa-home"></i> Home</a></li>
								<li class="principale"><a href="gallery_front.jsp"><i
										class="fa fa-camera-retro"></i> Gallery</a></li>
								<li class="principale"><a><i class="fa fa-book"></i>
										Research <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
										<li><a href="books.jsp">Books</a></li>
										<li><a href="articles.jsp">Articles</a></li>
										<li><a href="chapters.jsp">Book Chapters</a></li>
									</ul></li>
								<li class="principale"><a><i
										class="fa fa-graduation-cap"></i> Pedagogy <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
										<li><a href="form.html">Formation Initiale</a></li>
										<li><a href="form_advanced.html">Formation Continue</a></li>
										<li><a href="form_advanced.html">Encadrement</a></li>
									</ul></li>
								<li class="principale"><a href="contact.jsp"><i
										class="fa fa-envelope-o"></i> Contact</a></li>
								<li class="principale"><a href="about_front.jsp"><i
										class="fa fa-edit"></i> About </a></li>
							</ul>
						</div>
					</div>

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
					</nav>
				</div>
				<div class="title_right">
					<div
						class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
						<div class="input-group"
							style="margin-top: -50px; width: 200px; float: right">
							<input type="text" class="form-control"
								placeholder="Search for..."> <span
								class="input-group-btn">
								<button class="btn btn-default" type="button">Go!</button>
							</span>
						</div>
					</div>
				</div>

			</div>
			<!-- /top navigation -->


			<!-- page content -->
			<div class="right_col" role="main">
				<div class="page-title"></div>
				<div class="clearfix"></div>
				<div class="row">
					<div class="col-md-12">
						<div class="x_panel">
							<div class="x_title">
								<h2>Media Gallery</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<div class="row">
									<div id="portfolio">
										<div class="btn-group" style="float: left; margin-left: 10px">
											<button id="all" class="btn btn-default btn-sm" type="button">All</button>
											<button id="photo" class="btn btn-default btn-sm"
												type="button">Photo</button>
											<button id="video" class="btn btn-default btn-sm"
												type="button">Video</button>
											<button id="web" class="btn btn-default btn-sm" type="button">Web</button>
										</div>
										<br> <br>
										<div id="image-container">
											<c:forEach var="image" items="${imageL}">
												<div class="col-sm-3">
													<div class="thumbnail">
														<div class="image view view-first">

															<img style="width: 100%; height: 230px; display: block;"
																src="${image.url}" alt="image" id="clickImage" />
															<div class="mask" style="color: white">
																<a href="#" class="like"><i
																	style="color: white; margin-top: 90px"
																	class="fa fa-heart-o fa-2x"></i> <img
																	style="display: none; width: 100%; height: 230px;"
																	src="${image.url}" alt="image" id="clickImage" /> </a> <a
																	href="#" class="pop"><i
																	style="color: white; margin-top: 90px"
																	class="fa fa-search fa-2x"></i> <img
																	style="display: none; width: 100%; height: 230px;"
																	src="${image.url}" alt="image" id="clickImage" /> </a> <br>
																<i id="likecount" style="font-weight: bold">${image.likes}
																	likes</i>
															</div>


														</div>
														<div class="caption">
															<center>
																<p style="font-weight: bold; font-size: 20px">${image.title }</p>
															</center>
														</div>
													</div>
												</div>
											</c:forEach>
											<c:forEach var="vid" items="${vidL}">
												<div class="col-sm-3">
													<div class="thumbnail">
														<div class="image view view-first">

															<img style="width: 100%; height: 230px; display: block;"
																src="${vid.thumbnail}" alt="video" id="clickImage" />
															<div class="mask" style="color: white">
																<a href="#" class="like"><i
																	style="color: white; margin-top: 90px"
																	class="fa fa-heart-o fa-2x"></i> <img
																	style="display: none; width: 100%; height: 230px;"
																	src="${vid.url}" alt="image" id="clickImage" /> </a> <a
																	href="#" class="vidpop"><i
																	style="color: white; margin-top: 90px"
																	class="fa fa-search fa-2x"></i> <img
																	style="display: none; width: 100%; height: 230px;"
																	src="${vid.url}" alt="image" id="clickImage" /> </a> <br>
																<i id="likecount" style="font-weight: bold">${vid.likes}
																	likes</i>
															</div>


														</div>
														<div class="caption">
															<center>
																<p style="font-weight: bold; font-size: 20px">${vid.description}</p>
															</center>
														</div>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
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

	<!-- gauge js -->
	<script type="text/javascript" src="js/gauge/gauge.min.js"></script>
	<script type="text/javascript" src="js/gauge/gauge_demo.js"></script>
	<!-- bootstrap progress js -->
	<script src="js/progressbar/bootstrap-progressbar.min.js"></script>
	<!-- icheck -->
	<script src="js/icheck/icheck.min.js"></script>
	<!-- daterangepicker -->
	<script type="text/javascript" src="js/moment/moment.min.js"></script>
	<script type="text/javascript" src="js/datepicker/daterangepicker.js"></script>
	<!-- chart js -->
	<script src="js/chartjs/chart.min.js"></script>

	<script src="js/custom.js"></script>

	<!-- flot js -->
	<!--[if lte IE 8]><script type="text/javascript" src="js/excanvas.min.js"></script><![endif]-->
	<script type="text/javascript" src="js/flot/jquery.flot.js"></script>
	<script type="text/javascript" src="js/flot/jquery.flot.pie.js"></script>
	<script type="text/javascript" src="js/flot/jquery.flot.orderBars.js"></script>
	<script type="text/javascript" src="js/flot/jquery.flot.time.min.js"></script>
	<script type="text/javascript" src="js/flot/date.js"></script>
	<script type="text/javascript" src="js/flot/jquery.flot.spline.js"></script>
	<script type="text/javascript" src="js/flot/jquery.flot.stack.js"></script>
	<script type="text/javascript" src="js/flot/curvedLines.js"></script>
	<script type="text/javascript" src="js/flot/jquery.flot.resize.js"></script>
	<script>
		$(document).ready(
				function() {
					// [17, 74, 6, 39, 20, 85, 7]
					//[82, 23, 66, 9, 99, 6, 2]
					var data1 = [ [ gd(2012, 1, 1), 17 ],
							[ gd(2012, 1, 2), 74 ], [ gd(2012, 1, 3), 6 ],
							[ gd(2012, 1, 4), 39 ], [ gd(2012, 1, 5), 20 ],
							[ gd(2012, 1, 6), 85 ], [ gd(2012, 1, 7), 7 ] ];

					var data2 = [ [ gd(2012, 1, 1), 82 ],
							[ gd(2012, 1, 2), 23 ], [ gd(2012, 1, 3), 66 ],
							[ gd(2012, 1, 4), 9 ], [ gd(2012, 1, 5), 119 ],
							[ gd(2012, 1, 6), 6 ], [ gd(2012, 1, 7), 9 ] ];
					$("#canvas_dahs").length
							&& $.plot($("#canvas_dahs"), [ data1, data2 ], {
								series : {
									lines : {
										show : false,
										fill : true
									},
									splines : {
										show : true,
										tension : 0.4,
										lineWidth : 1,
										fill : 0.4
									},
									points : {
										radius : 0,
										show : true
									},
									shadowSize : 2
								},
								grid : {
									verticalLines : true,
									hoverable : true,
									clickable : true,
									tickColor : "#d5d5d5",
									borderWidth : 1,
									color : '#fff'
								},
								colors : [ "rgba(38, 185, 154, 0.38)",
										"rgba(3, 88, 106, 0.38)" ],
								xaxis : {
									tickColor : "rgba(51, 51, 51, 0.06)",
									mode : "time",
									tickSize : [ 1, "day" ],
									//tickLength: 10,
									axisLabel : "Date",
									axisLabelUseCanvas : true,
									axisLabelFontSizePixels : 12,
									axisLabelFontFamily : 'Verdana, Arial',
									axisLabelPadding : 10
								//mode: "time", timeformat: "%m/%d/%y", minTickSize: [1, "day"]
								},
								yaxis : {
									ticks : 8,
									tickColor : "rgba(51, 51, 51, 0.06)",
								},
								tooltip : false
							});

					function gd(year, month, day) {
						return new Date(year, month - 1, day).getTime();
					}
				});
	</script>

	<!-- worldmap -->
	<script type="text/javascript"
		src="js/maps/jquery-jvectormap-2.0.3.min.js"></script>
	<script type="text/javascript" src="js/maps/gdp-data.js"></script>
	<script type="text/javascript"
		src="js/maps/jquery-jvectormap-world-mill-en.js"></script>
	<script type="text/javascript"
		src="js/maps/jquery-jvectormap-us-aea-en.js"></script>
	<!-- pace -->
	<script src="js/pace/pace.min.js"></script>
	<script>
		$(function() {
			$('#world-map-gdp').vectorMap({
				map : 'world_mill_en',
				backgroundColor : 'transparent',
				zoomOnScroll : false,
				series : {
					regions : [ {
						values : gdpData,
						scale : [ '#E6F2F0', '#149B7E' ],
						normalizeFunction : 'polynomial'
					} ]
				},
				onRegionTipShow : function(e, el, code) {
					el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
				}
			});
		});
	</script>
	<!-- skycons -->
	<script src="js/skycons/skycons.min.js"></script>
	<script>
		var icons = new Skycons({
			"color" : "#73879C"
		}), list = [ "clear-day", "clear-night", "partly-cloudy-day",
				"partly-cloudy-night", "cloudy", "rain", "sleet", "snow",
				"wind", "fog" ], i;

		for (i = list.length; i--;)
			icons.set(list[i], list[i]);

		icons.play();
	</script>

	<!-- dashbord linegraph -->
	<script>
		Chart.defaults.global.legend = {
			enabled : false
		};

		var data = {
			labels : [ "Books", "Articles", "Book Chapters" ],
			datasets : [ {
				data : [ 30, 50, 20 ],
				backgroundColor : [ "#BDC3C7", "#1589D1", "#9B59B6" ],
				hoverBackgroundColor : [ "#CFD4D8", "#34495E", "#B370CF" ]

			} ]
		};

		var canvasDoughnut = new Chart(document.getElementById("canvas1"), {
			type : 'doughnut',
			tooltipFillColor : "rgba(51, 51, 51, 0.55)",
			data : data
		});
	</script>
	<!-- /dashbord linegraph -->
	<!-- datepicker -->
	<script type="text/javascript">
		$(document)
				.ready(
						function() {

							var cb = function(start, end, label) {
								console.log(start.toISOString(), end
										.toISOString(), label);
								$('#reportrange span').html(
										start.format('MMMM D, YYYY') + ' - '
												+ end.format('MMMM D, YYYY'));
								//alert("Callback has fired: [" + start.format('MMMM D, YYYY') + " to " + end.format('MMMM D, YYYY') + ", label = " + label + "]");
							}

							var optionSet1 = {
								startDate : moment().subtract(29, 'days'),
								endDate : moment(),
								minDate : '01/01/2012',
								maxDate : '12/31/2015',
								dateLimit : {
									days : 60
								},
								showDropdowns : true,
								showWeekNumbers : true,
								timePicker : false,
								timePickerIncrement : 1,
								timePicker12Hour : true,
								ranges : {
									'Today' : [ moment(), moment() ],
									'Yesterday' : [
											moment().subtract(1, 'days'),
											moment().subtract(1, 'days') ],
									'Last 7 Days' : [
											moment().subtract(6, 'days'),
											moment() ],
									'Last 30 Days' : [
											moment().subtract(29, 'days'),
											moment() ],
									'This Month' : [ moment().startOf('month'),
											moment().endOf('month') ],
									'Last Month' : [
											moment().subtract(1, 'month')
													.startOf('month'),
											moment().subtract(1, 'month')
													.endOf('month') ]
								},
								opens : 'left',
								buttonClasses : [ 'btn btn-default' ],
								applyClass : 'btn-small btn-primary',
								cancelClass : 'btn-small',
								format : 'MM/DD/YYYY',
								separator : ' to ',
								locale : {
									applyLabel : 'Submit',
									cancelLabel : 'Clear',
									fromLabel : 'From',
									toLabel : 'To',
									customRangeLabel : 'Custom',
									daysOfWeek : [ 'Su', 'Mo', 'Tu', 'We',
											'Th', 'Fr', 'Sa' ],
									monthNames : [ 'January', 'February',
											'March', 'April', 'May', 'June',
											'July', 'August', 'September',
											'October', 'November', 'December' ],
									firstDay : 1
								}
							};
							$('#reportrange span').html(
									moment().subtract(29, 'days').format(
											'MMMM D, YYYY')
											+ ' - '
											+ moment().format('MMMM D, YYYY'));
							$('#reportrange').daterangepicker(optionSet1, cb);
							$('#reportrange').on('show.daterangepicker',
									function() {
										console.log("show event fired");
									});
							$('#reportrange').on('hide.daterangepicker',
									function() {
										console.log("hide event fired");
									});
							$('#reportrange')
									.on(
											'apply.daterangepicker',
											function(ev, picker) {
												console
														.log("apply event fired, start/end dates are "
																+ picker.startDate
																		.format('MMMM D, YYYY')
																+ " to "
																+ picker.endDate
																		.format('MMMM D, YYYY'));
											});
							$('#reportrange').on('cancel.daterangepicker',
									function(ev, picker) {
										console.log("cancel event fired");
									});
							$('#options1').click(
									function() {
										$('#reportrange').data(
												'daterangepicker').setOptions(
												optionSet1, cb);
									});
							$('#options2').click(
									function() {
										$('#reportrange').data(
												'daterangepicker').setOptions(
												optionSet2, cb);
									});
							$('#destroy').click(
									function() {
										$('#reportrange').data(
												'daterangepicker').remove();
									});
						});
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			var toggled = true;
			var liSize = $(".principale").width();
			$("#menu_toggle").click(function() {
				$("#logosmall").toggle();
				$("#logobig").toggle();
				if (toggled) {
					$(".principale").width(65);
				} else {
					$(".principale").width(liSize);
				}
				toggled = !toggled;
			});

			$(".principale").click(function() {
				if (!toggled) {
					$(this).width(70);
				}
			});

		});
	</script>
	<script>
		NProgress.done();
	</script>
	<!-- /datepicker -->
	<!-- /footer content -->
</body>

</html>

</html>