package com.autoheaven.controller;

import com.autoheaven.DatabaseAccessObject.ProductDAO;
import com.autoheaven.model.Product;
import com.autoheaven.service.ProductService;
import org.apache.commons.io.IOExceptionWithCause;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping("/productList")
    public String getProducts(Model model){
        List<Product> products = productService.getProductList();
        model.addAttribute("products", products);

        return "productList";
    }

    @RequestMapping("/viewProduct/{productId}")
    public String viewProduct(@PathVariable int productId, Model model) throws IOException{
        Product product = productService.getProductById(productId);
        model.addAttribute("product", product);

        return "viewProduct";
    }

    @RequestMapping("/productList/searchResults/{searchStr}")
   public String getSearchResults(@PathVariable String searchStr, Model model){
        List<Product> searchResults = productService.getSearchResults(searchStr);
        model.addAttribute("searchResults", searchResults);

        return "searchResults";
   }

}
