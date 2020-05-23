<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@include file="/WEB-INF/view/template/header.jsp"%>




<!--===================================================================-->

<main>

	<section class="jumbotron text-center"
		style="background-color: black; padding: 20px;">
		<div class="container">
			<h1 class="jumbotron-heading" style="color: cyan;">Product
				Inventory</h1>
		</div>
	</section>



	<!--===================================================================-->




					<div class="table-responsive">
						<table class="table tabble-striped table-dark table-bordered">
							<thead>
								<tr>
									<th>Photo</th>									
									<th>Manufacturer:</th>
									<th>Model</th>
									<th>Year of production</th>
									<th>Body Type</th>
									<th>Engine</th>
									<th>Transmission</th>
									<th>Price</th>
									<th>Action</th>

								</tr>
							</thead>
				<c:forEach items="${products}" var="product">

							<tbody>
								<tr>
									<td><img alt="image" style="width: 10em;" src="<c:url value="/resources/images/${product.productId}.png" />"></td>
																	
									<td>${product.productManufacturer }</td>
								
									<td>${product.productModel }</td>
									
									<td>${product.productYear }</td>
									
									<td>${product.productBodyType }</td>
									
									<td>${product.productEngine }</td>
									
									<td>${product.productTransmission }</td>
									
									<td>EUR:${product.productPrice }</td>
									
									<td>
										<a href= "<spring:url value ="/admin/product/editProduct/${product.productId }"  />"><button type="button" class="btn btn-success">Edit</button></a>
										<a href= "<spring:url value ="/admin/product/deleteProduct/${product.productId }"  />"><button type="button" class="btn btn-danger">Delete</button></a>
									</td>
								</tr>
							</tbody>
				</c:forEach>
	
						</table>
					</div>



	
</main>

<section class="jumbotron bg-dark text-center" style="padding: 20px;">
	<a href="<spring:url value="/admin/product/addProduct"/>"><button type="submit" class="btn btn-success">Add
		a Product</button></a>
</section>

<%@include file="/WEB-INF/view/template/footer.jsp"%>
