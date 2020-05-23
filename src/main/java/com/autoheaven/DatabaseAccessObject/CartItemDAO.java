package com.autoheaven.DatabaseAccessObject;

import com.autoheaven.model.Cart;
import com.autoheaven.model.CartItem;

public interface CartItemDAO {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);

}
