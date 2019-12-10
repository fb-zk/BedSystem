<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>问题反馈</title>
    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets//fonts//iconfont.css">
    <link rel="stylesheet" href="./assets/css/commonality.css">
    <script src="./assets/js/jquery-2.1.4.min.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    
</head>
<style type="text/css">
    	.content_input .search_field{
    	position: absolute;
    	left: 545px;
    	
    	}
    	.content_input .search_btn {
    line-height: 30px;
    color: #ffff;
    font-size: 19px;
    border: none;
    position: absolute;
    left: 930px;
    top: 14px;
    border-radius: 6px;
    width: 131px;
    height: 46px;
    background: rgba(82, 206, 185, 1);
    border-radius: 4px;
}
    </style>
<body>

    <!-- 顶部导航开始 -->
    <jsp:include page="head.jsp"></jsp:include>
    <!-- 顶部导航结束 -->

    <!-- 左菜单开始 -->
    <jsp:include page="left.jsp"></jsp:include>
    <!-- 左菜单结束 -->

    <!-- 页头开始 -->
    <div class="head">
        <a href="#" style="">问题反馈>问题列表</a>
    </div>

    <!-- 搜索框和下拉框 -->
    <div class="inquire">
        <div id="searchBox" class="search">
            <!-- Single button -->
            <div class="btn-group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    审核状态 <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                	<li><a href="#" data-val="">审核状态(全)</a></li>
                    <li><a href="#" data-val="1">待审核</a></li>
                    <li><a href="#" data-val="2">已通过</a></li>
                    <li><a href="#" data-val="3">已拒绝</a></li>
                </ul>
            </div>
            
            <div class="btn-group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    维修状态 <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                	<li><a href="#" data-val="">维修状态(全)</a></li>
                    <li><a href="#" data-val="0">未维修</a></li>
                    <li><a href="#" data-val="1">已维修</a></li>
                </ul>
            </div>

            <div class="btn-group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    筛选条件 <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="#" data-val="hospitalName">医院</a></li>
                    <li><a href="#" data-val="departmentName">科室</a></li>
                    <li><a href="#" data-val="orderId">订单编号</a></li>
                    <li><a href="#" data-val="bedCode">陪护椅编号</a></li>
                </ul>
            </div>
            
            <div class="content_input">
                <input type="text" class="search_field" placeholder="医院/科室/订单编号/陪护椅编号">
                <button id="searchBtn" class="search_btn">搜索</button>
            </div>
        </div>
    </div>

    <!-- 页面主体 -->
	<div class="main">
		<div id="tt"></div>
	</div>
    
    <link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/default/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/icon.css"/>
	<script src="./plugs/easyui/jquery.easyui.min.js"></script>
	<script src="./plugs/easyui/locale/easyui-lang-zh_CN.js"></script>
	<script src="./js/problem.js"></script>
</body>

</html>