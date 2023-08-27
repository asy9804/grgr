<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="kor">
<body>
	<footer style="padding-bottom: 0px;">
		<div class="container">
			<div class="row v-center mobile-center">
				<!-- 고객센터 안내 -->
				<div class="col-md-5 footer-left-area tablet-top">
					<h6 class="widget-title mb-20">고객센터</h6>
					<p class="mb-15">평일 10:00 ~18:00<br>(점심시간 13:00 - 14:00 제외 · 주말/공휴일 제외)</p>
				</div>
								
				<!-- 카테고리 -->
				<div class="col-md-7">
                     <div class="widget p-y-10">
                         <h6 class="widget-title mb-20">끼리끼리 소개</h6>
                         <div class="row">
                             <div class="col-3">
                                 <ul class="list-unstyled list-icon list-arrow list-primary list-has-link menu-list mb-0 tablet-lg-top">
                                     <li class="mb-10"><a href="#x">회사소개</a></li>
                                     <li class="mb-10"><a href="#x">채용안내</a></li>
                                 </ul>
                                 <!-- / list-unstyled -->
                             </div>
                             <!-- / column -->

                             <div class="col-3">
                                 <ul class="list-unstyled list-icon list-arrow list-primary list-has-link menu-list mb-0">
                                     <li class="mb-10"><a href="#x">이용안내</a></li>
                                     <li class="mb-10"><a href="#x">안전정책</a></li>
                                     <li class="mb-10"><a href="#x">상권찾기</a></li>
                                     <li class="mb-0"><a href="#x">끼리끼리보증</a></li>
                                 </ul><!-- / list-icon -->
                             </div><!-- / column -->
                             
                             <div class="col-3">
                                 <ul class="list-unstyled list-icon list-arrow list-primary list-has-link menu-list mb-0">
                                     <li class="mb-10"><a href="#x">이용안내</a></li>
                                     <li class="mb-10"><a href="#x">상권가이드</a></li>
                                     <li class="mb-10"><a href="#x">상권가입</a></li>
                                     <li class="mb-0"><a href="#x">상권센터</a></li>
                                 </ul><!-- / list-icon -->
                             </div><!-- / column -->
                             <div class="col-3">
                                 <ul class="list-unstyled list-icon list-arrow list-primary list-has-link menu-list mb-0">
                                     <li class="mb-10"><a href="#x">공지사항</a></li>
                                     <li class="mb-10"><a href="#x">자주 묻는 질문</a></li>
                                 </ul>
                                 <!-- / list-icon -->
                             </div>
                             <!-- / column -->
                         </div>
                         <!-- / row -->
                     </div>
                     <!-- / widget -->
                     
				</div>
			</div>
		</div>
	</footer>
	
     <footer style="padding-top: 10; padding-bottom:10px;">	
		<div class="container">
			<div class="container text-center">
				<p class="widget p-y-10">끼리끼리는 통신판매중개자로서 통신판매의 당사자가 아니며 개별 판매자가 제공하는 서비스에 대한 이행, 계약사항 등과 관련한 의무와 책임은 거래당사자에게 있습니다.</p>
			</div>

			<div class="container text-cente">
				<p class="widget p-y-10">
				상호명:끼리끼리 · 대표이사:아이티윌 · 개인정보책임관리자:아이티윌 · 주소:서울특별시 강남구 테헤란로 124, 삼원타워 4층
				사업자등록번호:123-45-67890<br>
				통신판매업신고증:제 2023-아이티윌-00001 호 · 직업정보제공사업 신고번호:한국청 제 2023-01호
				고객센터:1500-1500 · 이메일:abc123@itwill.xyz<br>
				Copyright ©GRGR Mobile Inc. All Rights Reserved.
				</p>
			</div>
          </div>
     </footer>
     
     <footer style="padding-top: 0px;">	
		<div class="container">
			<div class="row v-center mobile-center">
				<div class="col-md-4 footer-left-area tablet-top">
					<p>© GRGR Corp.</p>
				</div>
				<!-- / footer-left-area -->

				<!-- 이용약관 등 -->
				<div class="col-md-8 footer-right-area">
					<p>
						<a href="#x" class="text-link mr-15">이용약관</a>
						<a href="#x" class="text-link mr-15">개인정보처리방침</a>
                        <a href="#x" class="text-link mr-15">위치기반 서비스 이용약관</a>
                        <a href="#x" class="text-link mr-15">사업자 정보확인</a>
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