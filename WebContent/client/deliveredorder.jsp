<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicons -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/client/shop/img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/client/shop/img/icon.png">

    <!-- ************************* CSS Files ************************* -->

    <!-- Vendor CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/client/shop/css/vendor.css">

    <!-- style css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/client/shop/css/main.css">
</head>

<body> 

    <!-- Preloader Start -->
    <div class="ft-preloader active">
        <div class="ft-preloader-inner h-100 d-flex align-items-center justify-content-center">
            <div class="ft-child ft-bounce1"></div>
            <div class="ft-child ft-bounce2"></div>
            <div class="ft-child ft-bounce3"></div>
        </div>
    </div>
    <!-- Preloader End -->

    



    <!-- Main Wrapper Start -->
    <div class="wrapper">
        <!-- Header Start -->
        <jsp:include page = "head.jsp"></jsp:include>
        <!-- Header End -->

        <!-- Breadcrumb area Start -->
        <section class="page-title-area bg-color" data-bg-color="#f4f4f4">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h1 class="page-title">Track Order</h1>
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li class="current"><span>Track Order</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb area End -->
        <div class="cart-totals">
            <h5 class="font-size-14 font-bold mb--15">订单信息</h5>
            <div class="cart-calculator">
                <div class="cart-calculator__item">
                    <div class="cart-calculator__item--head">
                        <span>收货地址</span>
                    </div>
                    <div class="cart-calculator__item--value">
                        <span>xxxxxxx</span>
                    </div>
                </div>
                <div class="cart-calculator__item">
                    <div class="cart-calculator__item--head">
                        <span>订单编号</span>
                    </div>
                    <div class="cart-calculator__item--value">
                        <span>xxxxxxx</span>                
                    </div>
                </div>
                <div class="cart-calculator__item">
                    <div class="cart-calculator__item--head">
                        <span>商家</span>
                    </div>
                    <div class="cart-calculator__item--value">
                        <span>xxxxxxx</span>                
                    </div>
                </div>
                <div class="cart-calculator__item">
                    <div class="cart-calculator__item--head">
                        <span>买家留言</span>
                    </div>
                    <div class="cart-calculator__item--value">
                        <span>xxxxxxx</span>                
                    </div>
                </div>
                <div class="cart-calculator__item order-total">
                    <div class="cart-calculator__item--head">
                        <span>订单状态</span>
                    </div>
                    <div class="cart-calculator__item--value">
                        <span class="product-price-wrapper">
                            <span class="money">已发货</span>
                        </span>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Main Content Wrapper Start -->
        <div class="main-content-wrapper">
            <div class="page-content-inner ptb--80 pt-md--40 pb-md--60">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 mb-md--50">
                            <form class="cart-form" action="#">
                                <div class="row no-gutters">
                                    <div class="col-12">
                                        <div class="table-content table-responsive">
                                            <table class="table text-center">
                                                <thead>
                                                    <tr>
                                                        <th>&nbsp;</th>
                                                        <th class="text-left">商品</th>
                                                        <th>价格</th>
                                                        <th>数量</th>
                                                        <th>总计</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>                                           
                                                        <td class="product-thumbnail text-left">
                                                            <img src="${pageContext.request.contextPath}/client/shop/img/products/product-11-70x88.jpg" alt="Product Thumnail">
                                                        </td>
                                                        <td class="product-name text-left wide-column">
                                                            <h3>
                                                                <a href="product-details.html">这是一个商品</a>
                                                            </h3>
                                                        </td>
                                                        <td class="product-price">
                                                            <span class="product-price-wrapper">
                                                                <span class="money">￥49.00</span>
                                                            </span>
                                                        </td>
                                                        <td class="product-price">
                                                            <div class="money">
                                                                <span>1</span>
                                                            </div>
                                                        </td>
                                                        <td class="product-total-price">
                                                            <span class="product-price-wrapper">
                                                                <span class="money">￥49.00</span>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="product-thumbnail text-left">
                                                            <img src="${pageContext.request.contextPath}/client/shop/img/products/product-12-70x88.jpg" alt="Product Thumnail">
                                                        </td>
                                                        <td class="product-name text-left wide-column">
                                                            <h3>
                                                                <a href="product-details.html">商品2222</a>
                                                            </h3>
                                                        </td>
                                                        <td class="product-price">
                                                            <span class="product-price-wrapper">
                                                                <span class="money">$49.00</span>
                                                            </span>
                                                        </td>
                                                        <td class="product-price">
                                                            <div class="money">
                                                                <span>1</span>
                                                            </div>
                                                        </td>
                                                        <td class="product-total-price">
                                                            <span class="product-price-wrapper">
                                                                <span class="money">￥49.00</span>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="product-thumbnail text-left">
                                                            <img src="${pageContext.request.contextPath}/client/shop/img/products/product-13-70x88.jpg" alt="Product Thumnail">
                                                        </td>
                                                        <td class="product-name text-left wide-column">
                                                            <h3>
                                                                <a href="product-details.html">商品23333</a>
                                                            </h3>
                                                        </td>
                                                        <td class="product-price">
                                                            <span class="product-price-wrapper">
                                                                <span class="money">￥49.00</span>
                                                            </span>
                                                        </td>
                                                        <td class="product-price">
                                                            <div class="money">
                                                                <span>1</span>
                                                            </div>
                                                        </td>
                                                        <td class="product-total-price">
                                                            <span class="product-price-wrapper">
                                                                <span class="money">￥49.00</span>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>  
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-lg-4">
                            <div class="cart-collaterals">
                                <div class="cart-totals">
                                    <h5 class="font-size-14 font-bold mb--15">订单总览</h5>
                                    <div class="cart-calculator">
                                        <div class="cart-calculator__item">
                                            <div class="cart-calculator__item--head">
                                                <span>小计</span>
                                            </div>
                                            <div class="cart-calculator__item--value">
                                                <span>￥196.00</span>
                                            </div>
                                        </div>
                                        <div class="cart-calculator__item">
                                            <div class="cart-calculator__item--head">
                                                <span>运费</span>
                                            </div>
                                            <div class="cart-calculator__item--value">
                                                <span>￥20.00</span>                
                                            </div>
                                        </div>
                                        <div class="cart-calculator__item order-total">
                                            <div class="cart-calculator__item--head">
                                                <span>总额</span>
                                            </div>
                                            <div class="cart-calculator__item--value">
                                                <span class="product-price-wrapper">
                                                    <span class="money">￥226.00</span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <a href="waitcommentorder.jsp" class="btn btn-size-md btn-shape-square btn-fullwidth">
                                    确认收货
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Main Content Wrapper Start -->
        
        
        
        <!-- Footer Start-->
        <jsp:include page = "foot.jsp"></jsp:include>
        <!-- Footer End-->

        <!-- OffCanvas Menu Start -->

        <!-- OffCanvas Menu End -->

        <!-- Mini Cart Start -->

        <!-- Mini Cart End -->

        <!-- Qicuk View Modal Start -->

        <!-- Qicuk View Modal End -->

        <!-- Global Overlay Start -->
        <div class="global-overlay"></div>
        <!-- Global Overlay End -->

        <!-- Scroll To Top Start -->
        <a class="scroll-to-top" href=""><i class="fa fa-angle-double-up"></i></a>
        <!-- Scroll To Top End -->
    </div>
    <!-- Main Wrapper End -->

    <!-- ************************* JS Files ************************* -->

    <!-- jQuery JS -->
    <script src="${pageContext.request.contextPath}/client/shop/js/vendor.js"></script>

    <!-- Main JS -->
    <script src="${pageContext.request.contextPath}/client/shop/js/main.js"></script>
</body>

</html>