<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/WEB-INF/view/template/header.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />


<section class="jumbotron text-center" style="background-color: black; padding:10px;">
    <div class="container">
        <h1 class="jumbotron-heading" style="color: cyan;">Order</h1>
        <p class="text-muted">Order Confirmation</p>
    </div>
</section>

        <div class="container align-items-center" style="background-color: limegreen">

            <div class="row">

                <form:form commandName="order" class="form-horizontal">

                    <div class="container-fluid align-items-center">

                        <div class="text-center">
                            <h1>Receipt</h1>
                        </div>
                        <div class="row">
                            <div class="justify-content-center">
                                <address>
                                    <strong>Shipping Address</strong><br>
                                        ${order.cart.customer.shippingAddress.streetName}
                                    <br>
                                        ${order.cart.customer.shippingAddress.apartmentNumber}
                                    <br>
                                        ${order.cart.customer.shippingAddress.city}, ${order.cart.customer.shippingAddress.state}
                                    <br>
                                        ${order.cart.customer.shippingAddress.country}, ${order.cart.customer.shippingAddress.zipCode}
                                    <br>
                                </address>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                                <p>Shipping Date: <fmt:formatDate type="date" value="${now}"/></p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Billing Address</strong><br>
                                        ${order.cart.customer.billingAddress.streetName}
                                    <br>
                                        ${order.cart.customer.billingAddress.apartmentNumber}
                                    <br>
                                        ${order.cart.customer.billingAddress.city}, ${order.cart.customer.billingAddress.state}
                                    <br>
                                        ${order.cart.customer.billingAddress.country}, ${order.cart.customer.billingAddress.zipCode}
                                    <br>
                                </address>
                            </div>
                        </div>
                        <div class="row">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>#</th>
                                    <th class="text-center">Price</th>
                                    <th class="text-center">Total</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="cartItem" items="${order.cart.cartItems}" >
                                    <tr>
                                        <td><em>${cartItem.product.productName}</em></td>
                                        <td style="text-align: center">${cartItem.quantity}</td>
                                        <td style="text-align: center">${cartItem.product.productPrice}</td>
                                        <td style="text-align: center">${cartItem.totalPrice}</td>
                                    </tr>
                                </c:forEach>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="text-right">
                                        <h4><strong>Grand Total: </strong></h4>
                                    </td>
                                    <td class="text-center text-danger">
                                        <h4><strong>$ ${order.cart.grandTotal}</strong></h4>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <input type="hidden" name="_flowExecutionKey" />

                        <br><br>
                        <div class="align-content-center">
                        <button class="btn btn-warning" name="_eventId_backToCollectShippingDetail">Back</button>
                        <input type="submit" value="Submit Order" class="btn btn-success"
                               name="_eventId_orderConfirmed"/>
                        <button class="btn btn-danger" name="_eventId_cancel">Cancel</button>
                        </div>
                    </div>
                </form:form>

            </div>
        </div>


        <%@include file="/WEB-INF/view/template/footer.jsp" %>
