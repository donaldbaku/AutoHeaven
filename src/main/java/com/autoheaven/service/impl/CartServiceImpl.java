package com.autoheaven.service.impl;

import com.autoheaven.DatabaseAccessObject.CartDAO;
import com.autoheaven.model.Cart;
import com.autoheaven.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartDAO cartDAO;

    public Cart getCartById(int cartId){
        return cartDAO.getCartById(cartId);
    }

    public void update(Cart cart){
        cartDAO.update(cart);
    }

}
