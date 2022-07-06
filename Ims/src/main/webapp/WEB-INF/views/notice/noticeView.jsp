<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>noticeView</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
	<script src="<c:url value="${pageContext.request.contextPath}/resources/js/raphael.min.js" />"></script>
	<script src="<c:url value="${pageContext.request.contextPath}/resources/js/morris.min.js" />"></script>
	<script src="<c:url value="${pageContext.request.contextPath}/resources/js/morris-data.js" />"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
	
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
<div class="container">
		<table class="table">
			<tr>
				<td>${noticeView.n_title}</td>
			</tr>
			<tr>
				<td>${noticeView.n_content}</td>
			</tr>
		</table>
		<table class="table">
			<tr>
				<td>
				<!-- ?n_bidx=${noticeView.n_bidx} -->
				<!-- 
				<input class="bbtn btn-outline-secondary" type="submit" value="수정하기" onclick="${pageContext.request.contextPath}/noticeModify.do?n_bidx=${noticeView.n_bidx}"/>
				 --> 
				 <input type="hidden" value="${noticeView.n_bidx}" name="n_bidx"> 
				 <input type="button" class="bbtn btn-outline-secondary" value="수정하기" onclick="location.href='${pageContext.request.contextPath}/noticeModify.do'">
				<input class="bbtn btn-outline-secondary" type="submit" value="목록으로" onclick="location.href='${pageContext.request.contextPath}/noticeList.do'"></td>
			</tr>
		</table>
</div>
</div>
</body>
</html>