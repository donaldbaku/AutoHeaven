package com.autoheaven.DatabaseAccessObject;

import com.autoheaven.model.Customer;

import java.util.List;

public interface CustomerDAO {

    void addCustomer(Customer customer);

    Customer getCustomerById(int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername(String username);

}
