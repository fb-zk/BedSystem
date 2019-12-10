<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
	<title>陪护椅信息</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0"> 
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		
	
	
	<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="../assets//fonts//iconfont.css">
	<link rel="stylesheet" href="../assets/css/commonality.css">
	<link rel="stylesheet" href="../assets/css/gongzhong.css">
	<link rel="stylesheet" href="./css/monitor.css">
	<link rel="stylesheet" href="./css/chosen.css">
	
	
	<script src="../assets/js/jquery-2.1.4.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/default/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/icon.css"/>
	<!-- <script src="./plugs/easyui/jquery.min.js"></script> -->
	<script src="./plugs/easyui/jquery.easyui.min.js"></script>
	<script src="./plugs/easyui/locale/easyui-lang-zh_CN.js"></script>
	
	<script src="./js/chaperoneInfo.js"></script>
	
	<style type="text/css">
		ul{
			line-height: 30px;
		}
	</style>
	
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

.content_input .search_field {
	position: absolute;
	left: 100px;
}

.search_btn {
	position: absolute;
	left: 400px;
}

.content_input span {
	width: 100px;
	position: absolute;
	top: 25px;
	left: 12px;
	font-size: 17px;
}

.describe00 {
	width: 23.3%;
}

.describe01 {
	width: 14.8%;
}

.describe02 {
	width: 12.5%;
	position: relative;
}

.describe02 span {
	position: absolute;
	width: 200px;
	left: 15px;
}

.describe03 {
	width: 18.5%;
}

.describe04 {
	width: 16.2%;
}

.describe05 {
	width: 15.2%;
}

.describe05 span a {
	color: #09B699;
}
.main {
	height: 620px;
	width: 1530px;
	background: #F7F7F7 !important;
	position: absolute;

	left: 305px;
}

.particulars1 {
	font-size: 18px;
}
.datagrid-header td, .datagrid-body td, .datagrid-footer td {
	border-color: #ccc;
	height: 45px;
	width: 70px;
	text-align: center;
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
		<a href="#" style="">陪护椅管理>陪护椅信息</a>
		<div>
			<span class="tubiao2"> 
				<!-- <i><img src="../assets/fonts/font/未标题-1_16.png" alt=""></i> -->
				<%--<a href="${ctx }/chaperoneInfoAdd.jsp" class="btn btn-primary1" >添加</a>--%>
			</span>
		</div>
	</div>

	<!-- 页面主体 -->
	<div class="main">
		<table id="tt"></table>
		<!-- 工具条 -->
	  	<div id="tb">
	  		<%-- <a id="addBtn" href="${ctx }/chaperoneInfoAdd.jsp" class="easyui-linkbutton"  data-options="plain:true">添加</a> --%>
			<a id="addBtn" href="#" class="easyui-linkbutton" data-options="plain:true">添加</a>
 			<%--<a id="editBtn" href="#" class="easyui-linkbutton" data-options="plain:true">修改</a>--%>
			<a id="removeBtn" href="#" class="easyui-linkbutton" data-options="plain:true">删除</a>
		</div>
		<!-- 弹窗 显示信息的窗口 -->
	  	<div id="win" class="easyui-window" title="编辑陪护椅" style="width:500px;height:600px"
	  			data-options="iconCls:'icon-save',modal:true,closed:true ">  
	   		 <form id="editForm" method="post">
	   		 	<input type="hidden" name="id" /><!-- 订单系统id，隐藏，后台生成, -->
				椅子编码：<input type="text" name="code" class="easyui-validatebox" data-options="required:true" />(例如：YNxxxxxxx)<br/>
				
				医院名称：<input type="text" id="hospitalId" name="hospitalId" class="easyui-combobox" /><br/>
				<!-- 医院名称：<input type="text" id="hospitalId" class="easyui-combobox" name="hospitalId"
				data-options="valueField:'id',textField:'hospitalId',url:'hospital/findHospitalByid',editable:false,panelWidth:300,panelHeight:400"  /><br/> -->
				
				科室名称：<input type="text" id="departmentId" name="departmentId" class="easyui-combobox" /><br/>
				<!-- 科室名称：<input type="text" id="departmentId" name="departmentId" class="easyui-combobox"
				data-options="valueField:'id',textField:'departmentId',method:'get',editable:false,panelWidth:100,panelHeight:50" /><br/> -->
				
				厂商名称：<input type="text" id="factoryId" name="factoryId" class="easyui-combobox"
				data-options="valueField:'id',textField:'factoryId',url:'factory/findAllDTOFactory',editable:false,panelWidth:100,panelHeight:200" /><br/>
				
				椅子长度：<input type="text" name="length" class="easyui-validatebox" data-options="required:true" />cm<br/>
				椅子宽度：<input type="text" name="width" class="easyui-validatebox" data-options="required:true" />cm<br/>
				椅子高度：<input type="text" name="height" class="easyui-validatebox" data-options="required:true" />cm<br/>
				椅子载重：<input type="text" name="maxLoad" class="easyui-validatebox" data-options="required:true" />kg<br/>
				使用次数：<input type="text" name="maxUseCount" class="easyui-validatebox" data-options="required:true" />次<br/>
				使用材质：<input type="text" name="texture" class="easyui-validatebox" data-options="required:true" /><br/>
				
				椅子单价：<input type="text" id="unitPrices" name="unitPrices" class="easyui-validatebox" data-options="required:true,editable:false" />元<br/>
				
				生产日期：<input type="date" name="produceTime" class="easyui-validatebox" data-options="required:true" /><br/>
				保修期限：<input type="text" name="protectTime" class="easyui-validatebox" data-options="required:true" /><br/>
				
				绑定状态：<input type="text" id="bindingState" name="bindingState" class="easyui-combobox"
				data-options="valueField:'id',textField:'bindingState',data:[{bindingState:'未绑定 ',id:'0'},{bindingState:'已绑定 ' ,id:'1'}],editable:false,panelWidth:100,panelHeight:70,required:true" /><br/>
				
				锁的状态：<input type="text" id="lockState" name="lockState" class="easyui-combobox"
				data-options="valueField:'id',textField:'lockState',data:[{lockState:'已启用 ',id:'1'},{lockState:'关闭 ',id:'2'},{lockState:'未启用 ',id:'3'},{lockState:'电量不足 ',id:'4'},
				{lockState:'流量不足 ',id:'5'},{lockState:'非法开启 ',id:'6'},{lockState:'电源关闭 ',id:'7'},{lockState:'维修中 ',id:'8'},{lockState:'未知异常 ',id:'0'}],editable:false,panelWidth:100,panelHeight:200,required:true" /><br/>
				
				锁的类型：<input type="text" name="lockType" class="easyui-validatebox" data-options="required:true" /><br/>
				待机时长：<input type="text" name="powerLength" class="easyui-validatebox" data-options="required:true" />小时<br/>
				销售人员：<input type="text" name="salespersonName" class="easyui-validatebox" data-options="required:true" /><br/>
				销售人员电话：<input type="text" name="salespersonPhone" class="easyui-validatebox" data-options="required:true" /><br/>
				<a id="saveBtn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save' ">保存</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
				<a id="cancelBtn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cancel' ">取消</a>
			</form>  
		</div>
	</div>
</body>

</html>