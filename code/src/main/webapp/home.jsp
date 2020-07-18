<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>

		<title>主页</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="" />
		<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
		<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
		<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
		<link href="css/font-awesome.css" rel="stylesheet">
		<link href="http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:200,300,400,700" rel="stylesheet">
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
	</head>

	<body>
		<!-- banner -->
		<div class="agileits-banner jarallax">
			<div class="bnr-agileinfo">
				<!-- navigation -->
				<div class="top-nav w3-agiletop">
					<div class="container">
						<div class="navbar-header w3llogo">
							<h1><a href="index.html">S U E P<span>ZHI ZHI </span> </a></h1>
						</div>
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<div class="w3menu navbar-right">
								<ul class="nav navbar">
									<li>
										<a href="home.jsp" class="active">主页</a>
									</li>
									<li>
										<a href="gallery.jsp">使用说明</a>
									</li>
									<li>
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span data-letters="Pages">账户</span><span class="caret"></span></a>
										<ul class="dropdown-menu">
											<li>
												<a href="index.jsp">登录</a>
											</li>
											<li>
												<a href="register.jsp">注册</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="contact.jsp">联系我们</a>
									</li>
									<li>
										<a href="about.jsp">关于</a>
									</li>
								</ul>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<!-- //navigation -->
				<!-- banner-text -->
				<div class="banner-w3text">
					<div class="container">
						<ul id="vertical-ticker">
							<li>上海电力大学</li>
							<li>Shanghai University of Electric Power</li>
							<li>吱吱打印交流平台</li>
							<li>ZHIZHI Print Platform</li>
						</ul>
					</div>
				</div>
				<!-- //banner-text -->
			</div>
		</div>
		<!-- //banner -->
		<!-- welcome -->
		<div class="welcome">
			<div class="container">
				<div class="welcome-agileinfo">
					<div class="col-xs-4 col-sm-4 welcome-w3lsgrids">
						<div class="w3lwelcome-img effect-ruby">
							<img src="images/img5.jpg" alt=" " class="img-responsive" />
							<div class="agile-caption">
								<h3>ZHI ZHI</h3>
								<p>
									<a href="gallery.jsp" class="abouta">使用手册</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-xs-4 col-sm-4 welcome-w3lsgrids">
						<div class="w3lwelcome-img effect-ruby">
							<img src="images/img1.jpg" alt=" " class="img-responsive" />
							<div class="agile-caption">
								<h3>ZHI ZHI</h3>
								<p>
									<a href="#" class="abouta">调查问卷</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-xs-4 col-sm-4 welcome-w3lsgrids">
						<div class="w3lwelcome-img effect-ruby">
							<img src="images/img.jpg" alt=" " class="img-responsive" />
							<div class="agile-caption">
								<h3>ZHI ZHI</h3>
								<p>
									<a href="contact.jsp" class="abouta">问题反馈</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //welcome -->
		<!-- features -->
		<div class="features">
			<div class="container">
				<h2 class="agileits-title">Features</h2>
				<p class="pagile-text">互动，高效，便捷</p>
				<div class="features-row">
					<div class="col-md-5 features-right">
						<img src="images/img4.jpg" class="img-responsive" alt="" />
					</div>
					<div class="col-md-7 features-left">
						<div class="features-grid">
							<div class="col-xs-3 features-grid-left">
								<i class="fa fa-heart-o" aria-hidden="true"></i>
							</div>
							<div class="col-xs-9 features-grid-right">
								<h4>互动性</h4>
								<p>打破了学院，班级的壁垒，通过一份份小小的打印文件，将陌生的同学联系起来，增进同学之间的交流和友谊的建立</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="features-grid features-grid-mdl">
							<div class="col-xs-3 features-grid-left">
								<i class="fa fa-cogs" aria-hidden="true"></i>
							</div>
							<div class="col-xs-9 features-grid-right">
								<h4>高效性</h4>
								<p>将学校的打印机和同学们的打印机都连接起来，极大地发挥了打印资源，使需要打印的同学减少了等待时间</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="features-grid">
							<div class="col-xs-3 features-grid-left">
								<i class="fa fa-line-chart" aria-hidden="true"></i>
							</div>
							<div class="col-xs-9 features-grid-right">
								<h4>便捷性</h4>
								<p>有打印需求的同学可以在线挑选打印商家，有打印机的同学也可以选择集中打印时间段，弥补了传统打印方式的分散性</p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //features -->
		<!-- services -->
		<div class="services">
			<div class="container">
				<div class="col-md-4 services-w3ls-left">
					<h3 class="agileits-title">Coming Soon</h3>
				</div>
				<div class="col-md-8 services-w3ls-row agileits-w3layouts">
					<div class="col-md-6 col-xs-4 services-grid agileits-w3layouts">
						<i class="fa fa-check-square-o" aria-hidden="true"></i>
						<h5>学业搭档</h5>
					</div>
					<div class="col-md-6 col-xs-4 services-grid agileits-w3layouts">
						<i class="fa fa-bar-chart" aria-hidden="true"></i>
						<h5>校园调研</h5>
					</div>
					<div class="col-md-6 col-xs-4 services-grid srvs-wthree-mdl agileits-w3layouts">
						<i class="fa fa-recycle" aria-hidden="true"></i>
						<h5>闲置流动</h5>
					</div>

					<div class="col-md-6 col-xs-4 services-grid srvs-wthree-mdl agileits-w3layouts">
						<i class="fa fa-bookmark-o" aria-hidden="true"></i>
						<h5>资料共享</h5>
					</div>

					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<!-- //services -->
		<!-- js -->
		<script src="js/jquery-2.2.3.min.js"></script>
		<script src="js/jarallax.js"></script>
		<script src="js/SmoothScroll.min.js"></script>
		<script type="text/javascript">
			/* init Jarallax */
			$('.jarallax').jarallax({
				speed: 0.5,
				imgWidth: 1366,
				imgHeight: 768
			})
		</script>
		<!-- //js -->
		<!-- text Ticker -->
		<script type="text/javascript" src="js/jquery.totemticker.js"></script>
		<script type="text/javascript">
			$(function() {
				$('#vertical-ticker').totemticker({
					row_height: '100px',
					next: '#ticker-next',
					previous: '#ticker-previous',
					stop: '#stop',
					start: '#start',
					mousestop: true
				});
			});
		</script>
		<!-- //text Ticker -->
		<!-- start-smooth-scrolling -->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event) {
					event.preventDefault();

					$('html,body').animate({
						scrollTop: $(this.hash).offset().top
					}, 1000);
				});
			});
		</script>
		<!-- //end-smooth-scrolling -->
		<!-- smooth-scrolling-of-move-up -->
		<script type="text/javascript">
			$(document).ready(function() {
				/*
				var defaults = {
					containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
				};
				*/

				$().UItoTop({
					easingType: 'easeOutQuart'
				});

			});
		</script>
		<!-- //smooth-scrolling-of-move-up -->
		<!-- Progressive-Effects-Animation-JavaScript -->
		<script type="text/javascript" src="js/numscroller-1.0.js"></script>
		<!-- //Progressive-Effects-Animation-JavaScript -->
		<!-- Bootstrap core JavaScript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="js/bootstrap.js"></script>
	</body>

</html>