<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>万家乐OCP管理系统</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/5.13.0/css/all.css">
    <%--<link rel="stylesheet" href="./login.css">--%>
    <style>

        body{
            background-image:url('http://inews.gtimg.com/newsapp_ls/0/11535311052/0');
            background-size: cover;
            background-repeat: no-repeat;
        }
        #login_box{
            width: 20%;
            height: 400px;
            background:#00000040;
            margin:auto;
            margin-top: 10%;
            text-align: center;
            border-radius: 10px;
            padding: 50px 50px;
        }
        #login_box h2{
            color: #ffffff;
            margin-top: 5%;
        }
        #login_box #form #input_box{
            margin-top: 5%;
        }
        #login_box #form #input_box i{
            color: #e8e7b730;
        }
        #login_box #form #input_box input{
            border:0;
            width: 60%;
            font-size: 15px;
            color: #fff;
            background: #ffffff00;
            border-bottom: 2px solid#eacda950;
            padding: 5px 10px;
            margin-top: 10px;
        }
        #login_box button{
            margin-top: 50px;
            width: 40%;
            height: 30px;
            border-radius: 10px;
            border: 0;
            color: #fff;
            font-size: 15px;
            background-image: linear-gradient(to top, #30324d 0%, #5f6298 100%);
        }
        #login_box #Sign{
            margin-top: 45%;
            margin-left: 60%;
        }
        #login_box #Sign a{
            color: #d1c2d8;
        }
    </style>
</head>

<body>
<div id="login_box">
    <h2>万家乐OCP管理系统 </h2>
    <div id="form">
        <div id="input_box">
            <i class="fa fa-user" aria-hidden="true"></i>
            <input class="in" type="text" placeholder="Username">
        </div>
        <div id="input_box">
            <i class="fa fa-key" aria-hidden="true"></i>
            <input class="in" type="passwoprd" placeholder="Passwoprd">
        </div>
    </div>

    <button onclick="login()">Sign in</button><br>
    <div id="Sign">
        <a href="a">忘记密码?</a>
    </div>
</div>
</body>
<script>
    function login(){
        window.location.href="${path }/paper/allPaper";
    }
</script>
</html>