package com.autoheaven.service.impl;


import com.autoheaven.DatabaseAccessObject.ProductDAO;
import com.autoheaven.model.Product;
import com.autoheaven.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDAO productDAO;

    public Product getProductById(int productId){
        return productDAO.getProductById(productId);
    }

    public List<Product> getProductList(){
        return productDAO.getProductList();
    }

    public List<Product> getSearchResults(String searchStr){
        return productDAO.getSearchResults(searchStr);
    }

    public void addProduct(Product product){
        productDAO.addProduct(product);
    }

    public void editProduct(Product product){
        productDAO.editProduct(product);
    }

    public void deleteProduct(Product product){
        productDAO.deleteProduct(product);
    }

}
