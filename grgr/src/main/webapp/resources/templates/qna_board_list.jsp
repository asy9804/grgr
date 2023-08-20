<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Meta -->
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content="Soft UI - Neumorphism Style UI Kit" />
    <meta name="author" content="kingstudio.ro" />
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/assets/images/favicon.png" />
    <!-- Site Title -->
    <title>Soft UI - Neumorphism Style UI Kit</title>
    <!-- Bootstrap 4 core CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom Styles -->
    <link href="${pageContext.request.contextPath}/assets/css/animate.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
    <!-- Fonts -->
    <link
      href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;600;800&display=swap"
      rel="stylesheet" />
    <link
      href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;600;800&display=swap"
      rel="stylesheet" />
    <link
      href="${pageContext.request.contextPath}/assets/css/fontawesome-all.min.css"
      rel="stylesheet"
      type="text/css"/>
  </head>
  <style>
    .va-middle {
      font-size: 20px;
    }
    .page-link {
      font-size: 20px;
    }
    .mb-20 {
      font-size: 2rem;
      font-weight: 'bold';
    }
  </style>
  <body>
    <div id="preloader">
      <div class="preloader"><span></span> <span></span></div>
    </div>

    <div id="top"></div>
    <!-- / top -->

    <header
      class="xxl bg-img bg-fixed"
      style="background-image: url(${pageContext.request.contextPath}/assets/images/placeholder.jpg)">
      <nav
        class="navbar navbar-expand-lg navbar-light has-sticky-logo main-nav fixed-top">
        <div class="sticky-nav-activate fixed-top"></div>
        <div class="container">
          <a class="navbar-brand" href="${pageContext.request.contextPath}/index.html">
          <img src="${pageContext.request.contextPath}/assets/images/logo.png" alt=""/></a>
          <a class="navbar-brand sticky-logo" href="${pageContext.request.contextPath}/index.html">
          <img src="${pageContext.request.contextPath}/assets/images/logo.png" alt=""/></a>
          <button
            class="navbar-toggler collapsed"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbar-toggle"
            aria-controls="navbar-toggle"
            aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="icon-bar top-bar"></span>
            <span class="icon-bar middle-bar"></span>
            <span class="icon-bar bottom-bar"></span>
            <span class="sr-only">Toggle navigation</span>
          </button>
          <!-- / navbar-toggler -->

          <div class="collapse navbar-collapse" id="navbar-toggle">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item dropdown">
                <a
                  class="nav-link dropdown-toggle"
                  href="#x"
                  id="dropdown"
                  data-bs-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false">
                  <i class="fas fa-archive mr-5 fs-14 va-middle"></i>
                  <span class="va-middle">Components</span></a>
                <div class="dropdown-menu" aria-labelledby="dropdown">
                  <a class="dropdown-item" href="${pageContext.request.contextPath}/components.html#basic">
                  <i class="fas fa-box-open mr-5"></i>
                  	<span>Basic Components</span></a>
                  <a class="dropdown-item" href="${pageContext.request.contextPath}/components.html#navigation">
                  <i class="fas fa-bars mr-5"></i> <span>Navigation</span></a>
                  <a class="dropdown-item" href="${pageContext.request.contextPath}/components.html#forms">
                  <i class="fas fa-file-alt mr-5"></i> <span>Forms</span></a>
                  <a class="dropdown-item" href="${pageContext.request.contextPath}/components.html#cards">
                  <i class="far fa-square mr-5"></i> <span>Cards</span></a>
                  <a class="dropdown-item" href="${pageContext.request.contextPath}/components.html#extras">
                  <i class="fas fa-heart mr-5"></i> <span>Extras</span></a>
                </div>
                <!-- / dropdown-menu -->
              </li>
              <!-- / dropdown -->
              <li class="nav-item dropdown">
                <a
                  class="nav-link dropdown-toggle"
                  href="#x"
                  id="dropdown-sections"
                  data-bs-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false">
                  <i class="fas fa-stream mr-5 fs-14 va-middle"></i>
                  <span class="va-middle">Sections</span></a>
                <div
                  class="dropdown-menu mega-menu two-columns"
                  aria-labelledby="dropdown-sections">
                  <div class="row">
                    <div class="col-lg-6 sub-menu">
                      <a class="dropdown-item" href="${pageContext.request.contextPath}/sections.html#headers">
                      <i class="fas fa-window-maximize mr-5"></i>
                        <span>Headers</span></a>
                      <a class="dropdown-item" href="${pageContext.request.contextPath}/sections.html#features">
                      <i class="fas fa-star mr-5"></i>
                        <span>Features</span></a>
                      <a class="dropdown-item" href="${pageContext.request.contextPath}/sections.html#projects">
                      <i class="fas fa-briefcase mr-5"></i>
                        <span>Projects</span></a>
                      <a class="dropdown-item" href="${pageContext.request.contextPath}/sections.html#posts">
                      <i class="fas fa-list-alt mr-5"></i>
                        <span>Posts</span></a>
                      <a class="dropdown-item" href="${pageContext.request.contextPath}/sections.html#teams">
                      <i class="fas fa-users mr-5"></i> <span>Teams</span></a>
                    </div>
                    <!-- / sub-menu -->
                    <div class="col-lg-6 sub-menu">
                      <a
                        class="dropdown-item"
                        href="${pageContext.request.contextPath}/sections.html#testimonials">
                        <i class="fas fa-smile mr-5"></i>
                        <span>Testimonials</span></a>
                      <a class="dropdown-item" href="${pageContext.request.contextPath}/sections.html#pricing">
                      <i class="fas fa-dollar-sign mr-5"></i>
                        <span>Pricing</span></a>
                      <a class="dropdown-item" href="${pageContext.request.contextPath}/sections.html#products">
                      <i class="fas fa-tags mr-5"></i>
                        <span>Products</span></a>
                      <a class="dropdown-item" href="${pageContext.request.contextPath}/sections.html#contacts">
                      <i class="fas fa-address-card mr-5"></i>
                        <span>Contacts</span></a>
                      <a class="dropdown-item" href="${pageContext.request.contextPath}/sections.html#footers">
                      <i class="fas fa-copyright mr-5"></i>
                        <span>Footers</span></a>
                    </div>
                    <!-- / sub-menu -->
                  </div>
                  <!-- / row -->
                </div>
                <!-- / dropdown-menu -->
              </li>
              <!-- / dropdown -->
              <li class="nav-item dropdown">
                <a
                  class="nav-link dropdown-toggle"
                  href="#x"
                  id="dropdown-templates"
                  data-bs-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false">
                  <i class="fas fa-images mr-5 fs-14 va-middle"></i>
                  <span class="va-middle">Templates</span></a>
                <div
                  class="dropdown-menu mega-menu two-columns"
                  aria-labelledby="dropdown-templates">
                  <div class="row">
                    <div class="col-lg-6 sub-menu">
                      <a class="dropdown-item" href="landing-page.html">
                      <i class="fas fa-images mr-5"></i>
                        <span>Landing Page</span></a>
                      <a class="dropdown-item active" href="portfolio.html">
                      <i class="fas fa-th-large mr-5"></i>
                        <span>Portfolio</span></a>
                      <a class="dropdown-item" href="project.html">
                      <i class="fas fa-briefcase mr-5"></i>
                        <span>Project</span></a>
                      <a class="dropdown-item" href="blog.html">
                      <i class="fas fa-list mr-5"></i> <span>Blog</span></a>
                      <a class="dropdown-item" href="post.html">
                      <i class="fas fa-pencil-alt mr-5"></i>
                        <span>Post</span></a>
                    </div>
                    <!-- / sub-menu -->
                    <div class="col-lg-6 sub-menu">
                      <a class="dropdown-item" href="ecommerce.html">
                      <i class="fas fa-shopping-cart mr-5"></i>
                        <span>eCommerce</span></a>
                      <a class="dropdown-item" href="product.html">
                      <i class="fas fa-tag mr-5"></i> <span>Product</span></a>
                      <a class="dropdown-item" href="404.html">
                      <i class="fas fa-unlink mr-5"></i>
                        <span>404 Page</span></a>
                      <a class="dropdown-item" href="login-register.html">
                      <i class="fas fa-sign-in-alt mr-5"></i>
                        <span>Sign In</span></a>
                      <a class="dropdown-item" href="account.html">
                      <i class="fas fa-user mr-5"></i>
                        <span>Account</span></a>
                    </div>
                    <!-- / sub-menu -->
                  </div>
                  <!-- / row -->
                </div>
                <!-- / dropdown-menu -->
              </li>
              <!-- / dropdown -->
            </ul>
            <!-- / navbar-nav -->

            <ul class="navbar-button p-0 m-0 ml-30">
              <li class="nav-item">
                <a
                  href="ë§ì´íì´ì§ URL"
                  class="btn btn-sm btn-outline-primary"
                  target="_blank"
                >
                  <i class="fas fa-user fs-12 mr-5"></i>
                  <span style="font-size: 20px">ë§ì´íì´ì§</span>
                </a>
              </li>
            </ul>
          </div>
          <!-- / navbar-collapse -->
        </div>
        <!-- / container -->
      </nav>
      <!-- / navbar -->
      <div class="container text-center">
        <h1 class="page-title">GRGR</h1>
      </div>
      <!-- / container -->
    </header>

    <!-- í° ì»¨íì´ë  -->
    <section class="big">
      <div class="container">
        <h2 class="hidden">Info Board List</h2>
        <!-- í¤ìë -->
        <ul class="portfolio-filter list-inline text-center mb-30">
          <li id="portfolio-filter-list"><a href="#">ì§ì­ : ê°ë¨êµ¬ </a></li>
          <li id="portfolio-filter-list">
            <a href="#" data-group="all" class="active ml-2">ì ì²´</a>
          </li>
          <li id="portfolio-filter-list">
            <a href="#" data-group="food">ì¼ë°íì</a>
          </li>
          <li id="portfolio-filter-list">
            <a href="#" data-group="market">ìê¶íì</a>
          </li>
          <li id="portfolio-filter-list">
            <a href="#" data-group="living">ìíì ë³´</a>
          </li>
          <li id="portfolio-filter-list">
            <a href="#" data-group="event">ì´ë²¤í¸</a>
          </li>
        </ul>

        <div style="float: right; display: block">
          <a href="#x" class="btn btn-primary-gradient m-y-10 mr-10">
          <span class="fas fa-edit mr-10"></span>
            <span style="font-size: 20px">ê¸ì°ê¸°</span></a>
        </div>

        <div>
          <ul
            class="row portfolio project-grid lightbox list-unstyled mb-0"
            id="grid"
            style="clear: both">
            <!--====================================================================================================  -->
            <!-- project -->
            <li class="col-md-12 col-lg-0 project" data-groups='["market"]'>
              <div class="promo-box">
                <div class="cta p-0">
                  <div class="row v-center">
                    <div class="col-lg-2 tablet-lg-top-30 tablet-lg-center">
                      <img
                        src="${pageContext.request.contextPath}/assets/images/placeholder-square.jpg"
                        alt="default-img"
                        class="rounded"/>
                    </div>
                    <!-- / column -->
                    <div class="col-lg-10 text-left tablet-lg-center">
                      <p class="mb-20">What you can create?</p>
                      <p class="lead mb-20">
                        In porta porta urna, venenatis volutpat odio dictum sed.
                        Donec posuere ac ligula vel vestibulum. Sed tincidunt mi
                        nunc, vitae mollis turpis gravida et. Praesent vitae
                        turpis pharetra, egestas justo ut, convallis quam.In
                        porta porta urna,
                      </p>
                      <p
                        class="fs-16 post-meta-small mt-15 mb-0"
                        style="text-align: right">
                        <i class="far fa-calendar-alt mr-5">Jul 02,</i>
                        2020<span class="m-x-10 text-muted">|</span>
                        <i class="fas fa-tag mr-10">ê¸°í íê¸°</i>
                      </p>
                    </div>
                    <!-- / column -->
                  </div>
                  <!-- / row -->
                </div>
                <!-- / cta -->
              </div>
              <!-- / promo-box -->
            </li>
            <!--====================================================================================================  -->
          </ul>
        </div>
      </div>
      <!-- / container -->
    </section>
    <nav aria-label="pagination-center">
      <ul class="pagination justify-content-center">
        <li class="page-item disabled">
          <a class="page-link" href="#x">
          <i class="fas fa-arrow-left mb-5"></i>
          </a>
        </li>
        <li class="page-item"><a class="page-link" href="#x">1</a></li>
        <li class="page-item active"><a class="page-link" href="#x">2</a></li>
        <li class="page-item"><a class="page-link" href="#x">3</a></li>
        <li class="page-item">
          <a class="page-link" href="#x">
          <i class="fas fa-arrow-right mb-5"></i>
          </a>
        </li>
      </ul>
    </nav>
    <!-- / pagination-center -->

    <a
      href="#top"
      class="scroll-to-top is-visible smooth-scroll"
      data-nav-status="toggle">
      <i class="fas fa-chevron-up"></i>
      </a>

    <!-- footer ìì­ -->
    <footer>
      <div class="container">
        <div class="row v-center mobile-center">
          <div class="col-md-4 footer-left-area tablet-top">
            <p>
              Â© Soft UI by
              <a href="https://kingstudio.ro" target="_blank">KingStudio</a>
            </p>
          </div>
          <!-- / footer-left-area -->
          <div class="col-md-8 footer-right-area">
            <p>
              <a href="${pageContext.request.contextPath}/index.html" class="text-link mr-15">Home</a>
              <a href="${pageContext.request.contextPath}/components.html" class="text-link mr-15">Components</a>
              <a href="${pageContext.request.contextPath}/sections.html" class="text-link mr-15">Sections</a>
              <a href="${pageContext.request.contextPath}/templates.html" class="text-link">Templates</a>
            </p>
          </div>
          <!-- / footer-right-area -->
        </div>
        <!-- / row -->
      </div>
      <!-- / container -->
    </footer>

    <!-- core JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <!-- / core JavaScript -->

    <!-- preloader -->
    <script src="${pageContext.request.contextPath}/assets/js/preloader.js"></script>
    <!-- / preloader -->

    <!-- smooth scroll -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/smooth-scroll.js"></script>
    <!-- / smooth scroll -->

    <!-- hide nav -->
    <script src="${pageContext.request.contextPath}/assets/js/hide-nav.js"></script>
    <!-- / hide nav -->

    <!-- portfolio script -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.shuffle.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/portfolio.js"></script>
    <script>
      $(document).ready(function () {
        if (Modernizr.touch) {
          // show the close overlay button
          $('.close-overlay').removeClass('hidden');
          // handle the adding of hover class when clicked
          $('.img').click(function (e) {
            if (!$(this).hasClass('hover')) {
              $(this).addClass('hover');
            }
          });
          // handle the closing of the overlay
          $('.close-overlay').click(function (e) {
            e.preventDefault();
            e.stopPropagation();
            if ($(this).closest('.img').hasClass('hover')) {
              $(this).closest('.img').removeClass('hover');
            }
          });
        } else {
          // handle the mouseenter functionality
          $('.img')
            .mouseenter(function () {
              $(this).addClass('hover');
            })
            // handle the mouseleave functionality
            .mouseleave(function () {
              $(this).removeClass('hover');
            });
        }
      });
    </script>
    <!-- / portfolio script -->
  </body>
</html>
