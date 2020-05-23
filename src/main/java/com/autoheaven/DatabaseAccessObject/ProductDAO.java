package com.autoheaven.DatabaseAccessObject;

import java.util.List;

import com.autoheaven.model.Product;

public interface ProductDAO {

	List<Product> getProductList();

	Product getProductById(int id);

	void addProduct(Product product);

	void editProduct(Product product);

	void deleteProduct(Product product);

	List<Product> getSearchResults(String searchStr);
}
