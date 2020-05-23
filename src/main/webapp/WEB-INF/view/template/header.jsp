<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

<title>AutoHeaven Ltd.</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.0/examples/carousel/">


	<!-- Angular JS -->
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

	<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>

	<script type="text/javascript" src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>



<!-- Bootstrap core CSS -->
<link href="<c:url value="//resources/css/bootstrap.min.css" />"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="//resources/css/carousel.css" />"
	rel="stylesheet">

	<link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">

</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
			<a class="navbar-brand" href=" <c:url value ="/" />">AutoHeaven</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarCollapse" aria-controls="navbarCollapse"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="nav navbar-nav mr-auto ">

					<li class="nav-item active"><a class="nav-link" href=" <c:url value ="/" />">Home</a></li>

					<li class="nav-item"><a class="nav-link"
						href=" <c:url value ="/product/productList" />">Products</a></li>

					<li class="nav-item"><a class="nav-link" href="<c:url value="/aboutUs"/>">About Us</a></li>

				</ul>
			<ul class="nav navbar-nav pull-right">
				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<li><a class="nav-link">Welcome: ${pageContext.request.userPrincipal.name}</a></li>
					<li><a class="nav-link" href="<c:url value="/j_spring_security_logout"/> ">Logout</a></li>
					<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
						<li><a class="nav-link" href="<c:url value="/customer/cart" /> ">Cart</a></li>
					</c:if>
					<c:if test="${pageContext.request.userPrincipal.name == 'admin' }">
						<li><a class="nav-link" href="<c:url value="/admin"/> ">Admin</a></li>
					</c:if>
				</c:if>
				<c:if test="${pageContext.request.userPrincipal.name == null }">
				<li><a class="nav-link" href=" <c:url value ="/login" />">Log In</a></li>
				<li><a class="nav-link" href="<c:url value="/register" />">Register</a></li>
				</c:if>
			</ul>

			</div>
		</nav>
	</header>
