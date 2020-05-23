<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@include file="/WEB-INF/view/template/header.jsp"%>

<section class="jumbotron text-center"
	style="background-color: black; padding: 10px;">
	<div class="container">
		<h1 class="jumbotron-heading" style="color: cyan;">Add Product
			Section</h1>
		<p class="text-muted">Here we can add new Cars</p>
	</div>
</section>
<div class="d-flex justify-content-center">
	<div class="col-md-4  py-5 bg-dark">

		<h4 class="text-center" style="color: white;">Input car details</h4>
		<hr>

		<form:form
			action="${pageContext.request.contextPath }/admin/product/addProduct"
			method="post" commandName="product" enctype="multipart/form-data">

			<div class="form-group">
				<label for="name" style="color: white;">Car Name:</label> <form:errors path="productName" cssStyle="color: gold;"/>
				<form:input path="productName" type="text" class="form-control"
					id="name" placeholder="Car Name" />
			</div>
			<div class="form-group">
				<label for="manufacturer" style="color: white;">Car
					Manufacturer:</label>
				<form:input path="productManufacturer" type="text"
					class="form-control" id="manufacturer"
					placeholder="Car Manufacturer" />
			</div>
			<div class="form-group">
				<label for="model" style="color: white;">Car Model:</label>
				<form:input path="productModel" type="text" class="form-control"
					id="model" placeholder="Car Model" />
			</div>

			<div class="form-group">
				<label for="type" style="color: white;">Car Body Type:</label>
				<form:input path="productBodyType" type="text" class="form-control"
					id="type" placeholder="Car Body Type" />

				<div class="form-group">
					<label for="engine" style="color: white;">Car Engine:</label>
					<form:input path="productEngine" type="text" class="form-control"
						id="engine" placeholder="Car Engine" />
				</div>
				<div class="form-group">
					<label for="transmission" style="color: white;">Car
						Transmission:</label>
					<form:input path="productTransmission" type="text"
						class="form-control" id="transmission"
						placeholder="Car Transmission" />
				</div>
				<div class="form-group">
					<label for="desc" style="color: white;">Car Description:</label>
					<form:textarea path="productDescription" type="text"
						class="form-control" id="desc" placeholder="Car Description" />
				</div>

				<div class="form-group">
					<label for="status" style="color: white;">Car Status:</label>
					<form:select path="productStatus" type="text" class="form-control"
						id="status" placeholder="Car Status">
						<option>New</option>
						<option>Used</option>
					</form:select>
				</div>

			</div>
			<div class="form-group">
				<label for="year" style="color: white;">Car Year:</label>
				<form:input path="productYear" type="text" class="form-control"
					id="year" placeholder="Car Year" />

				<div class="form-group">
					<label for="price" style="color: white;">Car Price:</label> <form:errors path="productPrice" cssStyle="color: gold;"/>
					<form:input path="productPrice" type="text" class="form-control"
						id="price" placeholder="Car Price" />
				</div>

				<div class="form-group">
					<label for="stock" style="color: white;">Units in Stock:</label> <form:errors path="unitInStock" cssStyle="color: gold;"/>
					<form:input path="unitInStock" type="text" class="form-control"
						id="stock" placeholder="Units in stock" />
				</div>

				<div class="form-group">
					<label for="productImage" style="color: white;">Upload an
						image:</label>
					<form:input id="productImage" path="productImage" type="file"
						class="form:input-large" />
				</div>

			</div>
			<br>
			<input type="submit" value="Submit" class="btn btn-success btn-block">
			<a href="<c:url value="/admin/productInventory"/>"
				class="btn btn-warning btn-block">Cancel</a>

		</form:form>

	</div>
</div>


<%@include file="/WEB-INF/view/template/footer.jsp"%>
