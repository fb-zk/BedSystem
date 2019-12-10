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
<link rel="stylesheet" href="${ctx }/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="${ctx }/assets/fonts/iconfont.css">
<link rel="stylesheet" href="${ctx }/assets/css/commonality.css">
<link rel="stylesheet" href="${ctx }/css/tow-Add.css">

<link rel="stylesheet" href="${ctx }/assets/laydate/theme/default/laydate.css">
<link rel="stylesheet" href="../assets/diqu/css/city-picker.css">
<script src="${ctx }/assets/js/jquery-2.1.4.min.js"></script>
<script src="${ctx }/assets/js/bootstrap.min.js"></script>

<script src="${ctx }/assets/js/laydate.js"></script>
<script src="${ctx }/assets/diqu/js/city-picker.data.js"></script>
<script src="${ctx }/assets/diqu/js/city-picker.js"></script>


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
		<a href="#" style="">陪护椅信息>详情</a>
	</div>

	<!-- 页面主体 -->
	<form action="${ctx }/chaperoneInfo/editOne" method="post">
		<div class="main">
			<!-- 头部菜单 -->
			<div class="main1">
				<input name="id" value="${info.id }" type="hidden">
				<div class="changshangmingcheng">
					<span>陪护椅厂商名称：</span> <input name="chaperoneName" value="${info.chaperoneName }" type="text">
				</div>

				<div class="changshangdizhi">
					<span>陪护椅厂商地址：</span> <input name="chaperoneAddress" value="${info.chaperoneAddress }" list="students">
				</div>

				<div class="linkman">
					<span>陪护椅厂商联系人：</span> <input name="chaperoneContact" value="${info.chaperoneContact }" list="students1" placeholder="">

				</div>
				<div class="linkmanphone">
					<span>陪护椅厂商电话：</span> <input name="chaperoneTel" value="${info.chaperoneTel }" list="students1" placeholder="">
				</div>

				<div class="shoping">
					<span>采购时间：</span> <input name="purchaseTime" value="${info.purchaseTime }" type="text" placeholder="yyyy-MM-dd">
				</div>

				<div class="amount">
					<span>保修时间：</span> <input name="guarantee" value="${info.guarantee }" type="text" placeholder="" value="">
				</div>

				<div class="shuliang">
					<span>陪护椅数量：</span> <input name="quantity" value="${info.quantity }" list="students" placeholder="">

				</div>

				<div class="texture">
					<span>陪护椅材质：</span> <input name="material" value="${info.material }" list="students" placeholder="">
				</div>


				<div class="length">
					<span>椅子长度：</span> <input name="length" value="${info.length }" list="students" placeholder="">

				</div>

				<div class="width">
					<span>椅子宽度：</span> <input name="width" value="${info.width }" type="text" placeholder="">
				</div>

				<div class="heigth">
					<span>椅子高度：</span> <input name="height" value="${info.height }" type="text" placeholder="">
				</div>

				<div class="bedwidth">
					<span>床体长度：</span> <input name="bedLength" value="${info.bedLength }" type="text" placeholder="">
				</div>

				<div class="bedlenth">
					<span>床体宽度：</span> <input name="bedWidth" value="${info.bedWidth }" type="text" placeholder="">
				</div>

				<div class="bedheigth">
					<span>床体高度：</span> <input name="bedHeight" value="${info.bedHeight }" type="text" placeholder="">
				</div>


				<div class="weight">
					<span>承受体重:</span> <input name="bearWeight" value="${info.bearWeight }" type="text" placeholder="">
				</div>


				<div class="time">
					<span>理论使用次数:</span> <input name="usageCount" value="${info.usageCount }" type="text" placeholder="">
				</div>

				<div class="price ">
					<span>价格：</span> <input name="price" value="${info.price }" type="text" placeholder="">
				</div>
				<div class="data">
					<span>生产日期：</span> <input name="productDate" value="${info.productDate }" type="text" placeholder="yyyy-MM-dd">
				</div>

				<div class="number">
					<span>编号：</span> <input name="chaperoneCode" value="${info.chaperoneCode }" type="text" placeholder="">
				</div>


				<div class="type">
					<span>锁类型</span> <input name="lockType" value="${info.lockType }" type="text" placeholder="">
				</div>
				<div class="Standby">
					<span>锂电池待机时长：</span> <input name="duration" value="${info.duration }" type="text" placeholder="">
				</div>

				<div class="sell">
					<span>签约销售人：</span> <input name="seller" value="${info.seller }" type="text" placeholder="">
				</div>

				<div class="sellphone">
					<span>销售联系方式：</span> <input name="sellerTel" value="${info.sellerTel }" type="text" placeholder="">
				</div>

				<input type="submit" value="保存" id="yiyuanxinxi"></input>
			</div>

		</div>
	</form>

</body>

</html>