<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<head>
		<title>商家页面</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta charset="utf-8" />
		<meta name="keywords" content="" />
		<script>
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
		<link href="css/bootstrap1.css" type="text/css" rel="stylesheet" media="all">
		<link href="css/style1.css" type="text/css" rel="stylesheet" media="all">
		<link href="css/fontawesome-all.min.css" rel="stylesheet">
		<link href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">
	</head>

	<body>
		<div class="sidenav text-center">
			<div class="side_top">
				<img src="images/about.jpg" alt="news image" class="img-fluid navimg">
				<h1 class="top_hd mt-2"><a href="home.jsp">My field</a></h1>
			</div>
			<!-- header -->
			<header>
				<div class="nav-top">
					<nav class="mnu mx-auto">
						<label for="drop" class="toggle">Menu</label>
						<input type="checkbox" id="drop">
						<ul class="menu">
							<li class="active">
								<a href="#home" class="scroll">商家主页</a>
							</li>
							<li class="mt-sm-3">
								<a href="#print" class="scroll">接收订单</a>
							</li>
							<li class="mt-sm-3">
								<a href="home.jsp" class="scroll">退出登录</a>
							</li>
						</ul>
					</nav>
				</div>
			</header>
			<!-- //header -->
		</div>
		<div class="main">
			<div class="banner-text-w3ls" id="home">
				<div class="container">
					<div class="mx-auto text-center">
						<a class="btn btn-primary mt-lg-5 mt-3 agile-link-bnr" href="#print" role="button">待接订单</a>
					</div>
				</div>
			</div>
			<!-- services -->
			<section id="print" class="font-weight-light">
				<div class="container tm-container-max-800">
					<div class="row">
						<div class="col-12">
							<header class="mt-5 mb-5 text-center">
								<h1 class="font-weight-light1 tm-form-title">订单</h1>							</header>
							<center>
								<form action="" method="post">
									<div class="tm-bg-black tm-form-block">
											<div class="row">
											<div class="col-xl-6 mb-4">
												<textarea class="p-3" name="description" cols="100" rows="4" placeholder="(文件列表)"></textarea>
											</div>
										</div>
									</div>
									<div>
										<!--<input class="mt-lg-5 mt-3 agile-link-bnra" href="1.html" role="button" id="btn" type="file"></input>-->
										<input class="mt-lg-5 mt-3 agile-link-bnra" role="button" id="btn" type="file"></input>
									</div>
									<div class="tm-bg-black tm-form-block">
										<p class="mt-lg-5 mt-3 agile-link-bnra">备注</p>
											<div class="row">
											<div class="col-xl-6 mb-4">
												<textarea class="p-3" name="description" cols="100" rows="4" placeholder="(选填)"></textarea>
											</div>
										</div>
									</div>
						</div>
					</div>
					<div class="text-center mt-5">
						<a class="mt-lg-5 mt-3 agile-link-bnra" href="rubbish.jsp" role="button" id="file">开始下载</a>
					</div>
					</form>
				</div>
		</div>
		</div>
		</center>
		<!-- //services -->

		</div>
		<script src="js/jquery-3.2.1.slim.min.js"></script>
		<script src="js/materialize.min.js"></script>
		<script>
			$(document).ready(function() {
				$('select').formSelect();
			});
		</script>
		<script>
			var oFlie = document.getElementById("file")
			var oBtn = document.getElementById("btn")
			//			var oRes = document.getElementById("result")
			//			var oInfo = document.getElementById("info")
			oFlie.onclick = function() {

				var fs = oBtn.files[0]
				var reader = new FileReader(fs)

				reader.onload = function() {

					var data = new FormData()
					data.append("file", fs)

					// 为给定 ID 的 user 创建请求

					$.ajax({
						type: "post",
						url: "api/test.php",
						async: true,
						data: {
							data: data
						},
						processData: false,
						contentType: false,
						success: function(res) {
							console.log(res)
						}
					});
				}
				reader.readAsDataURL(fs)
			}
		</script>
	</body>

</html>