package com.service;

import com.pojo.Customer;

import java.util.List;

public interface CustomerService
{
    void addCustomer(Customer customer) ;//增
    void deleteCustomer(long id); //删
    void updateCustomer(Customer customer);//改
    Customer queryById(long id);//查
    List<Customer> queryAllCustomer();//查询所有
}
