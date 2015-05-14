<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button"
				data-toggle="collapse" data-target=".bs-navbar-collapse">
				<span class="sr-only"><spring:message
						code="title_navigation_toggle" /></span> <span class="icon-bar"></span>
				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a href="<spring:url value="/"/>" class="navbar-brand"><spring:message
					code="app_id" /></a>
		</div>
		<nav class="collapse navbar-collapse bs-navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="<spring:url value="/bill"/>"><spring:message
							code="app_index" /> </a></li>
				<!-- <li><a href="#">Link</a></li> -->
				<li><a href='<spring:url value="/bill"></spring:url>'><spring:message
							code="title_bill"></spring:message></a>
				</li>
				<li role="presentation" class="dropdown">
					<a
						class="dropdown-toggle" data-toggle="dropdown" href="#"
						role="button" aria-expanded="false"> Dropdown <span
							class="caret"></span>
					</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">账单列表</a></li>
						<li><a href="#">添加账单</a></li>
						<li><a href="#">账单分析</a></li>
					</ul>
				</li>
				<li><a href="<spring:url value="/blog"/>"><spring:message
							code="title_blog" /> </a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="<spring:url value="/login"/>"><spring:message
							code="title_login" /></a></li>
				<li><a href="<spring:url value="/register"/>"><spring:message
							code="title_register" /></a></li>
			</ul>
		</nav>
	</div>
</header>
<script type="text/javascript">
	function setTabIndex(index) {
		var ele = $("nav ul li").eq(index);
		ele.addClass("active");
		ele.find("a").append('<span class="sr-only">(current)</span>');
	}
</script>