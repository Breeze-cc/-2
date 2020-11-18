package com.service.impl;

import com.dao.CustomerDao;
import com.pojo.Customer;
import com.service.CustomerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CustomerServiceImpl implements CustomerService
{

    @Autowired
    private CustomerDao customerDao;

    @Override
    public void addCustomer(Customer customer) {
        customerDao.addCustomer(customer);
    }

    @Override
    public void deleteCustomer(long id) {
        customerDao.deleteCustomerById(id);
    }

    @Override
    public void updateCustomer(Customer customer) {
        customerDao.updateCustomer(customer);
    }

    @Override
    public Customer queryById(long id) {
        return customerDao.queryById(id);
    }

    @Override
    public List<Customer> queryAllCustomer() {
        List<Customer> customers = customerDao.queryAllCustomer();
        return customers;
    }
}
