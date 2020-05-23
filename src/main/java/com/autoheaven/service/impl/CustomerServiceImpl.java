package com.autoheaven.service.impl;

import com.autoheaven.DatabaseAccessObject.CustomerDAO;
import com.autoheaven.model.Customer;
import com.autoheaven.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerDAO customerDAO;

    public void addCustomer (Customer customer){
        customerDAO.addCustomer(customer);
    }

    public Customer getCustomerById(int customerId){
        return customerDAO.getCustomerById(customerId);
    }

    public List<Customer> getAllCustomers(){
        return customerDAO.getAllCustomers();
    }

    public Customer getCustomerByUsername(String username){
        return customerDAO.getCustomerByUsername(username);
    }


}
