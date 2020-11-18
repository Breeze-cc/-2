<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<html>
<head>
    <title>客户列表</title>
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
                    Demo01：实现增删改查
                </h1>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>换货客户列表（粗略显示）</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${path}/customer/toAddCustomer">新增</a>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>客户编码</th>
                    <th>客户名称</th>
                    <th>邮政编码</th>
                    <th>详细送货地址</th>

                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="customer" items="${requestScope.get('list')}" varStatus="status">
                    <tr>
                        <td>${customer.customerId}</td>
                        <td>${customer.customerName}</td>
                        <td>${customer.customerNum}</td>
                        <td>${customer.customerDetail}</td>
                        <td>
                            <a href="${path}/customer/toUpdateCustomer?id=${customer.customerId}">更改</a> |
                            <a href="${path}/customer/del/${customer.customerId}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
