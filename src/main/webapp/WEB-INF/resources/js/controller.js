
var cartApp = angular.module("cartApp", []);

cartApp.controller("cartCtrl", function ($scope, $http) {

    $scope.refreshCart = function () {
        $http.get('/AutoHeaven/rest/cart/' + $scope.cartId).success(function (data) {
            $scope.cart=data;
        })
    };

    $scope.clearCart = function () {
        $http.delete('/AutoHeaven/rest/cart/'+$scope.cartId).success($scope.refreshCart());
    };

    $scope.initCartId = function (cartId) {
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function (productId) {
        $http.put('/AutoHeaven/rest/cart/add/'+productId).success(function () {
        alert("Product successfully added in the cart");
        });
    };

    $scope.removeFromCart = function (productId) {
        $http.put('/AutoHeaven/rest/cart/remove/' +productId).success(function (data) {
            $scope.refreshCart();
        });
    };

    $scope.calGrandTotal = function () {
        var grandTotal = 0;

        for (var i=0; i<$scope.cart.cartItems.length; i++){
            grandTotal += $scope.cart.cartItems[i].totalPrice;
        }

        return grandTotal;
    }

});
