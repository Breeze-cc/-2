package com.pojo;

public class Customer {
    private long customerId;
    private String customerName;
    private int customerNum;
    private String customerDetail;

    public long getCustomerId() {
        return customerId;
    }

    public void setCustomerId(long customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public int getCustomerNum() {
        return customerNum;
    }

    public void setCustomerNum(int customerNum) {
        this.customerNum = customerNum;
    }

    public String getCustomerDetail() {
        return customerDetail;
    }

    public void setCustomerDetail(String customerDetail) {
        this.customerDetail = customerDetail;
    }

}