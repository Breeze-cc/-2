<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<html>
<head>
    <title>修改客户信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    Demo01:实现增删改查
                </h1>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="" name="userForm">
        <input type="hidden" name="customerId" value="${customer.customerId}"/>
        客户名称：<input type="text" name="customerName" value="${customer.customerName}"/>
        邮政编码：<input type="text" name="customerNum" value="${customer.customerNum}"/>
        送货地址：<input type="text" name="customerDetail" value="${customer.customerDetail }"/>
        <input type="button" value="提交" onclick="updateCustomer()"/>
    </form>
    <script type="text/javascript">
        function updateCustomer() {
            var form = document.forms[0];
            form.action = "${path}/customer/updateCustomer";
            form.method = "post";
            form.submit();
        }
    </script>
</div>