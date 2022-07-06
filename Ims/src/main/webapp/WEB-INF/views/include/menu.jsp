<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<a href="/spring/upload/input.do">업로드 테스트</a> |
<a href="/spring/shop/product/list.do">상품리스트</a>

<div style="text-align:right;">

<c:choose>

<c:when test="${sessionScope.userid == null }">

<a href="/spring/member/login.do">로그인</a> |

<a href="/spring/admin/login.do">관리자 로그인</a>

<a href="/spring/shop/cart/list.do">장바구니</a>

</c:when>

<c:otherwise>

${sessionScope.name}님이 로그인중입니다.

<a href="/spring/member/logout.do">로그아웃</a> |

<a href="/spring/admin/logout.do">관리자 로그아웃</a>

<a href="/spring/shop/cart/list.do">장바구니</a>

</c:otherwise>

</c:choose>

</div>

<hr>