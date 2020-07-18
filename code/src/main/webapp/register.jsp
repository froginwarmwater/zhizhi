<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
		<title>注册</title>
		<link href="css/login.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" />
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
		<script type="text/javascript" src="js/jQuery1.7.js"></script>
		<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
		<script type="text/javascript" src="js/jquery1.42.min.js"></script>
		<script type="text/javascript" src="js/jquery.SuperSlide.js"></script>
		<script type="text/javascript" src="js/Validform_v5.3.2_min.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				var $tab_li = $('#tab ul li');
				$tab_li.hover(function() {
					$(this).addClass('selected').siblings().removeClass('selected');
					var index = $tab_li.index(this);
					$('div.tab_box > div').eq(index).show().siblings().hide();
				});
			});
		</script>
		<script type="text/javascript">
			$(function() {
				$(".screenbg ul li").each(function() {
					$(this).css("opacity", "0");
				});
				$(".screenbg ul li:first").css("opacity", "1");
				var index = 0;
				var t;
				var li = $(".screenbg ul li");
				var number = li.size();

				function change(index) {
					li.css("visibility", "visible");
					li.eq(index).siblings().animate({
						opacity: 0
					}, 3000);
					li.eq(index).animate({
						opacity: 1
					}, 3000);
				}

				function show() {
					index = index + 1;
					if(index <= number - 1) {
						change(index);
					} else {
						index = 0;
						change(index);
					}
				}
				t = setInterval(show, 8000);
				//根据窗口宽度生成图片宽度
				var width = $(window).width();
				$(".screenbg ul img").css("width", width + "px");
			});
		</script>
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
										<a href="home.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span data-letters="Pages">账户</span><span class="caret"></span></a>
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
		<div id="tab">
			<ul class="tab_menu">
				<li class="selected">学生注册</li>
				<li>教师注册</li>
				<li>商家注册</li>
			</ul>
			<div class="tab_box">
				<!-- 学生注册开始 -->
				<div>
					<div class="stu_error_box"></div>
					
					<!--  
					
					<form action="" method="post" class="stu_login_error">
						<div id="name">
							<label>姓&nbsp;&nbsp;&nbsp;名：</label>
							<input type="text" id="stu_name_hide" name="name" value="输入姓名" nullmsg="姓名不能为空！" datatype="s6-18" />
						</div>
						<div id="username">
							<label>学&nbsp;&nbsp;&nbsp;号：</label>
							<input type="text" id="stu_username_hide" name="username" value="输入学号" nullmsg="学号不能为空！" datatype="s6-18" errormsg="学号范围在6~18个字符之间！" />
						</div>
						<div id="password">
							<label>设置密码：</label>
							<input type="password" id="stu_password_hide" name="password" value="输入密码" nullmsg="密码不能为空！" datatype="*6-16" errormsg="密码范围在6~16位之间！" />
						</div>
						<div id="address">
							<label>手机号码：</label>
							<input type="text" id="stu_address_hide" name="address" value="输入手机号" nullmsg="手机号不能为空！" datatype="s6-18" errormsg="手机号码为11号！" />
						</div>
						<div id="academy">
				
							<label>学&nbsp;&nbsp;&nbsp;院：</label>
							<select name="academy">
								<option value="计算机科学与技术学院">计算机科学与技术学院</option>
								<option value="能源与机械工程学院">能源与机械工程学院</option>
								<option value="电气工程学院">电气工程学院</option>
								<option value="经济与管理学院">经济与管理学院</option>
								<option value="外国语学院">外国语学院</option>
								<option value="环境与化学工程学院">环境与化学工程学院</option>
								<option value="自动化工程学院">自动化工程学院</option>
								<option value="电子与信息工程学院">电子与信息工程学院</option>
								<option value="数理学院">数理学院</option>
								<option value="国际交流学院">国际交流学院</option>
								<option value="马克思主义学院">马克思主义学院</option>
							</select>
						</div>
						<div id="remember">
							<input type="checkbox" name="remember">
							<label>记住密码</label>
						</div>
						<div id="login">
							<button type="submit"><a href="login.html">注册</a></button>
						</div>
					</form>-->
		<form action="regist">
		<p>
			<label for="username">学 号：</label>
			<input type="text" name="name" id="username"/>
		</p>
		<p>
			<label for="pwd">密　码：</label>
			<input type="password" name="password" id="pwd"/>
		</p>
		<p>
			<input type="submit" value="提交"/>
		</p>
	</form>
					
				</div>
				<!-- 学生注册结束-->
				<!-- 教师注册开始-->
				<div class="hide">
					<div class="tea_error_box"></div>
					<form action="regist">
		<p>
			<label for="username">教工号：</label>
			<input type="text" name="name" id="username"/>
		</p>
		<p>
			<label for="pwd">密　码：</label>
			<input type="password" name="password" id="pwd"/>
		</p>
		<p>
			<input type="submit" value="提交"/>
		</p>
	</form>
					
					
					
					
					<!-- <form action="" method="post" class="tea_login_error">
						<div id="name">
							<label>姓&nbsp;&nbsp;&nbsp;名：</label>
							<input type="text" id="tea_name_hide" name="name" value="输入姓名" nullmsg="姓名不能为空！" datatype="s6-18" />
						</div>
						<div id="username">
							<label>教工号：</label>
							<input type="text" id="tea_username_hide" name="username" value="输入教工号" nullmsg="教工号不能为空！" datatype="s6-18" errormsg="教工号范围在6~18个字符之间！" />

						</div>
						<div id="password">
							<label>设置密码：</label>
							<input type="password" id="tea_password_hide" name="password" value="输入密码" nullmsg="密码不能为空！" datatype="*6-16" errormsg="密码范围在6~18个字符之间！" />
						</div>
						<div id="address">
							<label>手机号码：</label>
							<input type="text" id="tea_address_hide" name="address" value="输入手机号" nullmsg="手机号不能为空！" datatype="s6-18" errormsg="手机号码为11号！" />
						</div>
						<div id="remember">
							<input type="checkbox" name="remember">
							<label>记住密码</label>
						</div>
						<div id="login">
							<button type="submit"><a href="login.jsp">注册</a></button>
						</div>
					</form> -->
				</div>
				<!-- 教师注册结束-->
				<!-- 商家注册开始-->
				<div class="hide">
					<div class="sec_error_box"></div>
					
					
					
					
					
					
					<form action="regist">
		<p>
			<label for="username">商 家 号：</label>
			<input type="text" name="name" id="username"/>
		</p>
		<p>
			<label for="pwd">密　码：</label>
			<input type="password" name="password" id="pwd"/>
		</p>
		<p>
			<input type="submit" value="提交"/>
		</p>
	</form>
	<!-- <form action="" method="post" class="sec_login_error">
						<div id="name">
							<label>姓&nbsp;&nbsp;&nbsp;名：</label>
							<input type="text" id="sec_name_hide" name="name" value="输入姓名" nullmsg="姓名不能为空！" datatype="s6-18" />
						</div>
						<div id="username">
							<label>商家号：</label>
							<input type="text" id="sec_username_hide" name="username" value="输入商家号" nullmsg="商家号不能为空！" datatype="s6-18" errormsg="商家号范围在6~18个字符之间！" />

						</div>
						<div id="password">
							<label>密&nbsp;&nbsp;&nbsp;码：</label>
							<input type="password" id="sec_password_hide" name="password" value="输入密码" nullmsg="密码不能为空！" datatype="*6-16" errormsg="密码范围在6~16位之间！" />
						</div>
						<div id="academy">
							<label>所在学院：</label>
							<select name="academy">
								<option value="计算机科学与技术学院">计算机科学与技术学院</option>
								<option value="能源与机械工程学院">能源与机械工程学院</option>
								<option value="电气工程学院">电气工程学院</option>
								<option value="经济与管理学院">经济与管理学院</option>
								<option value="外国语学院">外国语学院</option>
								<option value="环境与化学工程学院">环境与化学工程学院</option>
								<option value="自动化工程学院">自动化工程学院</option>
								<option value="电子与信息工程学院">电子与信息工程学院</option>
								<option value="数理学院">数理学院</option>
								<option value="国际交流学院">国际交流学院</option>
								<option value="马克思主义学院">马克思主义学院</option>
								<option value="继续教育学院">继续教育学院</option>
							</select>
						</div>
						<br />
						<div id="building-num">
							<label>所在楼号：</label>
							<br />
							<input type="radio" name="building-num" value="num-0" id="sec_building-num_hide" /><label for="sec_building-num_hide">打印店</label>
							<input type="radio" name="building-num" value="num-1" id="sec_building-num_hide" /><label for="sec_building-num_hide">1</label>
							<input type="radio" name="building-num" value="num-2" id="sec_building-num_hide" /><label for="sec_building-num_hide">2</label>
							<input type="radio" name="building-num" value="num-3" id="sec_building-num_hide" /><label for="sec_building-num_hide">3</label>
							<input type="radio" name="building-num" value="num-4" id="sec_building-num_hide" /><label for="sec_building-num_hide">4</label>
							<input type="radio" name="building-num" value="num-5" id="sec_building-num_hide" /><label for="sec_building-num_hide">5</label>
							<input type="radio" name="building-num" value="num-6" id="sec_building-num_hide" /><label for="sec_building-num_hide">6</label>
							<input type="radio" name="building-num" value="num-7" id="sec_building-num_hide" /><label for="sec_building-num_hide">7</label>
							<input type="radio" name="building-num" value="num-8" id="sec_building-num_hide" /><label for="sec_building-num_hide">8</label>
							<input type="radio" name="building-num" value="num-9" id="sec_building-num_hide" /><label for="sec_building-num_hide">9</label>
						</div>
						<div id="room">
							<label>寝室号：</label>
							<input type="text" id="sec_room_hide" name="room" value="输入寝室号" nullmsg="寝室号不能为空！" datatype="s6-18" />
						</div>

						<div id="remember">
							<input type="checkbox" name="remember">
							<label>记住密码</label>
						</div>
						<div id="login">
							<button type="submit"><a href="login.jsp">注册</a></button>
						</div>
					</form> -->
					
				</div>
				<!-- 商家注册结束-->
			</div>
		</div>
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
