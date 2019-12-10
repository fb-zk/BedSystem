<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>系统管理>用户管理</title>
<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
<link rel="stylesheet" href="../assets//fonts//iconfont.css">
<link rel="stylesheet" href="../assets/css/commonality.css">
<link rel="stylesheet" href="./css/user.css">
<script src="../assets/js/jquery-2.1.4.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>

<!-- <script src="../assets/js/jquery.z-pager.js"></script> -->
</head>

<body style="color: #000000 !important">

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
	height: 720px;
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
		#newpasww span{
			margin-left:0;
		}

.add-information1 select{
	width: 260px;
	border-radius: 6px;
	text-align: justify;
	height: 35px;
}
#saveBtn{
	position: absolute;
	left: 500px;
	height: 40px;
	line-height: 40px;
	width: 100px;
	color: #fff;
}
		#cancelBtn{
			position: absolute;
			left: 350px;
			height: 40px;
			line-height: 40px;
			width: 100px;

		}

#role{
	margin-left: 13px;
}
#saveBtn{
	font-size: 16px;
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
		<a href="#" style="">系统管理>用户管理</a>

	</div>


	<!-- 搜索框和下拉框 -->
	<div class="inquire">
		<div class="search">

			<div class="content_input">
				<span>角色名称：</span>
				<input type="text" class="search_field" placeholder="" id="bm">
				<button id="searchBtn" class="search_btn">搜索</button>
				<%--<button class="search_btn" id="chongzhi">重置</button>--%>
			</div>
			<!-- Single button -->
		</div>
	</div>

	<!-- 页面主体 -->
	<div class="main">
		<table id="tt"></table>

		<!-- 工具条 -->
		<div id="tb">
			<a id="addBtn" href="#" class="easyui-linkbutton" data-options="plain:true" onclick="showRoleName()" >添加</a>
			<a id="removeBtn" href="#" class="easyui-linkbutton" data-options="plain:true">删除</a>
		</div>

		<!-- 添加弹窗 显示信息的窗口 -->
		<div id="win" class="easyui-window" title="添加角色" style="width:935px;height:630px"
			 data-options="iconCls:'icon-save',modal:true,closed:true ">
			<div class="modal-content1">
				<form id="addForm" method="post">
					<div class="add-information1">
						<span>用户名：</span>
						<input type="text" style="width: 240px; border-radius: 6px; text-align: justify" id="userName" class="easyui-validatebox" data-options="required:true" name="userName" required><span id="errorName" style="color: red;display: inline"></span>
					</div>
					<div class="add-information1">
						<span>姓名：</span>
						<input type="text" style="width: 240px; border-radius: 6px;" id="name" name="name" class="easyui-validatebox" data-options="required:true">
					</div>
					<div class="add-information1">
						<span>密码：</span>
						<input type="text" style="width: 240px; border-radius: 6px; text-align: justify" id="mima" name="passWord" class="easyui-validatebox" data-options="required:true">
					</div>
					<div class="add-information1" id="newpasww">
						<span>确认密码：</span>
						<input type="text" style="width: 240px; border-radius: 6px; text-align: justify" id="npwd" class="easyui-validatebox" data-options="required:true">
						<div id="errorNpwd" style="color: red;display: inline"></div>
					</div>
					<div class="add-information1">
						<span>手机号：</span>
						<input type="text" style="width: 240px; border-radius: 6px;" id="phone" name="mobileno" class="easyui-validatebox" data-options="required:true">
					</div>
					<div class="add-information1">
						<span id="role">角色名称：</span>
						<select style="width: 665px; border-radius: 6px; text-align: justify" name="roleName"  placeholder="请选择" id="add" class="easyui-validatebox" data-options="required:true">
							<option selected="selected" disabled="disabled"  style='display: none' value=''>请选择</option>
							<option value="1">医院</option>
							<option value="2">百穗运营</option>

						</select>
					</div>
					<a id="saveBtn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save' ">保存</a>
					<a id="cancelBtn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cancel' ">取消</a>
				</form>
			</div>
		</div>

	</div>

	<link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/default/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/icon.css"/>
	<script src="./plugs/easyui/jquery.easyui.min.js"></script>
	<script src="./plugs/easyui/locale/easyui-lang-zh_CN.js"></script>
	<script src="./js/sysUser.js"></script>
	<script>


		/**
		 * 验证用户是否存在
		 */
		$("#userName").blur(function () {

			var names = $("#userName").val();

			$.ajax({
				type:"POST",
				url:"/manager/user/nameExist",
				data:{"userName":names},
				success:function (data) {
					if (data.code == "504"){

						$("#errorName").html("<font color = 'red'>用户名已存在</font>");
					} else if (data.code == "200"){
						$("#errorName").html("<font color = 'red'></font>");
					}
				}
			})
		});

		/**
		 * 确认密码再次输入是否一致
		 */
		$("#npwd").blur(function () {
			if ($("#npwd").val() != "" && $("#mima").val() != "" && $("#npwd").val() != $("#mima").val()){
				$("#errorNpwd").html("<font color = 'red'>两次密码不一致！</font>");
				return false;
			}
			if ($("#npwd").val() == $("#mima").val()){
				$("#errorNpwd").html("<font color = 'red'></font>");
			}
		});

		/**
		 * 角色名称下拉框
		 */
		function showRoleName() {
			$.ajax({
				url:"/manager/role/roleName",
				type:"get",
				success:function (data) {

					for (var i = 0; i < data.length; i++) {
						$("#add").append("<option value='"+data[i].roleId+"'>"+data[i].name+"</option>")
					}

				}
			})
		}

		/**
		 * 手机号验证
		 */
		$("#phone").blur(function () {
			var phoneNum = $("#phone").val();

			if(phoneNum != "" && !(/^1(3|4|5|6|7|8|9)\d{9}$/.test(phoneNum))){
				alert("手机号码有误，请重填");
				return false;
			}
		});

		// 添加按钮打开编辑窗口
		$("#addBtn").click(function(){
			//每次打开时清空表单数据
			$("#addForm").form("clear");
			$("#win").window("open");

		});

		// 添加的取消按钮
		$("#cancelBtn").click(function() {
			// 每次打开时清空表单数据
			$("#addForm").form("clear");
			$("#win").window("close");
			clearDiv($("#win"));
		});


	</script>


</body>

</html>