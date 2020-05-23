<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@include file="/WEB-INF/view/template/header.jsp"%>

<section class="jumbotron text-center"
         style="background-color: black; padding: 10px;">
    <div class="container">
        <h1 class="jumbotron-heading" style="color: cyan;">Customer</h1>
        <p class="text-muted">Customer Details</p>
    </div>
</section>
<div class="d-flex justify-content-center">
    <div class="col-md-4  py-5 bg-dark">

        <h4 class="text-center" style="color: gold;">Input your personal details</h4>
        <hr>

        <form:form commandName="order" class="form-horizontal">

            <div class="form-group">
                <label for="name" style="color: white;">Name:</label>
                <form:input path="cart.customer.customerName" type="text" class="form-control"
                            id="name" placeholder="Full Name" />
            </div>
            <div class="form-group">
                <label for="email" style="color: white;">E-Mail:</label>
                <form:input path="cart.customer.customerEmail" type="text" class="form-control"
                            id="email" placeholder="E-Mail Address" />
            </div>
            <div class="form-group">
                <label for="phone" style="color: white;">Phone no.:</label>
                <form:input path="cart.customer.customerPhone" type="text" class="form-control"
                            id="phone" placeholder="Phone Number" />
            </div>

            <hr style="color: gold;">

            <h5 style="color: gold;">Billing Address Details</h5>
            <div class="form-group">
                <label for="billingStreet" style="color: white;">Street Name:</label>
                <form:input path="cart.customer.billingAddress.streetName" type="text" class="form-control"
                            id="billingStreet" placeholder="Street Name" />
            </div>
            <div class="form-group">
                <label for="billingApartmentNumber" style="color: white;">Apartment Number:</label>
                <form:input path="cart.customer.billingAddress.apartmentNumber" type="text" class="form-control"
                            id="billingApartmentNumber" placeholder="Apartment Number" />
            </div>
            <div class="form-group">
                <label for="billingCity" style="color: white;">City Name:</label>
                <form:input path="cart.customer.billingAddress.city" type="text" class="form-control"
                            id="billingCity" placeholder="City Name" />
            </div>
            <div class="form-group">
                <label for="billingState" style="color: white;">State Name:</label>
                <form:input path="cart.customer.billingAddress.state" type="text" class="form-control"
                            id="billingState" placeholder="Street Name" />
            </div>
            <div class="form-group">
                <label for="billingCountry" style="color: white;">Country Name:</label>
                <form:input path="cart.customer.billingAddress.country" type="text" class="form-control"
                            id="billingCountry" placeholder="Country Name" />
            </div>
            <div class="form-group">
                <label for="billingZip" style="color: white;">Zip Code:</label>
                <form:input path="cart.customer.billingAddress.zipCode" type="text" class="form-control"
                            id="billingZip" placeholder="Street Name" />
            </div>

            <hr style="color: gold;">

            <input type="hidden" name="_flowExecutionKey" />


            <input type="submit" value="Next" class="btn btn-success btn-block" name="_eventId_customerInfoCollected" />
            <button class="btn btn-warning btn-block" name="_eventId_cancel">Cancel</button>

        </form:form>

    </div>
</div>


<%@include file="/WEB-INF/view/template/footer.jsp"%>
