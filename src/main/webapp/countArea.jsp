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
<title>统计分析>地区统计</title>

<meta name="description" content="overview &amp; stats" />

<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
<link rel="stylesheet" href="../assets//fonts//iconfont.css">
<link rel="stylesheet" href="../assets/css/commonality.css">
<link rel="stylesheet" href="../assets/laydate/theme/default/laydate.css">
<link rel="stylesheet" href="../assets/diqu/css/city-picker.css">
<script src="../assets/js/jquery-2.1.4.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/jquery.z-pager.js"></script>
<script src="../assets/js/laydate.js"></script>
<script src="../assets/diqu/js/city-picker.data.js"></script>
<script src="../assets/diqu/js/city-picker.js"></script>

</head>

<body>

	<style>
body {
	overflow-x: hidden;
}

.head {
	border: 1px solid rgba(227, 227, 227, 1);
	border-radius: 2px;
}

.head a {
	width: 190px;
	font-size: 18px;
	font-family: PingFang SC;
	font-weight: 500;
	color: rgba(61, 68, 67, 1);
	top: 28px;
}

.submenu1 {
	flex-grow: 1;
}

.submenu2 {
	flex-grow: 1
}

.submenu3 {
	flex-grow: 1;
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
	flex-grow: 1;
}

.submenu9 {
	flex-grow: 1;
}

.describe1 {
	flex-grow: 1;
	position: relative;
}

.describe1>span {
	position: absolute;
	left: 20px;
}

.describe2 {
	flex-grow: 1;
	position: relative;
}

.describe2 span {
	position: absolute;
	right: -50px;
}

.describe3 {
	flex-grow: 1;
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
	flex-grow: 1;
	position: relative;
}

.describe7 span {
	left: 180px;
	position: absolute;
}

.describe9 {
	flex-grow: 1;
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

.main {
	height: 620px;
	width: 1530px;
	position: absolute;
	top: 340px;
	left: 340px;
}

/* 查询列表 */
.inquire {
	width: 1530px;
	height: 60px;
	position: absolute;
	top: 175px;
}

.inquire>li {
	width: 130px;
	height: 40px;
	position: absolute;
	left: 10px;
	top: 10px;
}

.inquire>li>span {
	line-height: 36px;
	text-align: center;
	margin-left: 15px;
	font-size: 18px;
}

.demo-input {
	padding-left: 10px;
	height: 38px;
	min-width: 262px;
	line-height: 38px;
	border: 1px solid #e6e6e6;
	background-color: #fff;
	border-radius: 2px;
}

.demo-footer {
	padding: 50px 0;
	color: #999;
	font-size: 14px;
}

.demo-footer a {
	padding: 0 5px;
	color: #01AAED;
}

.demo-input {
	position: absolute;
	left: 70px;
	width: 120px;
	height: 40px;
	background: rgba(255, 255, 255, 1);
	border: 1px solid rgba(227, 227, 227, 1);
	border-radius: 2px;
	font-size: 16px;
}

.glyphicon {
	position: relative;
	top: 4px;
	display: inline-block;
	font-family: 'Glyphicons Halflings';
	font-style: normal;
	font-size: 18px;
	font-weight: 400;
	line-height: 1;
	-webkit-font-smoothing: antialiased;
	z-index: 999;
	left: 10px;
}

#test2 {
	position: relative;
	top: -34px;
	left: 352px;
}

#tow {
	position: relative;
	top: 5px;
	left: 490px;
}

#one {
	position: relative;
	top: 17px;
	left: 648px;
	font-size: 19px;
}

.btn-group, .btn-group-vertical {
	display: inline-block;
	vertical-align: middle;
	position: absolute;
	right: 517px;
	top: -3px;
}

.btn-group>.btn:first-child {
	width: 266px;
	height: 40px;
	background: rgba(255, 255, 255, 1);
	border: 1px solid rgba(227, 227, 227, 1);
	border-radius: 4px;
	font-size: 19px;
	margin-top: 15px;
	margin-left: 24px;
	text-align: left;
}

#san {
	left: 150px;
	top: 4px;
}

.region {
	width: 430px;
	height: 40px;
	position: absolute;
	right: 490px;
	top: 10px;
}

.form-group {
	position: absolute;
	left: 130px;
}

#shi {
	position: absolute;
	top: 8px;
	left: 70px;
	font-size: 20px;
}

.sousuo {
	width: 70%;
	height: 40px;
	position: absolute;
	top: 70px;
	left: 9px;
}

.sousuo>span {
	line-height: 40px;
	font-size: 18px;
	margin-left: 10px;
}

.sousuo>input {
	width: 25%;
	height: 38px;
	background: rgba(255, 255, 255, 1);
	border: 1px solid rgba(227, 227, 227, 1);
	border-radius: 2px;
	padding-left: 10px;
}

.sousuo>button {
	width: 120px;
	height: 40px;
	background: rgba(9, 182, 153, 1);
	/* border-radius: 2px; */
	color: #ffff;
	margin-left: 20px;
	;
}

.city-picker-span {
	border: 1px solid #ccc;
}

element.style {
	width: 250px;
	height: 43px;
	line-height: 42px;
	text-align: center;
}

.particulars1 {
	width: 100%;
	background-color: pink;
	display: flex;
}

.describe1 {
	flex-grow: 0.9;
}

.describe2 {
	flex-grow: 0.9;
}

.describe3 {
	flex-grow: 0.9;
}

.describe4 {
	flex-grow: 0.9;
}

.describe5 {
	flex-grow: 0.9;
}

.describe6 {
	flex-grow: 0.9;
}

.describe7 {
	flex-grow: 0.9;
}

.nist {
	width: 100%;
	height: 490px;
	position: absolute;
	top: 76px;
}

.main1 {
	width: 100%;
	/* border-bottom: solid 1px #ccc; */
	display: flex;
	flex-direction: row;
	-webkit-flex-direction: row;
	text-align: center;
	line-height: 60px;
	font-size: 15px;
	height: 76px;
	border-radius: 4px 4px 0px 0px;
	;
}

.tool1 {
	flex-grow: 1;
	height: 76px;
}

.tool2 {
	flex-grow: 1;
	height: 76px;
}

.tool3 {
	flex-grow: 1;
	height: 76px;
}

.tool4 {
	flex-grow: 1;
	height: 76px;
}

.tool5 {
	flex-grow: 1;
	height: 76px;
}

.tool6 {
	flex-grow: 1;
	height: 76px;
}

.tool7 {
	flex-grow: 1;
	height: 76px;
}

.nist>div:nth-of-type(even) {
	background: rgba(246, 246, 246, 1);
}

.sorter {
	position: absolute;
	bottom: 100px;
}
.main {
	position: absolute;
	top: 292px;
	height:580px;
}
		#one{
			position:absolute;
			left: 280px;
			top: 10px;
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
		<a href="#" style="">统计分析>地区统计</a>
	</div>

	<div class="inquire">
		<li>
			<span>日期：</span> 
			<input type="text" class="demo-input " placeholder="请选择" id="test1"> 
			<i class="glyphicon glyphicon-menu-down" id="one"></i>
			<i class="glyphicon glyphicon-menu-down" id="tow"></i> 
			<input type="text" class="demo-input " placeholder="请选择" id="test2">
		</li>
		<div class="region">
			<span id="shi"> 区域：</span>
			<form class="form-inline">
				<div id="distpicker">
					<div class="form-group">
						<div style="position: relative;">
							<input id="city-picker3" class="form-control" readonly
								type="text" value="湖北省/武汉市/武昌区" data-toggle="city-picker">
						</div>
					</div>
				</div>
			</form>
		</div>
		<div class="sousuo">
			<span>搜索：</span> 
			<input id="hospitalName" type="text" placeholder="请输入医院名称">
			<button id="searchbtn">搜索</button>
			<button onclick="window.location.reload()">重置</button>
			<!-- <button>导出</button> -->
		</div>


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
	</script>
	
	<link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/default/easyui.css" />
	<link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/icon.css" />
	<script src="./plugs/easyui/jquery.easyui.min.js"></script>
	<script src="./plugs/easyui/locale/easyui-lang-zh_CN.js"></script>
	<script src="./js/countArea.js"></script>
</body>

</html>