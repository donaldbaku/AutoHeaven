<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@include file="/WEB-INF/view/template/header.jsp"%>

<section class="jumbotron text-center"
         style="background-color: black; padding: 10px;">
    <div class="container">
        <h1 class="jumbotron-heading" style="color: cyan;">Register Customer</h1>
        <p class="text-muted">Here we can register for a new account</p>
    </div>
</section>
<div class="d-flex justify-content-center">
    <div class="col-md-4  py-5 bg-dark">

        <h4 class="text-center" style="color: gold;">Input your personal details</h4>
        <hr>

        <form:form
                action="${pageContext.request.contextPath }/register"
                method="post" commandName="customer">

            <div class="form-group">
                <label for="name" style="color: white;">Name:</label><form:errors cssStyle="color: gold" path="customerName" />
                <form:input path="customerName" type="text" class="form-control"
                            id="name" placeholder="Full Name" />
            </div>
            <div class="form-group">
                <label for="email" style="color: white;">E-Mail:</label><span style="color: gold">${emailMsg}</span><form:errors cssStyle="color: gold" path="customerEmail" />
                <form:input path="customerEmail" type="text" class="form-control"
                            id="email" placeholder="E-Mail Address" />
            </div>
            <div class="form-group">
                <label for="phone" style="color: white;">Phone no.:</label>
                <form:input path="customerPhone" type="text" class="form-control"
                            id="phone" placeholder="Phone Number" />
            </div>
            <div class="form-group">
                <label for="username" style="color: white;">Username:</label><span style="color: gold">${usernameMsg}</span><form:errors cssStyle="color: gold" path="customerUsername" />
                <form:input path="customerUsername" type="text" class="form-control"
                            id="username" placeholder="Username" />
            </div>
            <div class="form-group">
                <label for="password" style="color: white;">Password:</label><form:errors cssStyle="color: gold" path="password" />
                <form:password path="password"  class="form-control"
                            id="password" placeholder="Password" />
            </div>
            <hr style="color: gold;">
            <h5 style="color: gold;">Billing Address Details</h5>
            <div class="form-group">
                <label for="billingStreet" style="color: white;">Street Name:</label>
                <form:input path="billingAddress.streetName" type="text" class="form-control"
                            id="billingStreet" placeholder="Street Name" />
            </div>
            <div class="form-group">
                <label for="billingApartmentNumber" style="color: white;">Apartment Number:</label>
                <form:input path="billingAddress.apartmentNumber" type="text" class="form-control"
                            id="billingApartmentNumber" placeholder="Apartment Number" />
            </div>
            <div class="form-group">
                <label for="billingCity" style="color: white;">City Name:</label>
                <form:input path="billingAddress.city" type="text" class="form-control"
                            id="billingCity" placeholder="City Name" />
            </div>
            <div class="form-group">
                <label for="billingState" style="color: white;">State Name:</label>
                <form:input path="billingAddress.state" type="text" class="form-control"
                            id="billingState" placeholder="State Name" />
            </div>
            <div class="form-group">
                <label for="billingCountry" style="color: white;">Country Name:</label>
                <form:input path="billingAddress.country" type="text" class="form-control"
                            id="billingCountry" placeholder="Country Name" />
            </div>
            <div class="form-group">
                <label for="billingZip" style="color: white;">Zip Code:</label>
                <form:input path="billingAddress.zipCode" type="text" class="form-control"
                            id="billingZip" placeholder="Zip Code" />
            </div>
            <hr style="color: gold;">
            <h5 style="color: gold;">Shipping Address Details</h5>
            <div class="form-group">
                <label for="shippingStreet" style="color: white;">Street Name:</label>
                <form:input path="shippingAddress.streetName" type="text" class="form-control"
                            id="shippingStreet" placeholder="Street Name" />
            </div>
            <div class="form-group">
                <label for="shippingApartmentNumber" style="color: white;">Apartment Number:</label>
                <form:input path="shippingAddress.apartmentNumber" type="text" class="form-control"
                            id="shippingApartmentNumber" placeholder="Apartment Number" />
            </div>
            <div class="form-group">
                <label for="shippingCity" style="color: white;">City Name:</label>
                <form:input path="shippingAddress.city" type="text" class="form-control"
                            id="shippingCity" placeholder="City Name" />
            </div>
            <div class="form-group">
                <label for="shippingState" style="color: white;">State Name:</label>
                <form:input path="shippingAddress.state" type="text" class="form-control"
                            id="shippingState" placeholder="Street Name" />
            </div>
            <div class="form-group">
                <label for="shippingCountry" style="color: white;">Country Name:</label>
                <form:input path="shippingAddress.country" type="text" class="form-control"
                            id="shippingCountry" placeholder="Country Name" />
            </div>
            <div class="form-group">
                <label for="shippingZip" style="color: white;">Zip Code:</label>
                <form:input path="shippingAddress.zipCode" type="text" class="form-control"
                            id="shippingZip" placeholder="Zip Code" />
            </div>










            <br>
            <input type="submit" value="Submit" class="btn btn-success btn-block">
            <a href="<c:url value="/"/>"
               class="btn btn-warning btn-block">Cancel</a>

        </form:form>

    </div>
</div>


<%@include file="/WEB-INF/view/template/footer.jsp"%>
