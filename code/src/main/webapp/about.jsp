<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<title>关于</title>
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
							<h1><a href="home.jsp">S U E P<span>ZHI ZHI</span> </a></h1>
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
		<!-- about -->
		<div class="about agileinfo">
			<div class="container">
				<h3 class="agileits-title">关于我们</h3>
				<div class="col-sm-6 about-w3right">
					<img src="images/img2.jpg" alt="" />
				</div>
				<div class="col-sm-6 about-w3left">
					<h4> 团结互助的五个小伙伴~</h4>
					<p>我们团队共有五位小伙伴，其中四位来自计算机学院，还有一位来自电气工程学院， 在制作这个平台的过程中，我们常常聚集在一个小教室里讨论各自的问题， 不断提出新的想法后再讨论着如何将它实现。 而我们的指导老师王亮亮，也会积极地加入我们，为我们申请教室，购置配套设施， 还专门请来了研究生学长学姐们来给我们做技术指导。 我们立项的项目是“吱吱打印交流平台”，之所以想创办这样一个平台， 是因为打印需求和打印提供的不协调，我们希望通过这个平台，能够将打印机的资源利用最大化。 “吱吱”是一个模拟打印机在打印时发出声音的拟声词，而我们团队在协作过程中，也在内部形成了 “吱吱文化”：打印的声音是规律而流畅的，我们团队间的合作也如同打印一般平稳有序。 我们深知还有很多的不足和缺陷，所以欢迎小可爱们批评指导，积极提议哦！
					</p>
					<a href="contact.html" class="button button-isi"><span>联系我们</span><i class="icon glyphicon glyphicon-arrow-right"></i></a>
				</div>
				<div class="col-sm-6 about-w3left">
					<h4> 小小的打印 大大的传递</h4>
					<p>看见“打印”就以为这是个单一的平台？<br/>NO！<br/>我们也可以很“多元”!<br/> “吱吱”旨在打造一个打破交友壁垒的平台
						<br/>在这里<br/>你可以发布闲置二手, 将你的闲置流动起来
						<br/>也可以寻找学业搭档，共享学习资源<br/>只是这些模块还处于 未搭建完成状态
						<br/>如果你对我们的项目感兴趣，那么我们非常欢迎你的加入！
						<br/>期待你们的力量！
					</p>
					<a href="contact.html" class="button button-isi"><span>联系我们</span><i class="icon glyphicon glyphicon-arrow-right"></i></a>
				</div>
				<div class="col-sm-6 about-w3right">
					<img src="images/img3.jpg" alt="" />
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<!-- //about -->
		<!-- about-slid -->
		<div class="about-slid jarallax">
			<div class="container">
				<h4>工作时间</h4>
				<h5>Mon-Fri : 10am-9pm </h5>
				<h5>Sat-Sun : 3pm-8pm</h5>
			</div>
		</div>
		<!-- //about-slid -->

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
		<!-- Bootstrap core JavaScript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="js/bootstrap.js"></script>
	</body>

</html>