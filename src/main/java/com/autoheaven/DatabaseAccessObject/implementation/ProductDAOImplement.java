package com.autoheaven.DatabaseAccessObject.implementation;

import java.util.List;

import javax.persistence.Table;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.autoheaven.DatabaseAccessObject.ProductDAO;
import com.autoheaven.model.Product;
import org.springframework.web.bind.annotation.PathVariable;


@Repository
@Transactional
public class ProductDAOImplement implements ProductDAO {

	
	@Autowired
	private SessionFactory sessionFactory;

	public Product getProductById(int id){
		Session session = sessionFactory.getCurrentSession();
		Product product = (Product) session.get(Product.class, id);
		session.flush();

		return product;
	}

	public List<Product> getProductList(){
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Product");
		List<Product> productList = query.list();
		session.flush();

		return productList;
	}

	public List<Product> getSearchResults(String searchStr){
		Session session = sessionFactory.getCurrentSession();
		Query searchQuery = session.createQuery("from Product where productName like ?");
		searchQuery.setString(0, "%"+searchStr+"%");
		List<Product> searchProductsList = searchQuery.list();
		session.flush();

		return searchProductsList;
	}

	public void addProduct(Product product){
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
		session.flush();
	}

	public void editProduct(Product product){
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
		session.flush();
	}

	public void deleteProduct(Product product){
		Session session = sessionFactory.getCurrentSession();
		session.delete(product);
		session.flush();
	}


}
