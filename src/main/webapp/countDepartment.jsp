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
<title>统计分析>科室统计</title>
<meta name="description" content="overview &amp; stats" />

<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
<link rel="stylesheet" href="../assets//fonts//iconfont.css">
<link rel="stylesheet" href="../assets/css/commonality.css">
<link rel="stylesheet" href="./css/Departments.css">
<link rel="stylesheet"
	href="../assets/laydate/theme/default/laydate.css">
<link rel="stylesheet" href="../assets/diqu/css/city-picker.css">

<script src="../assets/js/jquery-2.1.4.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/jquery.z-pager.js"></script>
<!-- <script src="//cdnjs.cloudflare.com/ajax/libs/less.js/3.10.0-beta/less.min.js" ></script> -->
<script src="../assets/js/laydate.js"></script>
<script src="../assets/diqu/js/city-picker.data.js"></script>
<script src="../assets/diqu/js/city-picker.js"></script>
<!-- <script src="//cdnjs.cloudflare.com/ajax/libs/less.js/3.10.0-beta/less.min.js"></script> -->

</head>

<body>


	<!-- 顶部导航开始 -->
	<jsp:include page="head.jsp"></jsp:include>
	<!-- 顶部导航结束 -->

	<!-- 左菜单开始 -->
	<jsp:include page="left.jsp"></jsp:include>
	<!-- 左菜单结束 -->

	<!-- 页头开始 -->
	<div class="head">
		<a href="#" style="">统计分析>科室统计</a>
	</div>

	<div class="inquire">
		<li>
			<span>开始时间：</span> 
			<input type="text" class="demo-input " placeholder="请选择" id="test1"> 
			<i class="glyphicon glyphicon-menu-down" id="one"></i>
			<span id="jieshu">结束时间：</span>
			<i class="glyphicon glyphicon-menu-down" id="tow"></i> 
			<input type="text" class="demo-input " placeholder="请选择" id="test2">
		</li>

		<button id="sousuo">搜索</button>
		<button id="chongzhi" onclick="window.location.reload()">重置</button>
	</div>



	<!-- 页面主体 -->
	<div class="main">
		<div id="tt"></div>
	</div>

	<script src="../assets/laydate/laydate.js"></script>
	<script>
		// 小圆点的

		$(".nav-stacked li>ul>li").mouseover(
				function() {

					// $(".nav-stacked li>ul>li>span").css("background","rgba(9, 182, 153, 1)").siblings().removeClass("color","")
					$("this>span").addClass("active1").siblings().removeClass(
							"active1");

				})

		lay('#version').html('-v' + laydate.v);

		//执行一个laydate实例
		laydate.render({
			elem : '#test1' //指定元素
		});
		laydate.render({
			elem : '#test2' //指定元素
		});

		$("#tianjia").click(function() {
			window.location.href = "./add.html";
		})
	</script>
	
	<link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/default/easyui.css" />
	<link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/icon.css" />
	<script src="./plugs/easyui/jquery.easyui.min.js"></script>
	<script src="./plugs/easyui/locale/easyui-lang-zh_CN.js"></script>
	<script src="./js/countDepartment.js"></script>
</body>

</html>