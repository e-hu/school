<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../commons/commons.jsp"%>
<style type="text/css">
.page-500 {
	text-align: center;
}

.page-500 .number {
	display: inline-block;
	letter-spacing: -10px;
	line-height: 128px;
	font-size: 128px;
	font-weight: 300;
	color: #ec8c8c;
	text-align: right;
}

.page-500 .details {
	margin-left: 40px;
	display: inline-block;
	text-align: left;
}
.mar-t-50 {
	margin-top: 50px;
}
</style>
</head>
<body>
	<%@ include file="../commons/header.jsp"%>
	<div class="container">
		<div class="row mar-t-50">
			<div class="col-md-12 page-500">
				<div class=" number">500</div>
				<div class=" details">
					<h3>Oops! Something went wrong.</h3>
					<p>
						We are fixing it!<br> Please come back in a while.<br> <br>
					</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>