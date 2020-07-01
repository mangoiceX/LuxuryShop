<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>Editable Tables | Okler Themes | Porto-Admin</title>
		<meta name="keywords" content="HTML5 Admin Template" />
		<meta name="description" content="Porto Admin - Responsive HTML5 Template">
		<meta name="author" content="okler.net">

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<!-- Web Fonts  -->
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/index/vendor/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/index/vendor/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/index/vendor/magnific-popup/magnific-popup.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/index/vendor/bootstrap-datepicker/css/datepicker3.css" />

		<!-- Specific Page Vendor CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/index/vendor/select2/select2.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/index/vendor/jquery-datatables-bs3/assets/css/datatables.css" />

		<!-- Theme CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/index/stylesheets/theme.css" />

		<!-- Skin CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/index/stylesheets/skins/default.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/index/stylesheets/theme-custom.css">

		<!-- Head Libs -->
		<script src="${pageContext.request.contextPath}/admin/index/vendor/modernizr/modernizr.js"></script>
	</head>
	<body>
		<section class="body">

			<!-- start: header -->
			<jsp:include page = "header.jsp"></jsp:include>
			<!-- end: header -->

			<div class="inner-wrapper">
				<!-- start: sidebar -->
				<jsp:include page = "sidebar.jsp"></jsp:include>
				<!-- end: sidebar -->

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>订单详情</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="index.jsp">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>订单</span></li>
								<li><span>查看详情</span></li>
							</ol>
					
							<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
						</div>
					</header>

					<!-- start: page -->

					<section class="panel">
						<div class="panel-body">
							<div class="invoice">
								<header class="clearfix">
									<div class="row">
										<div class="col-sm-6 mt-md">
											<h2 class="h2 mt-none mb-sm text-dark text-bold">订单编号</h2>
											<h4 class="h4 m-none text-dark text-bold">xxxxxxx具体编号</h4>
										</div>
										<div class="col-sm-6 text-right mt-md mb-md">
											<div class="ib mr-xlg">
												<h2>（未发货/已发货）</h2>
											</div>
											<div class="ib">
												<img src="${pageContext.request.contextPath}/admin/index/images/invoice-logo.png" alt="OKLER Themes" />
											</div>
										</div>
									</div>
								</header>
								<div class="bill-info">
									<div class="row">
										<div class="col-md-6">
											<div class="bill-to">
												<p class="h5 mb-xs text-dark text-semibold">收件人信息</p>
												<address>
												           收件人姓名：
												    <br/>
													收件人手机号: +61 3 8376 6284
												    <br/>
													收件省份：
													<br/>
													收件城市：
													<br/>
													收件区县：
													<br/>
													详细地址：
													<br/>
													订单备注：
												</address>
											</div>
										</div>
										<div class="col-md-6">
											<div class="bill-data text-right">
												<p class="mb-none">
													<span class="text-dark">下单日期:</span>
													<span class="value">05/20/2014</span>
												</p>
											</div>
										</div>
									</div>
								</div>
							
								<div class="table-responsive">
									<table class="table invoice-items">
										<thead>
											<tr class="h4 text-dark">
												<th id="cell-id"     class="text-semibold">商品ID</th>
												<th id="cell-item"   class="text-semibold">商品名称</th>
												<th id="cell-desc"   class="text-semibold">商品库存</th>
												<th id="cell-price"  class="text-center text-semibold">单价</th>
												<th id="cell-qty"    class="text-center text-semibold">数量</th>
												<th id="cell-total"  class="text-center text-semibold">总价</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>123456商品ID</td>
												<td class="text-semibold text-dark">这是一件商品123141</td>
												<td>88</td>
												<td class="text-center">￥14.00</td>
												<td class="text-center">2</td>
												<td class="text-center">￥28.00</td>
											</tr>
											<tr>
												<td>654321商品ID</td>
												<td class="text-semibold text-dark">戒指xxx</td>
												<td>0</td>
												<td class="text-center">￥17.00</td>
												<td class="text-center">1</td>
												<td class="text-center">￥17.00</td>
											</tr>
										</tbody>
									</table>
								</div>
							
								<div class="invoice-summary">
									<div class="row">
										<div class="col-sm-4 col-sm-offset-8">
											<table class="table h5 text-dark">
												<tbody>
													<tr class="b-top-none">
														<td colspan="2">小计</td>
														<td class="text-left">￥73.00</td>
													</tr>
													<tr>
														<td colspan="2">邮费</td>
														<td class="text-left">￥0.00</td>
													</tr>
													<tr class="h4">
														<td colspan="2">总额</td>
														<td class="text-left">￥73.00</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>

							<div class="text-right mr-lg">
								<a href="index.jsp" class="btn btn-default">返回主页</a>
							</div>
						</div>
					</section>

					<!-- end: page -->
				</section>
			</div>
			<<jsp:include page = "calendar.jsp"></jsp:include>
		</section>

		<!-- Vendor -->
		<script src="${pageContext.request.contextPath}/admin/index/vendor/jquery/jquery.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/magnific-popup/magnific-popup.js"></script>
		<script src="${pageContext.request.contextPath}/admin/index/vendor/jquery-placeholder/jquery.placeholder.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="${pageContext.request.contextPath}/admin/index/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="${pageContext.request.contextPath}/admin/index/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="${pageContext.request.contextPath}/admin/index/javascripts/theme.init.js"></script>

	</body>
</html>