<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@include file="/WEB-INF/view/template/header.jsp"%>

<section class="jumbotron text-center" style="background-color: black; padding:10px;">
		<div class="container">
			<h1 class="jumbotron-heading" style="color: cyan;">Admin Section</h1>
			<p class="text-muted">input text here</p>
		</div>
	</section>

<c:if test="${pageContext.request.userPrincipal.name != null}">
	<h2>
		Welcome: ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/j_spring_security_logout" />">Logout</a>
	</h2>
</c:if>


<section class="jumbotron bg-dark text-center" style="padding: 20px;">
	<a href="<spring:url value="/admin/productInventory"/>"><button type="submit" class="btn btn-success">Go to Product Inventory</button></a>
</section>

<br>

<section class="jumbotron bg-dark text-center" style="padding: 20px;">
	<a href="<spring:url value="/admin/customer"/>"><button type="submit" class="btn btn-success">Go to Customer Managment</button></a>
</section>



<%@include file="/WEB-INF/view/template/footer.jsp"%>
