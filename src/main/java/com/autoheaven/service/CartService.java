package com.autoheaven.service;

import com.autoheaven.model.Cart;

public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);

}
