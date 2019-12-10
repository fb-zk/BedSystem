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
<title>陪护椅信息>绑定</title>
<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
<link rel="stylesheet" href="../assets/fonts/iconfont.css">
<link rel="stylesheet" href="../assets/css/commonality.css">
<link rel="stylesheet" href="./css/binding.css">
<script src="../assets/js/jquery-2.1.4.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>

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
	height: 550px;
	background: rgba(255, 255, 255, 1);
	border-radius: 4px;
	position: absolute;
	top: 190px;
	


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
	margin-left: 35px;
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
	margin-left: 13px;
}

.add-information5 span {
	margin-left: 35px;
	margin-top: 30px;
	text-align: justify;
}

.add-information5 {
	font-size: 18px;
	margin-top: 25px;
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

.add-information1 span {
	margin-left: 0;
}

#bth1 {
	position: absolute;
	top: 74px;
	left: 127px;
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
		<a href="#" style="">陪护椅信息>绑定</a>
		<div>
			<span class="tubiao2"> 
				<i><img src="../assets/fonts/font/未标题-1_16.png" alt=""></i>
				<button type="button" class="btn btn-primary1" data-toggle="modal"
					data-target="#exampleModal" data-whatever="@mdo">添加</button>
			</span>
		</div>
	</div>



	<!-- 删除按钮 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<h2>提示</h2>

				<h4 class="modal-title" id="myModalLabel">请再次确认是否删除？</h4>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary">确认删除</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 添加按钮 -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content1">
				<div class="add-information0" id="">
					<span>新增陪护椅</span> <span class="iconfont icon-shanchu" id="bth"></span>
				</div>
				<div class="add-information1">
					<span>医院：</span>
					<select id="hospital"></select>
				</div>
				<div class="add-information1">
					<span>科室：</span>
					<select id="department"></select>
				</div>
				<div class="add-information1">
					<span>座椅号：</span>
					<input id="roomId" type="text" style="width: 240px; border-radius: 6px; text-align: justify">
				</div>
				<div class="add-information1">
					<span>陪护椅编号：</span>
					<input id="bedCode" type="text" style="width: 240px; border-radius: 6px; text-align: justify">
				</div>
				<div class="add-information1">
					<span>陪护椅地址：</span>
					<input id="bedAddress" type="text" style="width: 240px; border-radius: 6px; text-align: justify">
				</div>

				<div class="modal-footer1">
					<button id="submit" type="button" class="btn btn-default">确定</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal">取消</button>
				</div>
			</div>
		</div>
	</div>


	<!-- 页面主体 -->
	<div class="main">
		<div id="tt"></div>

		<!-- 按钮修改 -->
		<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content1">
					<div class="add-information0" id="">
						<span>编辑修改信息</span> <span class="iconfont icon-shanchu" id="bth"></span>
					</div>
					<div class="add-information1">
						<span>用户账号：</span><input type="text"
							style="width: 240px; border-radius: 6px; text-align: justify">
					</div>
					<div class="add-information1">
						<span>电话号码：</span><input type="text"
							style="width: 240px; border-radius: 6px; text-align: justify">
					</div>
					<div class="add-information1">
						<span>姓名：</span><input type="text"
							style="width: 240px; border-radius: 6px; text-align: justify"
							id="name">
					</div>

					<div class="add-information1">
						<span>管理医院：</span><input type="text"
							style="width: 240px; border-radius: 6px;">
					</div>
					<div class="add-information4">
						<span>权限：</span>
						<!-- <input type="text" style="width:240px; border-radius:6px;"> -->
						<select name="" id="jurisdiction">
							<option value="">请选择</option>
							<option value="医院">医院</option>
							<option value="运营">运营</option>
						</select>
					</div>
					<div class="add-information5">
						<span>销售人员：</span></span><input type="text"
							style="width: 240px; border-radius: 6px;">
					</div>
					<div class="add-information6">
						<span>是否禁用：</span>
						<!-- <input type="text" style="width:240px; border-radius:6px;"> -->
						<select name="" id="forbidden">
							<option value="">请选择</option>
							<option value="禁用">禁用</option>
							<option value="正常">正常</option>
						</select>
					</div>

					<div class="modal-footer1">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							id="btn-default1">确定</button>
						<button type="button" class="btn btn-primary" id="btn-primary1">取消</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/default/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/icon.css"/>
	<script src="./plugs/easyui/jquery.easyui.min.js"></script>
	<script src="./plugs/easyui/locale/easyui-lang-zh_CN.js"></script>
	<script src="./js/bedBind.js"></script>
</body>

</html>