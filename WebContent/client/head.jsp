<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Header Start -->
<header class="header header-default site-header">
    <div class="header__outer">
        <div class="header__inner header--fixed">
            <div class="container">
                <div class="header__main">
                    <div class="header__col header__left">
                        <a href="${pageContext.request.contextPath}/index" class="logo">
                            <figure class="logo--normal">
                                <img src="${pageContext.request.contextPath}/client/shop/img/logo/logo.png" alt="Logo">
                            </figure>
                            <figure class="logo--transparency">
                                <img src="${pageContext.request.contextPath}/client/shop/img/logo/logo.png" alt="Logo">
                            </figure>
                        </a>
                    </div>
                    <div class="header__col header__center">
                        <nav class="main-navigation d-none d-lg-block">
                            <ul class="mainmenu">
                                <li class="mainmenu__item menu-item-has-children position-relative">
                                    <a href="${pageContext.request.contextPath}/showProductByPage?category=皮具" class="mainmenu__link">皮具系列</a>
                                </li>
                                <li class="mainmenu__item menu-item-has-children position-static">
                                    <a href="${pageContext.request.contextPath}/showProductByPage?category=香氛" class="mainmenu__link">香氛</a>
                                </li>
                                <li class="mainmenu__item menu-item-has-children position-relative">
                                    <a href="${pageContext.request.contextPath}/showProductByPage?category=服饰" class="mainmenu__link">时尚服饰</a>
                                </li>
                                <li class="mainmenu__item menu-item-has-children position-relative">
                                    <a href="${pageContext.request.contextPath}/showProductByPage?category=配饰" class="mainmenu__link">配饰系列</a>
                                </li>
                                <li class="mainmenu__item">
                                    <a href="${pageContext.request.contextPath}/client/notice.jsp" class="mainmenu__link">公告</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class="header__col header__right">
                        <div class="toolbar-item d-none d-lg-block">
	                        <div class="search_list">
	                            <a href="javascript:void(0)">
	                            	<img src="${pageContext.request.contextPath}/client/shop/img/icons/search.png" alt="搜索" width="30px" height="30px">
								</a>
	                            <div class="dropdown_search">
	                                <form action="${pageContext.request.contextPath}/MenuSearchController">
	                                    <input placeholder="在Excellent上搜索..." type="text" name="textfield">
	                                     <button type="submit">
	                                     	<img src="${pageContext.request.contextPath}/client/shop/img/icons/search.png" alt="搜索" width="25px" height="25px">
	                                     </button>
	                                </form>
	                            </div>
	                        </div>
                        </div>
                        <div class="toolbar-item d-none d-lg-block">
                            <a href="${pageContext.request.contextPath}/FindOrderByUserController" class="toolbar-btn">
                           		<img src="${pageContext.request.contextPath}/client/shop/img/icons/user.png" alt="用户" width="24px" height="24px">
                            </a>
                        </div>
                        <div class="toolbar-item d-block d-lg-none">
                            <a href="#offcanvasnav" class="hamburger-icon js-toolbar menu-btn">
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </a>
                        </div>
                        <div class="toolbar-item">
                            <a href="${pageContext.request.contextPath}/FindFavorByConsumer" class="toolbar-btn">
                                <i class="flaticon-heart"></i>
                            </a>
                        </div>
                        <div class="toolbar-item mini-cart-btn">
                            <a href="${pageContext.request.contextPath}/client/cart.jsp" class="toolbar-btn">
                                <span class="mini-cart-btn__icon">
                                    <i class="flaticon-bag"></i>
                                </span>
                                <sup class="mini-cart-btn__count">
                                    ${cart.size()}
                                </sup>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-sticky-height"></div>
    </div>
</header>
<!-- Header End -->


<!-- Mini Cart Start -->
<aside class="mini-cart" id="miniCart">
    <div class="mini-cart-wrapper">
        <div class="mini-cart__close">
            <a href="#" class="btn-close"><i class="flaticon-cross"></i></a>
        </div>
        <div class="mini-cart-inner">
            <h3 class="mini-cart__heading mb--45">购物车</h3>
            <div class="mini-cart__content">
                <ul class="mini-cart__list">
                    <li class="mini-cart__product">
                        <a href="#" class="mini-cart__product-remove">
                            <i class="flaticon-cross"></i>
                        </a>
                        <div class="mini-cart__product-image">
                            <img src="${pageContext.request.contextPath}/client/shop/img/products/product-11-90x90.jpg" alt="products">
                        </div>
                        <div class="mini-cart__product-content">
                            <a class="mini-cart__product-title" href="product-details.html">Lexbaro Begadi</a>
                            <span class="mini-cart__product-quantity">1 x $49.00</span>
                        </div>
                    </li>
                    <li class="mini-cart__product">
                        <a href="#" class="mini-cart__product-remove">
                            <i class="flaticon-cross"></i>
                        </a>
                        <div class="mini-cart__product-image">
                            <img src="${pageContext.request.contextPath}/client/shop/img/products/product-12-90x90.jpg" alt="products">
                        </div>
                        <div class="mini-cart__product-content">
                            <a class="mini-cart__product-title" href="product-details.html">Lexbaro Begadi</a>
                            <span class="mini-cart__product-quantity">1 x $49.00</span>
                        </div>
                    </li>
                    <li class="mini-cart__product">
                        <a href="#" class="mini-cart__product-remove">
                            <i class="flaticon-cross"></i>
                        </a>
                        <div class="mini-cart__product-image">
                            <img src="${pageContext.request.contextPath}/client/shop/img/products/product-13-90x90.jpg" alt="products">
                        </div>
                        <div class="mini-cart__product-content">
                            <a class="mini-cart__product-title" href="product-details.html">Lexbaro Begadi</a>
                            <span class="mini-cart__product-quantity">1 x $49.00</span>
                        </div>
                    </li>
                </ul>
                <div class="mini-cart__total">
                    <span>总计</span>
                    <span class="ammount">$98.00</span>
                </div>
                <div class="mini-cart__buttons">
                    <a href="cart.jsp" class="btn btn-fullwidth btn-bg-primary mb--20">查看购物车</a>
                    <a href="checkout.jsp" class="btn btn-fullwidth btn-bg-primary">确认购买</a>
                </div>
            </div>
        </div>
    </div>
</aside>
<!-- Mini Cart End -->

<!-- Qicuk View Modal Start -->
<div class="modal fade product-modal" id="productModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"><i class="flaticon-cross"></i></span>
                </button>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="element-carousel slick-vertical-center" data-slick-options='{
                            "slidesToShow": 1,
                            "slidesToScroll": 1,
                            "arrows": true,
                            "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "fa fa-angle-double-left" },
                            "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "fa fa-angle-double-right" }
                        }'>
                            <div class="item">
                                <figure class="product-gallery__image">
                                    <img src="${pageContext.request.contextPath}/client/shop/img/products/product-03-270x300.jpg" alt="Product">
                                    <span class="product-badge sale">图片展示</span>
                                </figure>
                            </div>
                            <div class="item">
                                <figure class="product-gallery__image">
                                    <img src="${pageContext.request.contextPath}/client/shop/img/products/product-04-270x300.jpg" alt="Product">
                                    <span class="product-badge sale">图片展示</span>
                                </figure>
                            </div>
                            <div class="item">
                                <figure class="product-gallery__image">
                                    <img src="${pageContext.request.contextPath}/client/shop/img/products/product-05-270x300.jpg" alt="Product">
                                    <span class="product-badge sale">图片展示</span>
                                </figure>
                            </div>
                            <div class="item">
                                <figure class="product-gallery__image">
                                    <img src="${pageContext.request.contextPath}/client/shop/img/products/product-06-270x300.jpg" alt="Product">
                                    <span class="product-badge sale">图片展示</span>
                                </figure>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="modal-box product-summary">
                            <div class="product-navigation text-right mb--20">
                                <a href="#" class="prev"><i class="fa fa-angle-double-left"></i></a>
                                <a href="#" class="next"><i class="fa fa-angle-double-right"></i></a>
                            </div>
                            <h3 class="product-title mb--20">商品DFDJSKH</h3>
                            <p class="product-short-description mb--20">商品描述商品描述商品描述商品描述商品描述商品描述商品描述商品描述</p>
                            <div class="product-price-wrapper mb--25">
                                <span class="money">￥200.00</span>
                                <span class="price-separator">-</span>
                                <span class="money">￥400.00</span>
                            </div>
                            <div
                                class="product-action d-flex flex-sm-row align-items-sm-center flex-column align-items-start mb--30">
                                <div
                                    class="quantity-wrapper d-flex align-items-center mr--30 mr-xs--0 mb-xs--30">
                                    <label class="quantity-label" for="qty">数量:</label>
                                    <div class="quantity">
                                        <input type="number" class="quantity-input" name="qty" id="qty"
                                            value="1" min="1">
                                    </div>
                                </div>
                                <button type="button" class="btn btn-shape-square btn-size-sm"
                                    onclick="window.location.href='cart.html'">加入购物车</button>
                            </div>
                            <div class="product-footer-meta">
                                <p><span>分类:</span>
                                    <a href="shop.html">类型A</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Qicuk View Modal End -->

<!-- search box -->
<script src="${pageContext.request.contextPath}/client/head/js/functions.js"></script>