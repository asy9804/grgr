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
								<a href="http://localhost:8000/grgr/qnaboard/list">
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
								<a href="${pageContext.request.contextPath}/qnaboard/list">
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
            
            <section>
            	<div class="container">
            	<div class="col-lg-6">
                        <div class="widget p-30 rounded-10" style="padding-top: 0px !important;">
                            <h6 class="wcard-title fw-regular mb-20">게시판명1</h6>
                            <div class="post-widget">
                                <ul class="list-unstyled mb-0">
                                    <li>
                                    	<a href="<c:url value='/qna_boardlist' />" class="recent-post-link">
	                                        <div class="recent-post first mb-20">
	                                            <div class="recent-post-image">
	                                                <img src="assets/images/placeholder.jpg" alt="" class="raised-xs">
	                                            </div><!-- / recent-post-image -->
	                                            <div class="recent-post-content">
	                                                <a href="#x" class="recent-post-title">게시글 제목</a>
	                                                <p class="post-tag">글내용</p>
	                                                <p class="post-date opc-75"><i class="far fa-clock text-primary mr-5 va-middle"></i><span class="va-middle">Jul 18, 2020</span></p>
	                                            </div><!-- / recent-post-content -->
	                                        </div><!-- / recent-posts -->
										</a>
                                    </li>
                                    <li>
                                        <a href="<c:url value='/qna_boardlist' />" class="recent-post-link">
	                                        <div class="recent-post first mb-20">
	                                            <div class="recent-post-image">
	                                                <img src="assets/images/placeholder.jpg" alt="" class="raised-xs">
	                                            </div><!-- / recent-post-image -->
	                                            <div class="recent-post-content">
	                                                <a href="#x" class="recent-post-title">게시글 제목</a>
	                                                <p class="post-tag">글내용</p>
	                                                <p class="post-date opc-75"><i class="far fa-clock text-primary mr-5 va-middle"></i><span class="va-middle">Jul 18, 2020</span></p>
	                                            </div><!-- / recent-post-content -->
	                                        </div><!-- / recent-posts -->
										</a>
                                    </li>
                                </ul><!-- / list-unstyled -->
                            </div><!-- / post-widget -->
                        </div><!-- / widget -->
                    </div>
                    </div>
            </section>

            <section class="lg">
                <div class="container">
                    <div class="section-title-area text-center relative mb-70">
                        <h3 class="section-title" style="text-align: left;">게시판명2</h3>
                    </div><!-- / section-title-area -->
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card-body">
                            	<a href="${pageContext.request.contextPath}/qnaboard/list">
	                                <div class="card-body text-center">
	                                    <img class="mb-30 w-60" src="assets/images/placeholder-square.jpg" alt="">
	                                    <h6 class="card-title fw-bold mb-10 text-black">게시글 제목입니다.</h6>
	                                    <p class="card-text mb-30">게시글 내용입니다.게시글 내용입니다.게시글 내용입니다.게시글 내용입니다.</p>
	                                </div>
	                                <!-- / card-body -->
                                </a>
                            </div>
                            <!-- / card -->
                        </div><!-- / column -->

                        <div class="col-md-4">
                            <div class="card-body">
                            	<a href="${pageContext.request.contextPath}/qnaboard/list">
	                                <div class="card-body text-center">
	                                    <img class="mb-30 w-60" src="assets/images/placeholder-square.jpg" alt="">
	                                    <h6 class="card-title fw-bold mb-10 text-black">게시글 제목입니다.</h6>
	                                    <p class="card-text mb-30">게시글 내용입니다.게시글 내용입니다.게시글 내용입니다.게시글 내용입니다.</p>
	                                </div>
	                                <!-- / card-body -->
                                </a>
                            </div>
                            <!-- / card -->
                        </div><!-- / column -->

                        <div class="col-md-4">
                            <div class="card-body">
                            	<a href="${pageContext.request.contextPath}/qnaboard/list">
	                                <div class="card-body text-center">
	                                    <img class="mb-30 w-60" src="assets/images/placeholder-square.jpg" alt="">
	                                    <h6 class="card-title fw-bold mb-10 text-black">게시글 제목입니다.</h6>
	                                    <p class="card-text mb-30">게시글 내용입니다.게시글 내용입니다.게시글 내용입니다.게시글 내용입니다.</p>
	                                </div>
	                                <!-- / card-body -->
                                </a>
                            </div>
                            <!-- / card -->
                            </div><!-- / card -->
                        </div><!-- / column -->
                    </div><!-- / row -->
                </div><!-- / container -->
            </section>
        
        
        <section class="lg">
                <div class="container">
                    <div class="section-title-area text-center mb-70">
                        <h2 class="section-title" style="text-align: left;">게시판명3</h2>
                    </div>
                    <!-- / section-title-area -->
                    <ul class="row portfolio project-grid list-unstyled mb-0 shuffle" id="grid" style="position: relative; overflow: hidden; height: 709.391px; transition: height 250ms ease-out 0s;">
						<li class="col-md-6 col-lg-4 project shuffle-item filtered" data-groups="[&quot;modern&quot;]" style="position: absolute; top: 0px; left: 0px; visibility: visible; transition: transform 250ms ease-out 0s, opacity 250ms ease-out 0s; opacity: 1; transform: translate3d(0px, 0px, 0px) scale3d(1, 1, 1);">
                            <div class="card-body" style="background-color: white">
                                <img class="img-responsive card-img-top" src="assets/images/placeholder.jpg" alt="">
                                <div class="card-body p-y-20 text-center">
                                    <a href="#x" class="card-title title-link primary-hover fs-20">게시판 제목</a>
                                    <p class="fs-12 post-meta-small mt-15 mb-0"><i class="fas fa-tag mr-10"></i>키워드?태그?</p>
                                </div><!-- / card-body -->
                            </div><!-- / card -->
                        </li>

                        <!-- project -->
                        <li class="col-md-6 col-lg-4 project shuffle-item filtered" data-groups="[&quot;modern&quot;]" style="position: absolute; top: 0px; left: 0px; visibility: visible; transition: transform 250ms ease-out 0s, opacity 250ms ease-out 0s; opacity: 1; transform: translate3d(0px, 0px, 0px) scale3d(1, 1, 1);">
                            <div class="card-body" style="background-color: white">
                                <img class="img-responsive card-img-top" src="assets/images/placeholder.jpg" alt="">
                                <div class="card-body p-y-20 text-center">
                                    <a href="#x" class="card-title title-link primary-hover fs-20">게시판 제목</a>
                                    <p class="fs-12 post-meta-small mt-15 mb-0"><i class="fas fa-tag mr-10"></i>키워드?태그?</p>
                                </div><!-- / card-body -->
                            </div><!-- / card -->
                        </li>
                        <!-- project -->
                        <li class="col-md-6 col-lg-4 project shuffle-item filtered" data-groups="[&quot;modern&quot;]" style="position: absolute; top: 0px; left: 0px; visibility: visible; transition: transform 250ms ease-out 0s, opacity 250ms ease-out 0s; opacity: 1; transform: translate3d(0px, 0px, 0px) scale3d(1, 1, 1);">
                            <div class="card-body" style="background-color: white">
                                <img class="img-responsive card-img-top" src="assets/images/placeholder.jpg" alt="">
                                <div class="card-body p-y-20 text-center">
                                    <a href="#x" class="card-title title-link primary-hover fs-20">게시판 제목</a>
                                    <p class="fs-12 post-meta-small mt-15 mb-0"><i class="fas fa-tag mr-10"></i>키워드?태그?</p>
                                </div><!-- / card-body -->
                            </div><!-- / card -->
                        </li>                       
                    </ul><!-- / portfolio -->
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