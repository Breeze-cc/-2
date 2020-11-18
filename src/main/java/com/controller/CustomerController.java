package com.controller;

import com.pojo.Customer;
import com.service.CustomerService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer")
public class CustomerController
{
    @Autowired
    private CustomerService customerService;

    @RequestMapping("/allCustomer")
    public String list(Model model) {
        List<Customer> list;
        list = customerService.queryAllCustomer();
        model.addAttribute("list", list);
        return "allCustomer";
    }

    @RequestMapping("toAddCustomer")
    public String toAddCustomer() {
        return "addCustomer";
    }

    @RequestMapping("/addCustomer")
    public String addCustomer(Customer customer) {
        customerService.addCustomer(customer);
        return "redirect:/customer/allCustomer";
    }

    @RequestMapping("/del/{customerId}")
    public String deleteCustomer(@PathVariable("customerId") Long id) {
        customerService.deleteCustomer(id);
        return "redirect:/customer/allCustomer";
    }

    @RequestMapping("toUpdateCustomer")
    public String toUpdateCustomer(Model model, Long id) {
        model.addAttribute("customer", customerService.queryById(id));
        return "updateCustomer";
    }

    @RequestMapping("/updateCustomer")
    public String updateCustomer(Model model, Customer customer) {
        customerService.updateCustomer(customer);
        customer = customerService.queryById(customer.getCustomerId());
        model.addAttribute("customer", customer);
        return "redirect:/customer/allCustomer";
    }
}


