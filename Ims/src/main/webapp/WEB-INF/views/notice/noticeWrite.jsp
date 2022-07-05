<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/bootstrap.css">
<link rel="stylesheet" href="../../../resources/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="../../../resources/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="../../../resources/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="../../../resources/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="../../../resources/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="../../../resources/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="../../../resources/css/style.css" type="text/css">
<style>


</style>
<script>
$(document).ready(function() {
	  $('#summernote').summernote();
});
</script>
<script src="https://kit.fontawesome.com/ea9f50e12b.js" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/34.1.0/classic/ckeditor.js"></script>

<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<title>notice write</title>
</head>
<body class="text-center">
	<form class="form-data">
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
		<!-- 제목 -->
		<div class="input-group mb-3">
			<input type="text" placeholder="title" class="form-control form-control-lg" aria-label="Recipient's username" aria-describedby="button-addon2">
		</div>
		<!--  -->
		<div>
			<textarea id="summernote" rows="" cols=""></textarea>
		</div>
		<script>
		
		$('#summernote').summernote({
			  height: 400,                 // set editor height
			  minHeight: null,             // set minimum height of editor
			  maxHeight: null,             // set maximum height of editor
			  focus: true                  // set focus to editable area after initializing summernote
			});
		</script>
		<div class="pt-1 text-right">
			<input id="btn-outline-secondary" class="btn btn-outline-secondary" type="submit" value="돌아가기"/>
			<input id="btn-outline-secondary" class="btn btn-outline-secondary" type="submit" value="글작성"/>
		</div>
		<script>
			//멥 에디터 때문에 btn css스타일 재정의
			$(function() {
				$('#btn-outline-secondary').css({"border":"1px solid #6c757d",
												"color":"#6c757d"});
				$('#btn-outline-secondary').hover(function(){
					$(this).css({"color":"white",
								"border":"#6c757d"});
				}, function(){
					$(this).css({"color":"#6c757d",
								"border":"1px solid #6c757d"});
				});
			});			
		</script>
		</div>
	</form>

</body>
</html>