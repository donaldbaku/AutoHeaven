<%@include file="/WEB-INF/view/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron bg-info">
                <div class="container">
                    <h1>Shopping Cart</h1>
                    <p>Review all your selected products</p>
                </div>
            </div>
        </section>

        <section class="container" ng-app="cartApp">
            <div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">
            <div>
                <a class="btn btn-danger pull-left" ng-click="clearCart()">Clear Cart</a>
            </div>

            <table class="table table-hover table-dark table-bordered table-striped">
                <tr>
                    <th>Product</th>
                    <th>Unit Price</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>
                <tr ng-repeat="item in cart.cartItems">
                    <td>{{item.product.productName}}</td>
                    <td>{{item.product.productPrice}}</td>
                    <td>{{item.quantity}}</td>
                    <td>{{item.totalPrice}}</td>
                    <td><a href="#" class="btn btn-danger" ng-click="removeFromCart(item.product.productId)">Remove</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>Grand Total</td>
                    <td>{{calGrandTotal()}}</td>
                    <td></td>
                </tr>
            </table>


            <a href="<c:url value="/product/productList"/>" class="btn btn-warning">Continue Shopping</a>
                <a href="<c:url value="/order/${cartId}"/>" class="btn btn-success pull-right">Check Out</a>

            </div>
        </section>


    </div>
</div>









<script src="<c:url value="//resources/js/controller.js"/>"></script>
<%@include file="/WEB-INF/view/template/footer.jsp"%>
