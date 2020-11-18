package com.dao;

import com.pojo.Customer;

import java.util.List;

public interface CustomerDao
{
    void addCustomer(Customer customer);

    void deleteCustomerById(long id);

    void updateCustomer(Customer customer);

    Customer queryById(long id);

    List<Customer> queryAllCustomer();


}
