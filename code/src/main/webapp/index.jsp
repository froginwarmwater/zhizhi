<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<title>登陆界面</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Font Awesome -->
<head>
		<title>登录</title>
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
						/*学生登录信息验证*/
						$("#stu_username_hide").focus(function() {
							var username = $(this).val();
							if(username == '输入学号') {
								$(this).val('');
							}
						});
						$("#stu_username_hide").focusout(function() {
							var username = $(this).val();
							if(username == '') {
								$(this).val('输入学号');
							}
						});
						$("#stu_password_hide").focus(function() {
							var username = $(this).val();
							if(username == '输入密码') {
								$(this).val('');
							}
						});
						$("#stu_password_hide").focusout(function() {
							var username = $(this).val();
							if(username == '') {
								$(this).val('输入密码');
							}
						});

						/*教师登录信息验证*/
						$("#tea_username_hide").focus(function() {
							var username = $(this).val();
							if(username == '输入教工号') {
								$(this).val('');
							}
						});
						$("#tea_username_hide").focusout(function() {
							var username = $(this).val();
							if(username == '') {
								$(this).val('输入教工号');
							}
						});
						$("#tea_password_hide").focus(function() {
							var username = $(this).val();
							if(username == '输入密码') {
								$(this).val('');
							}
						});
						$("#tea_password_hide").focusout(function() {
							var username = $(this).val();
							if(username == '') {
								$(this).val('输入密码');
							}
						});

						/*商家登录信息验证*/
						$("#sec_username_hide").focus(function() {
							var username = $(this).val();
							if(username == '输入商家号') {
								$(this).val('');
							}
						});
						$("#sec_username_hide").focusout(function() {
							var username = $(this).val();
							if(username == '') {
								$(this).val('输入商家号');
							}
						});
						$("#sec_password_hide").focus(function() {
							var username = $(this).val();
							if(username == '输入密码') {
								$(this).val('');
							}
						});
						$("#sec_password_hide").focusout(function() {
							var username = $(this).val();
							if(username == '') {
								$(this).val('输入密码');
							}
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
							<h1><a href="home.jsp">S U E P<span>ZHI ZHI </span> </a></h1>
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
												<a href="login.jsp">登录</a>
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
				<li class="selected">学生登录</li>
				<li>教师登录</li>
				<li>商家登录</li>
			</ul>
			<div class="tab_box">
				<!-- 学生登录开始 -->
				
						<!--<div id="username">
							<label>学&nbsp;&nbsp;&nbsp;号：</label>
							<input type="text" id="stu_username_hide" name="username" value="输入学号" nullmsg="学号不能为空！" datatype="s6-18" errormsg="学号范围在6~18个字符之间！" sucmsg="学号验证通过！" />
							<!--ajaxurl="demo/valid.jsp"-->
						<!--</div>
						<div id="password">
							<label>密&nbsp;&nbsp;&nbsp;码：</label>
							<input type="password" id="stu_password_hide" name="password" value="输入密码" nullmsg="密码不能为空！" datatype="*6-16" errormsg="密码范围在6~16位之间！" sucmsg="密码验证通过！" />
						</div>
						<div id="remember">
							<input type="checkbox" name="remember">
							<label>记住密码</label>
						</div>
						<div id="login">
							<button type="submit"><a href="index1.html">登录</a></button>
						</div>		-->
						
						<div>
					<div class="stu_error_box"></div>
					<form action="login">
						
						<p>
			<label for="username">学&nbsp;&nbsp;&nbsp; 号：</label>
			<input type="text" name="name" id="username"/>
		</p>
		<p>
			<label for="pwd">密　码：</label>
			<input type="password" name="password" id="pwd"/>
		</p>
		<p>
			<input type="submit" value="登录"/>
		<!-- 	<a href="/toRegister"><input type="button" value="注册"/></a> -->
			<a href="register.jsp"><input type="button" value="注册"/></a>
		</p>
					</form>
				</div>
				<!-- 学生登录结束-->
				<!-- 教师登录开始-->
				<div class="hide">
					<div class="tea_error_box"></div>
					<form action="login">
						
						<p>
			<label for="username">教&nbsp;工&nbsp; 号：</label>
			<input type="text" name="name" id="username"/>
		</p>
		<p>
			<label for="pwd">密　码：</label>
			<input type="password" name="password" id="pwd"/>
		</p>
		<p>
			<input type="submit" value="登录"/>
		<!-- 	<a href="/toRegister"><input type="button" value="注册"/></a> -->
			<a href="register.jsp"><input type="button" value="注册"/></a>
		</p>
					</form>
				</div>
				<!-- 教师登录结束-->
				<!-- 商家登录开始-->
				<div class="hide">
					<div class="sec_error_box"></div>
					<div action="" method="post" class="sec_login_error">
						<div id="username">
							<label>商家号：</label>
							<input type="text" id="sec_username_hide" name="username" value="输入商家号" nullmsg="商家号不能为空！" datatype="s6-18" errormsg="教务号范围在6~18个字符之间！" sucmsg="教务号验证通过！" />
							<!--ajaxurl="demo/valid.jsp"-->
						</div>
						<div id="password">
							<label>密&nbsp;&nbsp;&nbsp;码：</label>
							<input type="password" id="sec_password_hide" name="password" value="输入密码" nullmsg="密码不能为空！" datatype="*6-16" errormsg="密码范围在6~16位之间！" sucmsg="密码验证通过！" />
						</div>
						<div id="remember">
							<input type="checkbox" name="remember">
							<label>记住密码</label>
						</div>
						
					</div><a href="upload.jsp">
					<div id="login">
							<button type="submit">登录</button>
						</div></a>
				</div>
				<!-- 商家登录结束-->
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
