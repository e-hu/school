<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<HTML>
<HEAD>
<%@ include file="../commons/commons.jsp"%>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="<spring:url value="/resources/css/404.css"></spring:url>"
	type=text/css rel=stylesheet>
<STYLE type=text/css>
img {
	margin: 0 auto;
}
.content {
	margin: 0 auto;
	text-align: center;
}
</STYLE>
</HEAD>
<BODY>
	<%@ include file="../commons/header.jsp"%>
	<div class="container">
		<img class="img-responsive"
			src="<spring:url value="/resources/images/404.gif"></spring:url>">
		<div class="content">			
		<P style="FONT-SIZE: 24px; LINE-HEIGHT: 70px">
			<spring:message code="404_title" />
		</P>
		<P style="MARGIN-BOTTOM: 30px">
			<spring:message code="404_check" />
		</P>
		<P style="FONT-SIZE: 14px; LINE-HEIGHT: 20px">
			<spring:message code="404_back" />
			<A href='<spring:url value="/"/>'><spring:message code="404_home" /></A>
		</P>
		</div>
	</div>
</BODY>
</HTML>