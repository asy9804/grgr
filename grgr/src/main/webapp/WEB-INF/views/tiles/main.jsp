<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%> 
<!DOCTYPE html>
<html lang="kor">
<body>
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

    <div class="main-container">
        <div id="features" class="container p-y-150">
            <div class="row">
                <div class="col-md-6 col-lg-4">
                    <div class="promo-box text-center tablet-lg-top-30 rounded-10 blur d-block">
                        <i class="fas fa-expand-alt promo-icon d-block mb-25 text-primary"></i>
                        <h6 class="box-title mb-15">Responsive</h6>
                        <p class="box-description lead mb-0">Looks great on all screen-sizes.</p>
                    </div><!-- / promo-box -->
                </div><!-- / column -->

                <div class="col-md-6 col-lg-4">
                    <div class="promo-box text-center tablet-lg-top-30 rounded-10 blur d-block">
                        <i class="fas fa-globe promo-icon d-block mb-25 text-primary"></i>
                        <h6 class="box-title mb-15">Cross Browser</h6>
                        <p class="box-description lead mb-0">Works on all modern web-browsers.</p>
                    </div><!-- / promo-box -->
                </div><!-- / column -->

                <div class="col-md-6 col-lg-4">
                    <div class="promo-box text-center rounded-10 blur d-block">
                        <i class="fas fa-file-code promo-icon d-block mb-25 text-primary"></i>
                        <h6 class="box-title mb-15">Valid HTML</h6>
                        <p class="box-description lead mb-0">100% valid HTML code.</p>
                    </div><!-- / promo-box -->
                </div><!-- / column -->

                <div class="col-md-6 col-lg-4">
                    <div class="promo-box text-center mb-0 tablet-lg-top-30 rounded-10 blur d-block">
                        <i class="fas fa-pencil-ruler promo-icon d-block mb-25 text-primary"></i>
                        <h6 class="box-title mb-15">Easy to Customize</h6>
                        <p class="box-description lead mb-0">Fast and easy to customize any element.</p>
                    </div><!-- / promo-box -->
                </div><!-- / column -->

                <div class="col-md-6 col-lg-4">
                    <div class="promo-box text-center mb-0 tablet-lg-top-30 rounded-10 blur d-block">
                        <i class="fab fa-sass promo-icon d-block mb-25 text-primary"></i>
                        <h6 class="box-title mb-15">Sass Files</h6>
                        <p class="box-description lead mb-0">Sass files are included in theme.</p>
                    </div><!-- / promo-box -->
                </div><!-- / column -->

                <div class="col-md-6 col-lg-4">
                    <div class="promo-box text-center mb-0 rounded-10 blur d-block">
                        <i class="fas fa-life-ring promo-icon d-block mb-25 text-primary"></i>
                        <h6 class="box-title mb-15">24/7 Support</h6>
                        <p class="box-description lead mb-0">Fast and friendly Support.</p>
                    </div><!-- / promo-box -->
                </div><!-- / column -->
            </div><!-- / row -->
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