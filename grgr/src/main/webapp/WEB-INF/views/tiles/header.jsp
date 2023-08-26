<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="kor">

<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Soft UI - Neumorphism Style UI Kit">
    <meta name="author" content="kingstudio.ro">
    <!-- 파비콘 변경 -->
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/grgr_favicon.png">
    <!-- Site Title -->
    <title>끼리끼리</title>
    <!-- Bootstrap 4 core CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Styles -->
    <link href="${pageContext.request.contextPath}/assets/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet">
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;600;800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;600;800&display=swap" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/fontawesome-all.min.css" rel="stylesheet" type="text/css">
</head>

<body>
	<header class="xxl bg-img " style="background-image: url(${pageContext.request.contextPath}/assets/images/placeholder-wide.jpg)">
		<nav class="navbar navbar-expand-lg navbar-light absolute top-0 left-0 right-0">
			<div class="container">
				<div class="navbar col-lg-1" href="#x">
					<img src="${pageContext.request.contextPath}/resources/images/grgr_png" alt="">
				</div>
				<div class="collapse navbar-collapse col-lg-3" id="navbar-toggle1">
					<ul class="navbar-nav ml-30">
						<li class="nav-item">
							<a class="nav-link" href="#x">맛집정보</a>
						</li>
						<li class="nav-item ml-30">
							<a class="nav-link" href="#x">의료정보</a>
						</li>
					</ul>
					<!-- / navbar-nav -->
				</div>   
				<div class="input-group input-w-overlap-btn ml-20">
					<input type="text" class="form-control pill" placeholder="검색어를 입력하세요">
						<span class="input-group-btn">
							<button class="btn btn-sm btn-icon btn-circle btn-primary overlapping-btn" type="button">
								<i class="fas fa-search"></i>
							</button>
						</span>
						<!-- / input-group-btn -->
				</div>
				<!-- / input-group -->
				<ul class="navbar-button p-0 m-0 ml-80">
					<li class="nav-item">
						<a href="#x" class="btn btn-sm btn-primary pill">
							<i class="fas fa-rotate-90 fs-12 va-middle mr-5"></i>
							<span>로그인</span>
						</a>
					</li>
				</ul>
				<ul class="navbar-button p-0 m-0 ml-30">
					<li class="nav-item">
						<a href="#x" class="btn btn-sm btn-primary-gradient pill">
							<i class="fas fa-rotate-90 fs-12 va-middle mr-5"></i>
								<span>회원가입</span>
						</a>
					</li>
				</ul>
			</div>
			<!-- / navbar-collapse -->
			<!-- / container -->
         </nav>
         <!-- / navbar -->
	</header>

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
$(document).ready(function(){
    if (Modernizr.touch) {
        // show the close overlay button
        $(".close-overlay").removeClass("hidden");
        // handle the adding of hover class when clicked
        $(".img").click(function(e){
            if (!$(this).hasClass("hover")) {
                $(this).addClass("hover");
            }
        });
        // handle the closing of the overlay
        $(".close-overlay").click(function(e){
            e.preventDefault();
            e.stopPropagation();
            if ($(this).closest(".img").hasClass("hover")) {
                $(this).closest(".img").removeClass("hover");
            }
        });
    } else {
        // handle the mouseenter functionality
        $(".img").mouseenter(function(){
            $(this).addClass("hover");
        })
        // handle the mouseleave functionality
        .mouseleave(function(){
            $(this).removeClass("hover");
        });
    }
});
</script>
<!-- / portfolio script -->

</body>

</html>