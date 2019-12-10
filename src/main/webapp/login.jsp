<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>登陆</title>
    <link rel="stylesheet" href="./css/login.css">
</head>

<style>
    /* .container {
      width: 100%;
      height: 100%;
      background: url(./images/后台登录2.png)
    } */
</style>

<body>
<div class="container">
    <div class="main">
        <div class="title">
            <span></span>
            陪护椅后台管理系统
        </div>

        <form action="${ctx }/login" method="post">
            <input type="text" name="username" value="" id="user" placeholder="请输入用户名">

            <input type="password" name="password" value="" id="password" placeholder="请输入密码">
            <i id="user1">
                <img src="./css/images/未标题-2_07.png" alt="">
            </i>
            <i id="password2">
                <img src="./css/images/未标题-2_05.png" alt="">
            </i>

            <div class="select">

                <input list="students" placeholder="请选择身份">
                <datalist id="students">
                    <option value="医院">
                    <option value="运营">

                </datalist>
                <i id="select1">
                    <img src="./css/images/未标题-2_03.png" alt="">
                </i>
                <i id="select2">
                    <img src="./css/images/未标题-2_09.png" alt="">
                </i>
            </div>
            <div class="error-info"><c:if test="${param.error == 1}">用户名或密码错误, 请重新登录!</c:if></div>
            <button>登陆</button>
            <%--<div style="margin-top: 5px;"><input type="submit" class="login_btn" value="登录" /></div>--%>
        </form>
    </div>
</div>
<script>

</script>
</body>

</html>
