<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE>
<html>
	<head>
		<title>创建新客户帐户</title>
		<link href="${pageContext.request.contextPath}/client/css/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts---->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<!----//webfonts---->
		<script src="${pageContext.request.contextPath}/client/js/jquery.min.js"></script>
		<!----start-alert-scroller---->
		<script type="text/javascript" src="${pageContext.request.contextPath}/client/js/jquery.easy-ticker.js"></script>
		<script type="text/javascript">
		$(document).ready(function(){
			$('#demo').hide();
			$('.vticker').easyTicker();
		});
		</script>
		<!----start-alert-scroller---->
		<!-- start menu -->
		<link href="${pageContext.request.contextPath}/client/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/client/js/megamenu.js"></script>
		<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
		<script src="${pageContext.request.contextPath}/client/js/menu_jquery.js"></script>
		<!-- //End menu -->
		<!---move-top-top---->
		<script type="text/javascript" src="${pageContext.request.contextPath}/client/js/move-top.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/client/js/easing.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/client/js/form.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
		</script>
		<!---//move-top-top---->
		
		<!-- ************************* CSS Files ************************* -->
	    <!-- Vendor CSS -->
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/client/shop/css/vendor.css">
	    <!-- style css -->
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/client/shop/css/main.css">
	</head>
	<body>
		<!-- Header -->
		<jsp:include page = "head.jsp"></jsp:include>
		
		
		<!-- Breadcrumb area Start -->
        <section class="page-title-area bg-color" data-bg-color="#f4f4f4">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h1 class="page-title">注册</h1>
                        <ul class="breadcrumb">
                            <li><a href="index.html">Excellent</a></li>
                            <li class="current"><span>注册</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb area End -->
        
		<!--- start-content---->
		<div class="main-content-wrapper">
            <div class="page-content-inner ptb--80 ptb-md--60 pb-sm--55">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
		<div class="content login-box">
				<div class="wrap">
					<div class="register-grids">
						<form action="${pageContext.request.contextPath}/RegisterController" method="post" onsubmit="return checkForm();"> 
								<div class="register-top-grid">
										<h3>登录信息</h3>
										<div>
											<span>电子邮箱<label>*</label></span>
											<input type="text"  id="email" name="EMAIL" onkeyup="checkEmail();"/>
											<td colspan="2"><span id="emailMsg"></span></td>
										</div>
										<div>
											<span>密码<label>*</label></span>
											<input type="password"  id="password" name="PSWD" onkeyup="checkPassword();"/>
											<td colspan="2"><span id="passwordMsg"></span></td>
										</div>
										<div>
											<span>确认密码<label>*</label></span>
											<input type="password"  id="repassword" name="rePSWD" onkeyup="checkConfirm();"/>
											<td colspan="2"><span id="confirmMsg"></span></td>
										</div>
										<div>
											<span>验证码<label>*</label></span>
											<input type="text"/>
											<img src="${pageContext.request.contextPath}/imageCode" width="120" height="30" class="textinput" style="height: 30px;" id="imgCode" />&nbsp;&nbsp;
                                            <a href="javascript:void(0);" onclick="changeImage()">看不清换一张</a>
										</div>
										<div class="clear"> </div>
								</div>
								<div class="clear"> </div>
								<div class="register-bottom-grid">
										<h3>用户信息</h3>
										<div>
											<span>姓名<label>*</label></span>
											<input type="text" id="username" name="CNAME" onkeyup="checkUsername();"/>
											<td colspan="2"><span id="usernameMsg"></span></td>
										</div>
										<div>
											<span>称谓<label>*</label></span>
											<select name="GENDER">
												<option  value="" disabled="" selected="selected">- 请选择 -</option>
												<option  value="M">先生</option>
												<option  value="F">女士</option>
											</select>
										</div>
										<div>
											<span>生日<label>*</label></span>
											<input id="bday" type="date" name="BDAY"/>
										</div>
										<div>
											<span>电话<label>*</label></span>
											<input type="text" name="PN"/>
										</div>
								</div>
								<div class="clear"> </div>
								<div class="register-bottom-grid">
										<h3>配送信息</h3>
										<div>
											<span>省份<label>*</label></span>
											<input type="text" name="PROVINCE" value="">
										</div>
										<div>
											<span>城市<label>*</label></span>
											<input type="text" name="CITY" value="">
										</div>
										<div>
											<span>区县<label>*</label></span>
											<input type="text" name="DISTRICT" value="">
										</div>
										<div>
											<span>详细地址<label>*</label></span>
											<input type="text" name="ADDR"/>
										</div>
								</div>
								<div class="clear"> </div>
								<input type="submit" value="注册" />
						</form>
					</div>
				</div>
		</div>
		        		
		        		</div>
		        	</div>
                </div>
            </div>
        </div>
		<!--- //End-content----
		
		<!-- Footer -->
		<jsp:include page = "foot.jsp"></jsp:include>
		
		<!---//End-wrap---->
		<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>

		<script type="text/javascript">
			function changeImage(){
				//改变验证码图片中的文字
				document.getElementById("imgCode").src = "${pageContext.request.contextPath}/imageCode?time=" + new Date().getTime();
			}
		</script>
    
<!-- ************************* JS Files ************************* -->

<!-- jQuery JS -->
 <script src="${pageContext.request.contextPath}/client/shop/js/vendor.js"></script>

<!-- Main JS -->
<script src="${pageContext.request.contextPath}/client/shop/js/main.js"></script>

</body>
</html>

