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


            <hr style="color: gold;">

            <h5 style="color: gold;">Shipping Address Details</h5>
            <div class="form-group">
                <label for="shippingStreet" style="color: white;">Street Name:</label>
                <form:input path="cart.customer.shippingAddress.streetName" type="text" class="form-control"
                            id="shippingStreet" placeholder="Street Name" />
            </div>
            <div class="form-group">
                <label for="shippingApartmentNumber" style="color: white;">Apartment Number:</label>
                <form:input path="cart.customer.shippingAddress.apartmentNumber" type="text" class="form-control"
                            id="shippingApartmentNumber" placeholder="Apartment Number" />
            </div>
            <div class="form-group">
                <label for="shippingCity" style="color: white;">City Name:</label>
                <form:input path="cart.customer.shippingAddress.city" type="text" class="form-control"
                            id="shippingCity" placeholder="City Name" />
            </div>
            <div class="form-group">
                <label for="shippingState" style="color: white;">State Name:</label>
                <form:input path="cart.customer.shippingAddress.state" type="text" class="form-control"
                            id="shippingState" placeholder="Street Name" />
            </div>
            <div class="form-group">
                <label for="shippingCountry" style="color: white;">Country Name:</label>
                <form:input path="cart.customer.shippingAddress.country" type="text" class="form-control"
                            id="shippingCountry" placeholder="Country Name" />
            </div>
            <div class="form-group">
                <label for="shippingZip" style="color: white;">Zip Code:</label>
                <form:input path="cart.customer.shippingAddress.zipCode" type="text" class="form-control"
                            id="shippingZip" placeholder="Street Name" />
            </div>

            <hr style="color: gold;">

            <input type="hidden" name="_flowExecutionKey" />

            <button class="btn btn-warning btn-block" name="_eventId_backToCollectCustomerInfo">Back</button>
            <input type="submit" value="Next" class="btn btn-success btn-block" name="_eventId_shippingDetailCollected" />
            <button class="btn btn-warning btn-block" name="_eventId_cancel">Cancel</button>

        </form:form>

    </div>
</div>


<%@include file="/WEB-INF/view/template/footer.jsp"%>
