<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kor">
<head>
<!-- Meta -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="Soft UI - Neumorphism Style UI Kit" />
<meta name="author" content="kingstudio.ro" />
<!-- Favicon -->
<link rel="icon"
	href="${pageContext.request.contextPath}/assets/images/favicon.png" />
<!-- Site Title -->
<title>Soft UI - Neumorphism Style UI Kit</title>
<!-- Bootstrap 4 core CSS -->
<link
	href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css"
	rel="stylesheet" />
<!-- Custom Styles -->
<link href="${pageContext.request.contextPath}/assets/css/animate.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/assets/css/style.css"
	rel="stylesheet" />
<!-- Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;600;800&display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;600;800&display=swap"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/assets/css/fontawesome-all.min.css"
	rel="stylesheet" type="text/css" />
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
	font-weight: "bold"
}
</style>
<body>
	<div id="preloader">
		<div class="preloader">
			<span></span> <span></span>
		</div>
	</div>

	<div id="top"></div>
	<!-- / top -->
	<script type="text/javascript">
		
	</script>
	<!-- 큰 컨테이너  -->
	<section class="lg bg-light-grey">
		<div class="container">
			<div class="w-60 m-x-auto mt-70">
				<h4 class="mb-30 text-left">글수정</h4>
				<c:if test="${not empty msg}">
					<div class="alert alert-danger">${msg}</div>
				</c:if>
				<form action="modify" method="post" class="validation-inner"
					id="form-validation" novalidate="novalidate">
					<input type="hidden" name="uno" value="${qnaBoard.uno}" /> 
					<input type="hidden" name="qnaBno" value="${qnaBoard.qnaBno}" /> 
					<input type="hidden" name="qnaUpdateUno" value="${qnaBoard.uno}" /> 
					<div class="row">
						<div class="col-md-3">
							<div class="col-md-0 tablet-top">
								<select class="custom-select" id="select" name="qnaKeyword"
									style="color: black;">
									<c:choose>
										<c:when test="${qnaBoard.qnaKeyword == 'ilban'}">
											<option value="ilban" selected>일반회원</option>
										</c:when>
										<c:otherwise>
											<option value="ilban">일반회원</option>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${qnaBoard.qnaKeyword == 'sangkwon'}">
											<option value="sangkwon" selected>상권회원</option>
										</c:when>
										<c:otherwise>
											<option value="sangkwon">상권회원</option>
										</c:otherwise>
									</c:choose>
									<!-- Similar pattern for other options -->
								</select>
								<!-- / custom-select -->
							</div>
							<!-- / form-group -->
						</div>
						<!-- / column -->

						<div class="col-md-9">
							<div class="form-group">
								<input type="text" class="form-control" id="contact-email"
									name="qnaTitle" required="true"
									style="font-family: 'Font Awesome 5 Free', sans-serif !important; font-weight: 400"
									aria-required="true" value="${qnaBoard.qnaTitle}">
							</div>
							<!-- / form-group -->
						</div>
						<!-- / column -->

						<div class="form-group">
							<textarea id="contact-message" class="form-control"
								name="qnaContent" rows="8" required="true"
								style="font-family: 'Font Awesome 5 Free', sans-serif !important; font-weight: 400; min-height: 500px; max-height: 500px;"
								aria-required="true">${qnaBoard.qnaContent}</textarea>
						</div>

						<div class="col-md-2 text-center">사진첨부</div>

						<div class="col-md-6">
							<img
								src="${pageContext.request.contextPath}/assets/images/placeholder-wide.jpg"
								alt="default-img" class="rounded">
						</div>
						<!-- / form-group -->
					</div>
					<!-- / column -->

					<div class="fas mr-10 float-end">
						<button type="submit" class="btn btn-primary-gradient btn-submit">수정</button>

					</div>
				</form>
				<!-- / form-group -->
			</div>
		</div>
	</section>
	<!-- / pagination-center -->

	<a href="#top" class="scroll-to-top is-hidden smooth-scroll"
		data-nav-status="toggle"><i class="fas fa-chevron-up"></i></a>

	<!-- footer 영역 -->
	<footer>
		<div class="container">
			<div class="row v-center mobile-center">
				<div class="col-md-4 footer-left-area tablet-top">
					<p>
						© Soft UI by <a href="https://kingstudio.ro" target="_blank">KingStudio</a>
					</p>
				</div>
				<!-- / footer-left-area -->
				<div class="col-md-8 footer-right-area">
					<p>
						<a href="${pageContext.request.contextPath}/index.html" class="text-link mr-15">Home</a> <a
							href="${pageContext.request.contextPath}/components.html" class="text-link mr-15">Components</a>
						<a href="${pageContext.request.contextPath}/sections.html" class="text-link mr-15">Sections</a> <a
							href="${pageContext.request.contextPath}/templates.html" class="text-link">Templates</a>
					</p>
				</div>
				<!-- / footer-right-area -->
			</div>
			<!-- / row -->
		</div>
		<!-- / container -->
	</footer>

	<!-- core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
	<!-- / core JavaScript -->

	<!-- preloader -->
	<script src="${pageContext.request.contextPath}/assets/js/preloader.js"></script>
	<!-- / preloader -->

	<!-- smooth scroll -->
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.easing.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/smooth-scroll.js"></script>
	<!-- / smooth scroll -->

	<!-- hide nav -->
	<script src="${pageContext.request.contextPath}/assets/js/hide-nav.js"></script>
	<!-- / hide nav -->

	<!-- portfolio script -->
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.shuffle.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/portfolio.js"></script>
	<script>
		$(document).ready(function() {
			if (Modernizr.touch) {
				// show the close overlay button
				$('.close-overlay').removeClass('hidden');
				// handle the adding of hover class when clicked
				$('.img').click(function(e) {
					if (!$(this).hasClass('hover')) {
						$(this).addClass('hover');
					}
				});
				// handle the closing of the overlay
				$('.close-overlay').click(function(e) {
					e.preventDefault();
					e.stopPropagation();
					if ($(this).closest('.img').hasClass('hover')) {
						$(this).closest('.img').removeClass('hover');
					}
				});
			} else {
				// handle the mouseenter functionality
				$('.img').mouseenter(function() {
					$(this).addClass('hover');
				})
				// handle the mouseleave functionality
				.mouseleave(function() {
					$(this).removeClass('hover');
				});
			}
		});
	</script>
	<!-- / portfolio script -->
</body>
</html>

