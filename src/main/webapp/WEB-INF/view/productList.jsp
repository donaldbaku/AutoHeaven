<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@include file="/WEB-INF/view/template/header.jsp"%>



<!--===================================================================-->

<main>

	<section class="jumbotron text-center" style="background-color: black;">
		<div class="container">
			<h1 class="jumbotron-heading" style="color: cyan;">All of our Products</h1>
			<p class="lead " style="color: cyan;">Discover everything we have in stock right now. From electric to offroad capabilities, it is all in here. </p>

			<div class="row justify-content-center">
				<form class="form-inline mt-0 mt-md-0" id="searchForm" onsubmit="searchFunc()">
				<input class="form-control mr-sm-2" type="text" name="searchStr" required
				   placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				</form>

				<script>
					function searchFunc() {
						var actionURL = "/AutoHeaven/product/productList/searchResults/" + document.getElementsByName("searchStr")[0].value;
						var myForm = document.getElementById('searchForm');
						myForm.action = actionURL;

					}
				</script>


			</div>
		</div>

	</section>



	<!--===================================================================-->


	<div class="album py-5 bg-dark">
		<div class="container">
			<div class="row">
				<c:forEach items="${products}" var="product">
					<div class="col-md-4">
						<div class="card mb-4 box-shadow">
							<img class="card-img-top img-fluid img-thumbnail rounded"
								 src="<c:url value="/resources/images/${product.productId}.png" />"
								alt="Card image cap">
							<div class="card-body">

								<h3 class="card-text">${product.productName }</h3>
								<p class="card-text">${product.productDescription }</p>
								<p class="card-text">Price: ${product.productPrice } EUR</p>

								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group justify-content-center">

										<a
											href="<spring:url value="/product/viewProduct/${product.productId}" />">
											<button
												type="button" class="btn btn-success btn-block">View
											</button>
										</a>

									</div>
								</div>
							</div>
						</div>
					</div>
					</ul>
				</c:forEach>
			</div>
		</div>
	</div>

</main>

<%@include file="/WEB-INF/view/template/footer.jsp"%>
