<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%> 
<!DOCTYPE html>
<html lang="kor">
<body style="background-color: white">
	 <div id="preloader">
        <div class="preloader">
            <span></span>
            <span></span>
        </div>
    </div>

    <div id="top"></div>
    <!-- / top -->
	
	<!-- 헤더 타일 연결 -->
	<div id="header">
		<tiles:insertAttribute name="header"/>
	</div>
	
	<!-- 배너 이미지 -->
	<section class="big bg-white">
        <div class="container">
            <div class="col-md-12 bg-img box-bg-image tablet-top-30 rounded raised">
                <div class="row">
                    <div class="col-md-12 bg-img box-bg-image tablet-top-30 rounded raised" style="background-image: url(${pageContext.request.contextPath}/resources/images/vanner1.jpg); min-height:360px"><p class="mb-0"></p>
                    </div>
                    
                    
                </div><!-- / row -->
            </div><!-- box-w-image -->
        </div><!-- / container -->
    </section>
	
	<!-- 메인 카테고리 -->
    <div class="main-container" style="background-color: white">
            <section class="big bg-white">
                <div class="container">
                    <div class="row">
                        <div class="col-md-2">
							<div class="card-body text-center">
								<a href="http://www.naver.com">
									<img src="${pageContext.request.contextPath}/resources/images/free_logo.png" alt="자유게시판"
										style="height: 90px; width: 80px; padding-bottom: 20px;">
									<h6 class="card-title fw-regular mb-20">자유</h6>
								</a>
                            </div>
                        </div>
                        <div class="col-md-2">
							<div class="card-body text-center">
								<a href="http://www.naver.com">
									<img src="${pageContext.request.contextPath}/resources/images/info_logo.png" alt="정보공유게시판"
										style="height: 90px; width: 80px; padding-bottom: 20px;">
									<h6 class="card-title fw-regular mb-20">정보공유</h6>
								</a>
                            </div>
                        </div>
						<div class="col-md-2">
							<div class="card-body text-center">
								<a href="http://www.naver.com">
									<img src="${pageContext.request.contextPath}/resources/images/sale_logo.png" alt="판매게시판"
										style="height: 90px; width: 80px; padding-bottom: 20px;">
									<h6 class="card-title fw-regular mb-20">판매</h6>
								</a>
                            </div>
                        </div>
                        <div class="col-md-2">
							<div class="card-body text-center">
								<a href="http://www.naver.com">
									<img src="${pageContext.request.contextPath}/resources/images/job_logo.png" alt="구인구직게시판"
										style="height: 90px; width: 80px; padding-bottom: 20px;">
									<h6 class="card-title fw-regular mb-20">구인/구직</h6>
								</a>
                            </div>
                        </div>
                        <div class="col-md-2">
							<div class="card-body text-center">
								<a href="http://www.naver.com">
									<img src="${pageContext.request.contextPath}/resources/images/qna_logo.png" alt="문의게시판"
										style="width: 80px; padding-bottom: 10px;">
									<h6 class="card-title fw-regular mb-20">문의</h6>
								</a>
                            </div>
                        </div>
                        <div class="col-md-2">
							<div class="card-body text-center">
								<a href="http://www.naver.com">
									<img src="${pageContext.request.contextPath}/resources/images/notice_logo.png" alt="공지게시판"
										style="width: 80px; padding-bottom: 10px;">
									<h6 class="card-title fw-regular mb-20">공지</h6>
								</a>
                            </div>
                        </div>
                        <!-- / column -->
                    </div>
                    <!-- / row -->
                </div>
                <!-- / container -->
            </section>
            

            <section class="lg">
                <div class="container">
                    <div class="section-title-area text-center relative z-index-1 mb-70">
                        <h3 class="section-title">Executive Team</h3>
                        <h5 class="section-sub-title">Get in touch</h5>
                    </div><!-- / section-title-area -->
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-body text-center">
                                    <img class="mb-30 rounded w-60 raised-sm" src="assets/images/placeholder-square.jpg" alt="">
                                    <p class="mb-5 fs-10 secondary-font text-black">Manager</p>
                                    <h6 class="card-title fw-bold mb-10 text-primary">Jacob Ginnish</h6>
                                    <p class="card-text mb-30">Suspendisse in orci vitae sapien semper posuere mauris at imperdiet.</p>
                                    <p class="mb-0">
                                        <a href="#x" class="btn btn-xs btn-primary m-5 pill"><span class="fas fa-phone fa-rotate-90 mr-5"></span> <span>Call Now</span></a>
                                        <a href="#x" class="btn btn-xs btn-primary m-5 pill"><span class="fas fa-envelope mr-5"></span> <span>Send Email</span></a></p>
                                </div><!-- / card-body -->
                            </div><!-- / card -->
                        </div><!-- / column -->

                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-body text-center">
                                    <img class="mb-30 rounded w-60 raised-sm" src="assets/images/placeholder-square.jpg" alt="">
                                    <p class="mb-5 fs-10 secondary-font text-black">Designer</p>
                                    <h6 class="card-title fw-bold mb-10 text-primary">Merida Swan</h6>
                                    <p class="card-text mb-30">Suspendisse in orci vitae sapien semper posuere mauris at imperdiet.</p>
                                    <p class="mb-0">
                                        <a href="#x" class="btn btn-xs btn-primary m-5 pill"><span class="fas fa-phone fa-rotate-90 mr-5"></span> <span>Call Now</span></a>
                                        <a href="#x" class="btn btn-xs btn-primary m-5 pill"><span class="fas fa-envelope mr-5"></span> <span>Send Email</span></a></p>
                                </div><!-- / card-body -->
                            </div><!-- / card -->
                        </div><!-- / column -->

                        <div class="col-md-4">
                            <div class="card">
                                <div class="card-body text-center">
                                    <img class="mb-30 rounded w-60 raised-sm" src="assets/images/placeholder-square.jpg" alt="">
                                    <p class="mb-5 fs-10 secondary-font text-black">Developer</p>
                                    <h6 class="card-title fw-bold mb-10 text-primary">Larry Lin</h6>
                                    <p class="card-text mb-30">Suspendisse in orci vitae sapien semper posuere mauris at imperdiet.</p>
                                    <p class="mb-0">
                                        <a href="#x" class="btn btn-xs btn-primary m-5 pill"><span class="fas fa-phone fa-rotate-90 mr-5"></span> <span>Call Now</span></a>
                                        <a href="#x" class="btn btn-xs btn-primary m-5 pill"><span class="fas fa-envelope mr-5"></span> <span>Send Email</span></a></p>
                                </div><!-- / card-body -->
                            </div><!-- / card -->
                        </div><!-- / column -->
                    </div><!-- / row -->
                </div><!-- / container -->
            </section>
        </div>
        </div><!-- / container -->

        <section id="main-features" class="pt-150 pb-0 bg-img img-bottom" style="background-image: url(assets/images/placeholder.jpg)">
            <div class="container">
                <div class="section-title-area text-center mb-150">
                    <h2 class="section-title">Main Features</h2>
                    <p class="w-60 m-x-auto mb-0">Soft UI Kit is a modern Bootstrap 4 UI Kit, designed and developed with attention to detail. Includes 500+ reusable components, 50+ pre-built sections and 10 pre-built templates.</p>
                </div><!-- / section-title-area -->
                <div class="row">
                    <div class="col-md-4 tablet-top-30">
                        <div class="b-5 border-light rounded-10 raised move">
                           <a href="components.html"><img src="assets/images/placeholder.jpg" alt="components" class="rounded"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-4 tablet-top-30">
                        <div class="b-5 border-light rounded-10 raised move">
                           <a href="sections.html"><img src="assets/images/placeholder.jpg" alt="sections" class="rounded"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-4">
                        <div class="b-5 border-light rounded-10 raised move">
                           <a href="templates.html"><img src="assets/images/placeholder.jpg" alt="templates" class="rounded"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->
                </div><!-- / row -->
            </div><!-- / container -->
        </section>

        <section id="components" class="lg pb-0">
            <div class="container text-center">
                <div class="section-title-area mb-70">
                    <h3 class="section-title">COMPONENTS</h3>
                    <h5 class="section-sub-title fs-12 lh-1-5 w-30 m-x-auto">Typography, Buttons, Modals, Checkboxes, Progress-bars, Sliders, Navigations, Forms, Cards and Extras.</h5>
                </div><!-- / section-title-area -->

                <a href="components.html" target="_blank"><img src="assets/images/placeholder.jpg" alt=""></a>
            </div><!-- / container -->
        </section>

        <section id="sections" class="lg bg-light-grey">
            <div class="container-fluid">
                <div class="section-title-area text-center mb-70">
                    <h3 class="section-title">SECTIONS</h3>
                    <h5 class="section-sub-title fs-12 lh-1-5 w-20 m-x-auto">Headers, Features, Projects, Posts, Teams, Testimonials, Pricing, Products, Contacts and Footers</h5>
                </div><!-- / section-title-area -->

                <div class="row">
                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="sections.html#headers" target="_blank"><img src="assets/images/placeholder.jpg" alt="sections" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="sections.html#headers" target="_blank"><img src="assets/images/placeholder.jpg" alt="sections" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="sections.html#features" target="_blank"><img src="assets/images/placeholder.jpg" alt="sections" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="sections.html#features" target="_blank"><img src="assets/images/placeholder.jpg" alt="sections" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="sections.html#projects" target="_blank"><img src="assets/images/placeholder.jpg" alt="sections" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="sections.html#posts" target="_blank"><img src="assets/images/placeholder.jpg" alt="sections" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="sections.html#posts" target="_blank"><img src="assets/images/placeholder.jpg" alt="sections" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="sections.html#teams" target="_blank"><img src="assets/images/placeholder.jpg" alt="sections" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="sections.html#testimonials" target="_blank"><img src="assets/images/placeholder.jpg" alt="sections" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="sections.html#pricing" target="_blank"><img src="assets/images/placeholder.jpg" alt="sections" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="sections.html#products" target="_blank"><img src="assets/images/placeholder.jpg" alt="sections" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="sections.html#contacts" target="_blank"><img src="assets/images/placeholder.jpg" alt="sections" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->
                </div><!-- / row -->
                <div class="text-center mt-30">
                    <a href="sections.html" target="_blank" class="btn btn-primary"><i class="fas fa-stream mr-5"></i> View All</a>
                </div>
            </div><!-- / container-fluid -->
        </section>

        <section id="templates" class="lg bg-light">
            <div class="container-fluid">
                <div class="section-title-area text-center mb-70">
                    <h3 class="section-title">TEMPLATES</h3>
                    <h5 class="section-sub-title fs-12 lh-1-5 w-20 m-x-auto">More coming soon!</h5>
                </div><!-- / section-title-area -->

                <div class="row">
                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="templates/landing-page.html" target="_blank"><img src="assets/images/placeholder.jpg" alt="templates" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="templates/portfolio.html" target="_blank"><img src="assets/images/placeholder.jpg" alt="templates" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="templates/project.html" target="_blank"><img src="assets/images/placeholder.jpg" alt="templates" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="templates/blog.html" target="_blank"><img src="assets/images/placeholder.jpg" alt="templates" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="templates/post.html" target="_blank"><img src="assets/images/placeholder.jpg" alt="templates" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="templates/ecommerce.html" target="_blank"><img src="assets/images/placeholder.jpg" alt="templates" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="templates/product.html" target="_blank"><img src="assets/images/placeholder.jpg" alt="templates" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="templates/404.html" target="_blank"><img src="assets/images/placeholder.jpg" alt="templates" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="templates/login-register.html" target="_blank"><img src="assets/images/placeholder.jpg" alt="templates" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="templates/account.html" target="_blank"><img src="assets/images/placeholder.jpg" alt="templates" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="#x"><img src="assets/images/placeholder.jpg" alt="templates" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->

                    <div class="col-md-6 col-lg-3">
                        <div class="promo-box p-5">
                           <a href="#x"><img src="assets/images/placeholder.jpg" alt="templates" class="rounded-5"></a>
                        </div><!-- / promo-box -->
                    </div><!-- / column -->
                </div><!-- / row -->
                <div class="text-center mt-30">
                    <a href="templates.html" target="_blank" class="btn btn-primary"><i class="fas fa-images mr-5"></i> View All</a>
                </div>
            </div><!-- / container-fluid -->
        </section>

        <section id="cta" class="xl bg-img" style="background-image: url(assets/images/placeholder.jpg)">
            <div class="container text-center relative z-index-1">
                <h2 class="mb-30">Soft UI - Neumorphism Style UI Kit</h2>
                <p class="lead fs-18 mb-50 w-90 m-x-auto">Soft UI Kit is not just easy to use, but is also very easy to customize. Building a web-app, a website, changing colors and styling never has been easier. We redesigned most of the default Bootstrap components, added many custom classes, utility classes, custom elements and plugins to build up a beautifully designed, very functional and feature-rich UI Kit.</p>
                <a href="https://kingstudio.ro/contact.html" target="_blank" class="btn btn-primary m-5"><i class="fas fa-envelope-open mr-5"></i> Contact Us</a>
                <a href="https://wrapbootstrap.com/theme/soft-ui-neumorphism-style-ui-kit-WB0BTD6T1" target="_blank" class="btn btn-primary m-5"><i class="fas fa-shopping-cart mr-5"></i> Buy Now</a>
            </div><!-- / container -->
        </section>

        <section id="cta2" class="big bg-dark-shadow">
            <div class="container text-center">
                <h3 class="hidden mb-20">Suggest Feature</h3>
                <p class="w-50 m-x-auto mb-0">*We are planning to extend the functionality of the UI Kit, add more elements, templates and features, all based on feature requests, if you have ideas, please don't hesitate to suggest a new template, element or feature by contacting us <a href="https://kingstudio.ro/contact.html" target="_blank" style="text-decoration: underline;">here</a>!</p>
            </div><!-- / container -->
        </section>
    </div><!-- / main-container -->
    
    <!-- 위로 버튼 -->
    <a href="#top" class="scroll-to-top smooth-scroll" data-nav-status="toggle"><i class="fas fa-chevron-up"></i></a>
    
    <!-- 풋터 타일 연결 -->
	<div id="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
     

<!-- core JavaScript -->
<script src="assets/js/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<!-- / core JavaScript -->

<!-- preloader -->
<script src="assets/js/preloader.js"></script>
<!-- / preloader -->

<!-- smooth scroll -->
<script src="assets/js/jquery.easing.min.js"></script>
<script src="assets/js/smooth-scroll.js"></script>
<!-- / smooth scroll -->

<!-- hide nav -->
<script src="assets/js/hide-nav.js"></script>
<!-- / hide nav -->

</body>

</html>