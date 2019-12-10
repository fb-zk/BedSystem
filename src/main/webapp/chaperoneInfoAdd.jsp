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
<title>陪护椅信息>详情</title>
<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
<link rel="stylesheet" href="../assets//fonts//iconfont.css">
<link rel="stylesheet" href="../assets/css/commonality.css">
<link rel="stylesheet" href="./css/tow-Add.css">

<link rel="stylesheet"
	href="../assets/laydate/theme/default/laydate.css">
<link rel="stylesheet" href="../assets/diqu/css/city-picker.css">
<script src="../assets/js/jquery-2.1.4.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>

<script src="../assets/js/laydate.js"></script>
<script src="../assets/diqu/js/city-picker.data.js"></script>
<script src="../assets/diqu/js/city-picker.js"></script>


</head>

<body>

	<style>
#city-picker3 {
	width: 300px;
	height: 44px;
	line-height: 43px;
	text-align: center;
}

.btn-primary1 {
	position: absolute;
	right: 750px;
	top: 3px;
}

.modal-content1 {
	height: 240px;
	width: 540px;
	position: absolute;
	top: 360px;
}

.add-information0 {
	width: 540px;
	height: 62px;
	background: rgba(234, 234, 234, 1);
	border-radius: 4px 4px 0px 0px;
}

.add-information1 {
	font-size: 20px;
}

.add-information1 input {
	height: 40px;
	width: 420px;
	margin-left: 20px;
	margin-top: 20px;
}

.modal-footer1 button {
	background: rgba(9, 182, 153, 1);
	border-radius: 2px;
	width: 150px;
	height: 40px;
	color: #fff;
}

#queding {
	position: absolute;
	left: -450px;
	top: -30px;
}

#quxiao {
	position: absolute;
	left: -220px;
	top: -30px;
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
		<a href="#" style="">陪护椅信息>详情>添加</a>
	</div>

	<!-- 页面主体 -->
	<form action="${ctx }/chaperoneInfo/addOne" method="post">
		<div class="main">
			<!-- 头部菜单 -->
			<div class="main1">
				<div class="seat_id ">
					<span>陪护椅编码：</span> <input name="chaperoneName" type="text">
				</div>

				<div class="hospital_name">
					<span>医院名称：</span> <input name="chaperoneAddress" list="students">
				</div>

				<div class="Hospital_category">
					<span>医院科室：</span> <input name="chaperoneContact" list="students1" placeholder="">

				</div>
				<div class="linkman">
					<span>工厂名称：</span> <input name="chaperoneTel" list="students1" placeholder="">
				</div>


				<div class="length">
					<span>陪护椅长度：</span> <input name="length" list="students" placeholder="">

				</div>
				<div class="width">
					<span>陪护椅宽度：</span> <input name="width" type="text" placeholder="">
				</div>

				<div class="heigth">
					<span>陪护椅高度：</span> <input name="height" type="text" placeholder="">
				</div>


				<div class="weight">
					<span>陪护椅载重:</span> <input name="bearWeight" type="text" placeholder="">
				</div>

				<div class="time">
					<span>最大使用次数:</span> <input name="usageCount" type="text" placeholder="">
				</div>


				<div class="texture">
					<span>陪护椅材质：</span> <input name="material" list="students" placeholder="">
				</div>

				<div class="price ">
					<span>陪护椅单价：</span> <input name="price" type="text" placeholder="">
				</div>

				<div class="data">
					<span>生产日期：</span> <input type="text" class="demo-input " placeholder="请选择" id="test2">
				</div>
				<div class="amount">
					<span>保修时间：</span> <input name="guarantee" type="text" placeholder="" value="">
				</div>





				<div class="shoping">
					<span>采购时间：</span>   <input type="text" class="demo-input " placeholder="请选择" id="test1">
				</div>



				<div class="shuliang">
					<span>陪护椅数量：</span> <input name="quantity" list="students" placeholder="">

				</div>

				<div class="Binding_state1">
				<span>绑定状态：</span>
				<div class="btn-group">
					<select name="" id="select_box1">
						<option selected="selected" disabled="disabled"  style='display: none' value=''>请选择</option>
						<option value="1">已绑定</option>
						<option value="2">未绑定</option>
					</select>

				</div>
			</div>

				<div class="Binding_state2">
					<span>锁状态：</span>
					<div class="btn-group">
						<select name="" id="select_box2">
							<option selected="selected" disabled="disabled"  style='display: none' value=''>请选择</option>
							<option value="1">开启</option>
							<option value="2">关闭</option>
						</select>

					</div>
				</div>

				<div class="Binding_state3">
					<span>锁类型：</span>
					<div class="btn-group">
						<select name="" id="select_box3">
							<option selected="selected" disabled="disabled"  style='display: none' value=''>请选择</option>
							<option value="1">蓝牙锁</option>
							<option value="2">4G锁</option>
						</select>

					</div>
				</div>
				<div class="Standby">
					<span>陪护椅锁待机时长：</span> <input name="duration" type="text" placeholder="">
				</div>

				<div class="sell">
					<span>陪护椅销售人员：</span> <input name="seller" type="text" placeholder="">
				</div>

				<div class="sellphone">
					<span>陪护椅销售人员联系方式：</span> <input name="sellerTel" type="text" placeholder="">
				</div>
















				<input type="submit" value="保存" id="yiyuanxinxi"></input>
			</div>

		</div>
	</form>
	<script>
		laydate.render({
			elem: '#test1' //指定元素
		});
		laydate.render({
			elem: '#test2' //指定元素
		});
	</script>


</body>

</html>