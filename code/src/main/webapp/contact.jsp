<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<title>联系我们</title>
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
		<div class="agileits-banner about-w3lsbnr">
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
				<div class="banner-w3text about-w3lsbnr-text">
					<div class="container">
						<h2>ZHI ZHI Print Platform</h2>
					</div>
				</div>
				<!-- //banner-text -->
			</div>
		</div>
		<!-- //banner -->
		<!-- contact -->
		<div class="contact agileits">
			<div class="container">
				<h3 class="agileits-title">联系我们</h3>
				<div class="contact-agileinfo">
					<div class="col-md-7 contact-form wthree">
						<form action="#" method="post">
							<input type="text" name="Name" placeholder="姓名" required="">
							<input class="email" type="email" name="Email" placeholder="邮箱地址" required="">
							<textarea placeholder="你的问题/建议。。。" name="Message" required=""></textarea>
							<input type="submit" value="提交">
						</form>
					</div>
					<div class="col-md-4 contact-right wthree">
						<div class="contact-text w3-agileits">
							<h4>联系方式：</h4>
							<p><i class="fa fa-map-marker"></i> 上海市浦东新区上海电力大学（临港校区） </p>
							<p><i class="fa fa-phone"></i> Telephone : +00 111 222 3333</p>
							<p><i class="fa fa-fax"></i> FAX : +1 888 888 4444</p>
							<p><i class="fa fa-envelope-o"></i> Email :
								<a href="mailto:example@mail.com">mail@123.com</a>
							</p>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //contact -->
		<!-- js -->
		<script src="js/jquery-2.2.3.min.js"></script>
		<!-- //js -->
		<!-- start-smooth-scrolling -->
		<script src="js/SmoothScroll.min.js"></script>
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
		<!-- Bootstrap core JavaScript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="js/bootstrap.js"></script>
	</body>

</html>