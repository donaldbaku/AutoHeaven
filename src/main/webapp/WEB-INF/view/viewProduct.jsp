<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>



<!-- Page Content -->
<div class="container" ng-app = "cartApp">

	<!-- Portfolio Item Heading -->
	<h1 class="my-4 text-white">
		${product.productName } <small class="text-muted">${product.productDescription }</small>
	</h1>
<hr>
	<!-- Portfolio Item Row -->
	<div class="row">

		<div class="col-md-7">
			<img class="img-fluid"
				 src="<c:url value="/resources/images/${product.productId}.png" />" alt="image">
		</div>

		<div class="col-md-5">
				<table class="table table-dark">
					<thead>
						<tr>
							<th scope="col"><h3 class="my-2 text-white">Car Details</h3></th>

						</tr>
					</thead>
					
					<tbody>
						<tr>
							<td>Manufacturer:</td>
							<td>${product.productManufacturer }</td>
						</tr>
						<tr>
							<td>Model</td>
							<td>${product.productModel }</td>
						</tr>
						<tr>
							<td>Year of production</td>
							<td>${product.productYear }</td>
						</tr>
						<tr>
							<td>Body Type</td>
							<td>${product.productBodyType }</td>
						</tr>
						<tr>
							<td>Engine</td>
							<td>${product.productEngine }</td>
						</tr>
						<tr>
							<td>Transmission</td>
							<td>${product.productTransmission }</td>
						</tr>
						<tr>
							<td>Price</td>
							<td>EUR:${product.productPrice }</td>
						</tr>
					</tbody>
				</table>

			<c:set var="role" scope="page" value="${param.role}" />
			<c:set var="url" scope="page" value="/product/productList" />
			<c:if test="${role='admin'}">
				<c:set var="url" scope="page" value="/admin/productInventory" />
			</c:if>
			<p ng-controller="cartCtrl" style="margin: auto">
				<a href="<c:url value="${url}" />" class="btn btn-success">Go Back</a>
				<a href="#" class="btn btn-warning btn-large" ng-click="addToCart('${product.productId}')">Add to Cart</a>
				<a href="<spring:url value="/customer/cart/"/>" class="btn btn-success">View Cart</a>
			</p>


			</div>

		</div>

	</div>
	<!-- /.row -->





</div>
<!-- /.container -->


<script src="<c:url value="//resources/js/controller.js"/>"></script>
<%@include file="/WEB-INF/view/template/footer.jsp"%>
