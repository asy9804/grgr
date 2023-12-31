<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html lang="en"><head>
    <!-- Meta -->
    <meta charset="utf-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Soft UI - Neumorphism Style UI Kit">
    <meta name="author" content="kingstudio.ro">
    <!-- Favicon -->
    <link rel="icon" href="assets/images/favicon.png">
    <!-- Site Title -->
    <title>Soft UI - Neumorphism Style UI Kit</title>
    <!-- Bootstrap 4 core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Styles -->
    <link href="assets/css/animate.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;600;800&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;600;800&amp;display=swap" rel="stylesheet">
    <link href="assets/css/fontawesome-all.min.css" rel="stylesheet" type="text/css">
</head>

<body style="overflow: visible;">

    <div id="preloader" style="display: none;">
        <div class="preloader">
            <span></span>
            <span></span>
        </div>
    </div>

    <div id="top">
    </div><!-- / top -->

    <nav class="navbar navbar-expand-lg navbar-light has-sticky-logo main-nav fixed-top nav-scroll">
        <div class="sticky-nav-activate fixed-top nav-scroll"></div>
        <div class="container">
            <a class="navbar-brand" href="index.html"><img src="assets/images/logo.png" alt=""></a>
            <a class="navbar-brand sticky-logo" href="index.html"><img src="assets/images/logo.png" alt=""></a>
            <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-toggle" aria-controls="navbar-toggle" aria-expanded="false" aria-label="Toggle navigation">
                <span class="icon-bar top-bar"></span>
                <span class="icon-bar middle-bar"></span>
                <span class="icon-bar bottom-bar"></span>
                <span class="sr-only">Toggle navigation</span>
            </button><!-- / navbar-toggler -->

            <div class="collapse navbar-collapse" id="navbar-toggle">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#x" id="dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-archive mr-5 fs-14 va-middle"></i> <span class="va-middle">Components</span></a>
                        <div class="dropdown-menu" aria-labelledby="dropdown">
                            <a class="dropdown-item" href="components.html#basic"><i class="fas fa-box-open mr-5"></i> <span>Basic Components</span></a>
                            <a class="dropdown-item" href="components.html#navigation"><i class="fas fa-bars mr-5"></i> <span>Navigation</span></a>
                            <a class="dropdown-item" href="components.html#forms"><i class="fas fa-file-alt mr-5"></i> <span>Forms</span></a>
                            <a class="dropdown-item" href="components.html#cards"><i class="far fa-square mr-5"></i> <span>Cards</span></a>
                            <a class="dropdown-item" href="components.html#extras"><i class="fas fa-heart mr-5"></i> <span>Extras</span></a>
                        </div><!-- / dropdown-menu -->
                    </li><!-- / dropdown -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#x" id="dropdown-sections" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-stream mr-5 fs-14 va-middle"></i> <span class="va-middle">Sections</span></a>
                        <div class="dropdown-menu mega-menu two-columns" aria-labelledby="dropdown-sections">
                            <div class="row">
                                <div class="col-lg-6 sub-menu">
                                    <a class="dropdown-item" href="sections.html#headers"><i class="fas fa-window-maximize mr-5"></i> <span>Headers</span></a>
                                    <a class="dropdown-item" href="sections.html#features"><i class="fas fa-star mr-5"></i> <span>Features</span></a>
                                    <a class="dropdown-item" href="sections.html#projects"><i class="fas fa-briefcase mr-5"></i> <span>Projects</span></a>
                                    <a class="dropdown-item" href="sections.html#posts"><i class="fas fa-list-alt mr-5"></i> <span>Posts</span></a>
                                    <a class="dropdown-item" href="sections.html#teams"><i class="fas fa-users mr-5"></i> <span>Teams</span></a>
                                </div><!-- / sub-menu -->
                                <div class="col-lg-6 sub-menu">
                                    <a class="dropdown-item" href="sections.html#testimonials"><i class="fas fa-smile mr-5"></i> <span>Testimonials</span></a>
                                    <a class="dropdown-item" href="sections.html#pricing"><i class="fas fa-dollar-sign mr-5"></i> <span>Pricing</span></a>
                                    <a class="dropdown-item" href="sections.html#products"><i class="fas fa-tags mr-5"></i> <span>Products</span></a>
                                    <a class="dropdown-item" href="sections.html#contacts"><i class="fas fa-address-card mr-5"></i> <span>Contacts</span></a>
                                    <a class="dropdown-item" href="sections.html#footers"><i class="fas fa-copyright mr-5"></i> <span>Footers</span></a>
                                </div><!-- / sub-menu -->
                            </div><!-- / row -->
                        </div><!-- / dropdown-menu -->
                    </li><!-- / dropdown -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#x" id="dropdown-templates" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-images mr-5 fs-14 va-middle"></i> <span class="va-middle">Templates</span></a>
                        <div class="dropdown-menu mega-menu two-columns" aria-labelledby="dropdown-templates">
                            <div class="row">
                                <div class="col-lg-6 sub-menu">
                                    <a class="dropdown-item" href="templates/landing-page.html"><i class="fas fa-images mr-5"></i> <span>Landing Page</span></a>
                                    <a class="dropdown-item" href="templates/portfolio.html"><i class="fas fa-th-large mr-5"></i> <span>Portfolio</span></a>
                                    <a class="dropdown-item" href="templates/project.html"><i class="fas fa-briefcase mr-5"></i> <span>Project</span></a>
                                    <a class="dropdown-item" href="templates/blog.html"><i class="fas fa-list mr-5"></i> <span>Blog</span></a>
                                    <a class="dropdown-item" href="templates/post.html"><i class="fas fa-pencil-alt mr-5"></i> <span>Post</span></a>
                                </div><!-- / sub-menu -->
                                <div class="col-lg-6 sub-menu">
                                    <a class="dropdown-item" href="templates/ecommerce.html"><i class="fas fa-shopping-cart mr-5"></i> <span>eCommerce</span></a>
                                    <a class="dropdown-item" href="templates/product.html"><i class="fas fa-tag mr-5"></i> <span>Product</span></a>
                                    <a class="dropdown-item" href="templates/404.html"><i class="fas fa-unlink mr-5"></i> <span>404 Page</span></a>
                                    <a class="dropdown-item" href="templates/login-register.html"><i class="fas fa-sign-in-alt mr-5"></i> <span>Sign In</span></a>
                                    <a class="dropdown-item" href="templates/account.html"><i class="fas fa-user mr-5"></i> <span>Account</span></a>
                                </div><!-- / sub-menu -->
                            </div><!-- / row -->
                        </div><!-- / dropdown-menu -->
                    </li><!-- / dropdown -->
                </ul><!-- / navbar-nav -->

                <ul class="navbar-button p-0 m-0 ml-30">
                    <li class="nav-item">
                        <a href="https://wrapbootstrap.com/theme/soft-ui-neumorphism-style-ui-kit-WB0BTD6T1" class="btn btn-sm btn-outline-primary" target="_blank"><i class="fas fa-shopping-cart fs-12 mr-5"></i> <span>BUY NOW</span></a>
                    </li>
                </ul>
            </div><!-- / navbar-collapse -->
        </div><!-- / container -->
    </nav><!-- / navbar -->

    <header class="xxl bg-img" style="background-image: url(assets/images/placeholder.jpg)">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h1 class="page-title">Soft UI</h1>
                    <h5 class="mb-30">Neumorphism Style UI Kit</h5>
                    <p class="lead mb-25">Soft UI is a premium Bootstrap 4 UI Kit, designed and developed with attention to detail. Soft UI Kit includes 500+ reusable components, 50+ pre-built sections and 10 pre-built templates in neumorphism style with light &amp; dark variations.</p>
                    <a href="#features" class="btn btn-white-gradient m-5 ml-0 smooth-scroll"><i class="fas fa-sun mr-5"></i> <span>Light UI</span></a>
                    <a href="dark-ui/index.html" class="btn btn-dark-gradient m-5 ml-0"><i class="fas fa-moon mr-5"></i> <span>Dark UI</span></a>
                </div><!-- column -->
                <div class="col-md-6">
                </div><!-- column -->
            </div><!-- / row -->
        </div><!-- / container -->
    </header>

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

    

    <a href="#top" class="scroll-to-top smooth-scroll is-visible" data-nav-status="toggle"><i class="fas fa-chevron-up"></i></a>

    <footer>
        <div class="container">
            <div class="row v-center mobile-center">
                <div class="col-md-4 footer-left-area tablet-top">
                    <p>� Soft UI by <a href="https://kingstudio.ro" target="_blank">KingStudio</a></p>
                </div><!-- / footer-left-area -->
                <div class="col-md-8 footer-right-area">
                    <p>
                        <a href="index.html" class="text-link mr-15">Home</a>
                        <a href="components.html" class="text-link mr-15">Components</a>
                        <a href="sections.html" class="text-link mr-15">Sections</a>
                        <a href="templates.html" class="text-link">Templates</a>
                    </p>
                </div><!-- / footer-right-area -->
            </div><!-- / row -->
        </div><!-- / container -->
    </footer>

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



</body></html>