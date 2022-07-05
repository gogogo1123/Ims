<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
<script src="https://kit.fontawesome.com/ea9f50e12b.js" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>Notice</title>
<style>
<!-- 게시판 페이징 색상 파란색에서 회색으로 변경 -->
.pagination > li > a, .pagination > li > span{
     color:black !Important;       
}
.page-link {
  Color: #000; 
  background-color: #fff;
  border: 1px solid #ccc; 
}

.page-item.active .page-link {
 z-index: 1;
 Color: #555;
 font-weight:bold;
 background-color: #f1f1f1;
 border-color: #ccc;
 
}

.page-link:focus,
.page-link:hover {
  Color: #000;
  background-color: #fafafa; 
  border-color: #ccc;
}

<!-- ! -->

</style>
<script>
	/* 
	$(function(){
		$("#p_on").on("click", function(){
			$("#s_off").show();
			$("#p_on").attr("id", "p_off");
			$("#s_off").attr("id", "s_on");
		});
		
	}); 
	*/
	
	
	function dis4(){
		if($('#dis4').css('display') == 'none'){
			$('#dis4').show();
		}else{
			$('#dis4').hide();
    	}
	}
	function dis3(){
		if($('#dis3').css('display') == 'none'){
			$('#dis3').show();
		}else{
			$('#dis3').hide();
    	}
	}
	function dis2(){
		if($('#dis2').css('display') == 'none'){
			$('#dis2').show();
		}else{
			$('#dis2').hide();
    	}
	}
	function dis1(){
		if($('#dis1').css('display') == 'none'){
			$('#dis1').show();
		}else{
			$('#dis1').hide();
    	}
	}
</script>
</head>
<body class="text-center">
	<div class="py-3"></div><!-- padding y축 공백 -->
	<div class="h2">로고</div>
	<div class="py-3"></div><!-- padding y축 공백 -->
	<div class="container">
	<nav class="row">
		<div class="col-md-3"><a class="text-dark" href="#">메뉴1</a></div>
		<div class="col-md-3"><a class="text-dark" href="#">메뉴2</a></div>
		<div class="col-md-3"><a class="text-dark" href="#">메뉴3</a></div>
		<div class="col-md-3"><a class="text-dark" href="#">메뉴4</a></div>
	</nav>
	<div class="py-5"></div><!-- padding y축 공백 -->
	<div class="py-5"></div><!-- padding y축 공백 -->
	<div class="">
	<div class="text-left">
		<span class="h3">공지사항l</span>
		<span class="h5">Im`s의 소식을 알려드립니다.</span>
	</div>
	
		<div class="row">
			<div class="col col-lg-3">
			
				<div class="input-group mb-3">
					
						<input type="text" class="form-control" aria-label="Recipient's username" aria-describedby="button-addon2" value="">
					
					<button class="btn btn-outline-dark" type="button" id="button-addon2"><i class="fa-solid fa-magnifying-glass"></i></button>
				</div>
			</div>
			<div class="col">
				<a class="text-dark" href="#">1:1문의 게시판</a>&nbsp;&nbsp;/&nbsp;&nbsp;<a class="text-dark" href="#">상품문의 게시판</a>&nbsp;&nbsp;/&nbsp;&nbsp;<a class="text-dark" href="#">고객 의견 게시판</a>
			</div>
		</div>
	</div>
	<div class="d-grid gap-2 d-md-flex justify-content-md-end">
		<button class="btn btn-dark me-md-2" type="button" onclick="location.href='${pageContext.request.contextPath}/nWrite.do'">글쓰기</button>
	</div>
	
	<table class="table">
		<thead>
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성일</td>
			</tr>
		</thead>
		<tbody>
			<!-- tr4 -->
			<tr id="show" onclick="dis4()">
				<td>4</td>
				<td class="text-left">개인정보처리방침 개정안내</td>
				<td>2022-06-27</td>
			</tr>
			<tr id="dis4" style="display:none"><!-- style="display:none"  ==  class="d-none"-->
				<td colspan=3 class="text-left">
				<p>Im`s를 이용해주시는 고객님께 감사드립니다.</p>
				<p>&nbsp;</p>
				<p>Im`s 서비스 이용 관련 개인정보 처리방침 개정에 대해 안내 말씀드립니다.<br>
				변경된 방침을 꼭 확인하시어 이용에 차질 없으시길 바랍니다.</p>
				</td>
			</tr>
			<!-- tr4 -->
			
			<!-- tr3 -->
			<tr id="show" onclick="dis3()">
				<td>3</td>
				<td class="text-left">3월 5일(토) 신한카드 시스템 점검으로 인한 결제/결제취소 불가안내</td>
				<td>2022-06-27</td>
			</tr>
			<tr id="dis3" style="display:none"><!-- display:none  ==  class="d-none"-->
				<td colspan=3 class="text-left">
				<p>Im`s를 이용해주시는 고객님께 감사드립니다.</p>
				<p>&nbsp;</p>
				<p>3월 5일(토) 신한카드 측의 시스템 점검이 예정되어 있어 점검 시간 간 결제 및 결제취소가 불가 내용 안내드립니다.</p>
				<p><strong>아래의 내용을 확인하시어 이용에 차질 없으시길 바랍니다.</strong></p>
				<p>&nbsp;</p>
				<hr>
				<p><strong>신한카드 결제&nbsp;불가 안내</strong>&nbsp;</p>
				<p>- 3월 5일(토) 신한카드의 뱅킹시스템 점검 시간 동안&nbsp;신한카드를 이용한 결제 및 결제취소가 불가능합니다.</p>
				<p>- 점검 시간 :&nbsp;2022년&nbsp;3월&nbsp;5일(토) 00:00 ~ 12:00 (12시간 / 점검 시간은&nbsp;작업 상황에 따라 변경될 수 있습니다.)</p>
				<hr>
				<p>&nbsp;</p>
				<p>감사합니다.</p>
				</td>
			</tr>
			<!-- tr3 -->
			
			<!-- tr2 -->
			<tr id="show" onclick="dis2()">
				<td>2</td>
				<td class="text-left">이용약관 개정안내</td>
				<td>2022-06-27</td>
			</tr>
			<tr id="dis2" style="display:none"><!-- display:none  ==  class="d-none"-->
				<td colspan=3 class="text-left">
				<p>Im`s를 이용해주시는 고객님께 감사드립니다.</p>
				<p>&nbsp;</p>
				<p>Im`s 서비스 이용 관련 개인정보 처리방침 개정에 대해 안내 말씀드립니다.<br>
				변경된 방침을 꼭 확인하시어 이용에 차질 없으시길 바랍니다.</p>
				</td>
			</tr>
			<!-- tr2 -->
			
			<!-- tr1 -->
			<tr id="show" onclick="dis1()">
				<td>1</td>
				<td class="text-left">배송지 이용조건 안내</td>
				<td>2022-06-27</td>
			</tr>
			<tr id="dis1" style="display:none"><!-- display:none  ==  class="d-none"-->
				<td colspan=3 class="text-left">
				<p>Im`s를 이용해주시는 고객님께 감사드립니다.</p>
				<p>&nbsp;</p>
				<p>Im`s 서비스 이용 관련 개인정보 처리방침 개정에 대해 안내 말씀드립니다.<br>
				변경된 방침을 꼭 확인하시어 이용에 차질 없으시길 바랍니다.</p>
				</td>
			</tr>
			<!-- tr1 -->
		</tbody>
	</table>
	<div class="example">
		<nav aria-label="...">
			<ul class="pagination justify-content-center">
				<li class="page-item disabled">
					<a class="page-link">Previous</a>
				</li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item active" aria-current="page">
					<a class="page-link" href="#">2</a>
				</li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item">
					<a class="page-link" href="#">Next</a>
				</li>
			</ul>
		</nav>
	</div>
	</div>
	
</body>
</html>