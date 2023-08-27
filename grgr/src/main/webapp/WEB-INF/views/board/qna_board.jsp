<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kor">
<!-- 헤더 연결 -->
<%@ include file="/WEB-INF/views/tiles/header.jsp" %>

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

.custom-icon {
    color: black;
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


	<!-- 큰 컨테이너  -->
	<section class="lg bg-light-grey">
		<div class="container">
			<div class="w-90 m-x-auto mt-70">
				<div class="col-xl-auto">
					<a href="#x"
						class="d-inline title-color primary-hover fs-24 fw-bold mb-15"
						style="margin: 10px">${qnaBoard.qnaTitle} </a>
						<a href="<c:url value='/qnaboard/modify${searchCondition.getQueryString(1)}&qnaBno=${qnaBoard.qnaBno}'/>"
							class="btn btn-xs btn-primary pill"
							style="float: right; font-size: 15px; margin: 10px"><span>수정</span></a>
						<a
							href="<c:url value='/qnaboard/remove?qnaBno=${qnaBoard.qnaBno}'/>"
							class="btn btn-xs btn-primary pill"
							style="float: right; font-size: 15px; margin: 10px"><span>삭제</span></a>
					<p
						class="fs-12 post-meta-small p-y-15 pl-15 mb-15 border-secondary"
						style="clear: both; padding: 10px">
						<i class="fas fa-calendar-alt mr-5">${qnaBoard.qnaRegdate }</i>
							<span class="mr-5 ml-5 text-muted">|</span>
						<i class="fas fa-user mr-5">${qnaBoard.uno }</i>
							<span class="mr-5 ml-5 text-muted">|</span> 
						<i class="fas fa-tag mr-5">${qnaBoard.qnaKeyword }</i>
							<span class="mr-5 ml-5 text-muted">|</span>
							<span>조회수</span>
						<span class="mr-5 ml-5 text-muted" style="color: #6c757d!important;">${qnaBoard.qnaViewCnt}</span>
					</p>
					<p class="m-y-30">${qnaBoard.qnaContent}</p>
					<a
						href="<c:url value='/qnaboard/list${searchCondition.getQueryString(1)}' />"
						class="btn btn-xs btn-primary pill"
						style="float: right; font-size: 15px"><span>글목록</span></a>
				</div>
				<!-- / column -->
				
 				<!-- 이전글, 다음글 -->
				<nav aria-label="pager" style="clear: both; padding-top: 30px">
					<ul class="pager">
						<c:if test="${!isFirstPost }">
							<li class="pager-left"><a
								href="<c:url value='/qnaboard/read?${searchCondition.getQueryString()}&qnaBno=${prevQnaBno}'/>">
									<i class="fas fa-arrow-left"></i> <span class="ml-5">이전글</span></a></li>
						</c:if>
						<c:if test="${isFirstPost }">
							<li class="pager-left disabled"><i class="fas fa-arrow-left"></i>
								<span class="ml-5">이전글</span></a></li>
						</c:if>

						<c:if test="${!isLastPost}">
							<li class="pager-right"><a
								href="<c:url value='/qnaboard/read?${searchCondition.getQueryString()}&qnaBno=${nextQnaBno}'/>">
									<span class="mr-5">다음글</span> <i class="fas fa-arrow-right"></i></a></li>
						</c:if>

						<c:if test="${isLastPost}">
							<li class="pager-right disabled"><span class="mr-5">다음글</span>
								<i class="fas fa-arrow-right"></i></li>
						</c:if>
					</ul>
				</nav> 
			</div>
		</div>
	</section>
	<!-- / pagination-center -->

	<!-- 위로 스크롤 -->
	<a href="#top" class="scroll-to-top is-hidden smooth-scroll"
		data-nav-status="toggle"><i class="fas fa-chevron-up"></i></a>

	<!-- footer 영역 -->
	<%@ include file="/WEB-INF/views/tiles/footer.jsp" %>

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
	        .mouseleave(function() { // 추가된 부분
	            $(this).removeClass('hover');
	        }); // 추가된 부분
	    }
	});
	</script>
	<!-- / portfolio script -->
</body>
</html>
