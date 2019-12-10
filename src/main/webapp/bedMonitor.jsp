<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>监测管理</title>
<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<link rel="stylesheet" href="./assets/css/bootstrap.min.css">
<link rel="stylesheet" href="./assets//fonts//iconfont.css">
<link rel="stylesheet" href="./assets/css/commonality.css">
<link rel="stylesheet" href="./css/monitor.css">
<script src="./assets/js/jquery-2.1.4.min.js"></script>
<script src="./assets/js/bootstrap.min.js"></script>
</head>

<body>
	<style>
.submenu1 {
	flex-grow: 1.2;
}

.submenu2 {
	flex-grow: 0.8
}

.submenu3 {
	flex-grow: 0.8;
}

.submenu4 {
	flex-grow: 1;
}

.submenu5 {
	flex-grow: 1;
}

.submenu6 {
	flex-grow: 1;
}

.submenu7 {
	flex-grow: 1.5;
}

.submenu9 {
	flex-grow: 2;
}

.describe1 {
	flex-grow: 0.8;
	position: relative;
}

.describe1>span {
	position: absolute;
	left: 20px;
}

.describe2 {
	flex-grow: 0.8;
	position: relative;
}

.describe2 span {
	position: absolute;
	right: -50px;
}

.describe3 {
	flex-grow: 0.8;
	position: relative;
}

.describe3 span {
	position: absolute;
	right: -35px;
}

.describe4 {
	flex-grow: 1;
	position: relative;
}

.describe4>span {
	position: absolute;
	right: -90px;
}

.describe5 {
	flex-grow: 1;
	position: relative;
}

.describe5 span {
	position: absolute;
	left: 195px;
}

.describe6 {
	flex-grow: 1;
	position: relative;
}

.describe7 {
	flex-grow: 1.5;
	position: relative;
}

.describe7 span {
	left: 180px;
	position: absolute;
}

.describe9 {
	flex-grow: 2;
	position: relative;
}

.describe9>span {
	height: 100px;
	width: 240px;
	display: block;
	color: red;
}

.describe9>span .btn {
	background-color: #fff;
	color: #079B82;
	margin-left: 15px;
	font-size: 18px;
}

#time {
	left: 115px;
}

#btn2 {
	color: red;
}

#bth3 {
	width: 143px;
	height: 46px;
	background: rgba(255, 255, 255, 1);
	border: 1px solid rgba(227, 227, 227, 1);
	border-radius: 4px;
	font-size: 19px;
}

.btn-group1 {
	position: absolute;
	right: -550px;
	top: 18px;
}

/* 弹出删除框 */
.modal-content {
	width: 428px;
	height: 246px;
	background: rgba(255, 255, 255, 1);
	border-radius: 4px;
	top: 200px;
	left: 190px;
	position: relative;
}

.modal-content h2 {
	font-size: 30px;
	width: 426px;
	height: 62px;
	background: rgba(234, 234, 234, 1);
	border-radius: 4px 4px 0px 0px;
	text-align: center;
	line-height: 62px;
	margin-top: 0px;
	margin-bottom: 0px;
	font-size: 20px;
	font-family: PingFang SC;
	font-weight: 500;
	color: rgba(40, 40, 40, 1);
}

.modal-title {
	color: #000000;
}

/* #btn-default1{
            width: 128px;
            height: 36px;
            background: rgba(246, 98, 87, 1);
            border-radius: 4px;
        } */
.modal-footer button:nth-last-of-type(2) {
	width: 128px;
	height: 36px;
	background: rgba(205, 207, 213, 1);
	border-radius: 4px;
	position: absolute;
	top: 180px;
	left: 250px;
	color: #fff;
	font-size: 20px;
	line-height: 25px;
}

.modal-footer button:nth-last-of-type(1) {
	width: 128px;
	height: 36px;
	background: rgba(246, 98, 87, 1);
	border-radius: 4px;
	position: absolute;
	top: 180px;
	left: 80px;
	color: #fff;
}

/* 修改按钮 */
.modal-content1 {
	width: 838px;
	height: 649px;
	background: rgba(255, 255, 255, 1);
	border-radius: 4px;
}

.add-information0 {
	width: 838px;
	height: 62px;
	background: rgba(234, 234, 234, 1);
	border-radius: 4px 4px 0px 0px;
	font-size: 20px;
}

.add-information1 {
	font-size: 18px;
}

.add-information1 input {
	width: 668px !important;
	height: 42px !important;
	background: rgba(255, 255, 255, 1);
	border: 1px solid rgba(228, 228, 228, 1);
	border-radius: 4px;
	margin-left: 10px;
}

.add-information4 {
	padding: 20px;
	font-size: 18px;
}

.add-information4 span {
	margin-left: 46px;
	margin-top: 30px;
	text-align: justify;
}

.add-information4 input {
	width: 668px !important;
	height: 42px !important;
	background: rgba(255, 255, 255, 1);
	border: 1px solid rgba(228, 228, 228, 1);
	border-radius: 4px;
	margin-left: 10px;
}

.add-information5 input {
	width: 668px !important;
	height: 42px !important;
	background: rgba(255, 255, 255, 1);
	border: 1px solid rgba(228, 228, 228, 1);
	border-radius: 4px;
	margin-left: 10px;
}

.add-information5 span {
	margin-left: 64px;
	margin-top: 30px;
	text-align: justify;
}

.add-information5 {
	font-size: 18px;
	margin-top: 8px;
}

.modal-footer1 button:nth-last-of-type(2) {
	width: 128px;
	height: 36px;
	background: rgba(9, 182, 153, 1);
	border-radius: 4px;
	top: -70px;
	left: -300px;
	color: #fff;
	position: absolute;
	font-size: 15px;
	font-family: PingFang SC;
	font-weight: 500;
}

.modal-footer1 button:nth-last-of-type(1) {
	width: 128px;
	height: 36px;
	background: rgba(205, 207, 213, 1);
	border-radius: 4px;
	top: -70px;
	left: -120px;
	font-size: 15px;
	font-family: PingFang SC;
	font-weight: 500;
	color: #fff;
}
</style>

	<!-- 顶部导航开始 -->
	<jsp:include page="head.jsp"></jsp:include>
	<!-- 顶部导航结束 -->

	<!-- 左菜单开始 -->
	<jsp:include page="left.jsp"></jsp:include>
	<!-- 左菜单结束 -->

	<!-- 页头开始 -->
	<div class="head">
		<a href="#" style="">监测管理</a>
	</div>

	<!-- 搜索框和下拉框 -->
	<div class="inquire">
		<div id="searchBox" class="search">
			<!-- Single button -->
			<div class="btn-group">
				<button type="button" class="btn btn-default dropdown-toggle"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					陪护椅状态 <span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
					<li><a href="#" data-val="">陪护椅状态(全)</a></li>
					<li><a href="#" data-val="1">开启</a></li>
					<li><a href="#" data-val="2">关闭</a></li>
					<li><a href="#" data-val="4">电量不足</a></li>
					<li><a href="#" data-val="5">流量不足</a></li>
					<li><a href="#" data-val="6">非法开启</a></li>
					<li><a href="#" data-val="7">电源关闭</a></li>
					<li><a href="#" data-val="8">维修中</a></li>
				</ul>
			</div>

			<div class="btn-group">
				<button type="button" class="btn btn-default dropdown-toggle"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
				<input type="text" class="search_field"
					placeholder="医院/科室/订单编号/陪护椅编号">
				<button id="searchBtn" class="search_btn">搜索</button>
			</div>
		</div>
	</div>

	<!-- 页面主体 -->
	<div class="main">
		<div id="tt"></div>
	</div>

	<link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/default/easyui.css" />
	<link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/icon.css" />
	<script src="./plugs/easyui/jquery.easyui.min.js"></script>
	<script src="./plugs/easyui/locale/easyui-lang-zh_CN.js"></script>
	<script src="./js/monitor.js"></script>
</body>

</html>