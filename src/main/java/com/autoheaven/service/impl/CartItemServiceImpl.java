package com.autoheaven.service.impl;

import com.autoheaven.DatabaseAccessObject.CartItemDAO;
import com.autoheaven.model.Cart;
import com.autoheaven.model.CartItem;
import com.autoheaven.service.CartItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartItemServiceImpl  implements CartItemService {

    @Autowired
    private CartItemDAO cartItemDAO;

    public void addCartItem(CartItem cartItem){
        cartItemDAO.addCartItem(cartItem);
    }

    public void removeCartItem(CartItem cartItem){
        cartItemDAO.removeCartItem(cartItem);
    }

    public void removeAllCartItems(Cart cart){
        cartItemDAO.removeAllCartItems(cart);
    }

    public CartItem getCartItemByProductId(int productId){
        return cartItemDAO.getCartItemByProductId(productId);
    }

}
