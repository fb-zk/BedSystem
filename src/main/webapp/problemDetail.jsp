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
<title>问题反馈>查看</title>
<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<link rel="stylesheet" href="${ctx }/pages/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="${ctx }/pages/assets/fonts/iconfont.css">
<link rel="stylesheet" href="${ctx }/pages/assets/css/commonality.css">
<script src="${ctx }/pages/assets/js/jquery-2.1.4.min.js"></script>
<script src="${ctx }/pages/assets/js/bootstrap.min.js"></script>
</head>

<body>

	<style>
.head a {
	width: 157px;
	font-size: 19px;
	position: absolute;
	left: 42px;
	top: 22px;
	/* display: block; */
	/* height: 25px; */
	font-family: PingFang SC;
	font-weight: 500;
	color: rgba(61, 68, 67, 1);
}

.order {
	width: 269px;
	height: 46px;
	background: rgba(255, 255, 255, 1);
	border: 1px solid rgba(227, 227, 227, 1);
	border-radius: 4px;
	position: absolute;
	top: 15px;
}

.order span {
	width: 250px;
	display: block;
	height: 25px;
	font-size: 16px;
	font-family: PingFang SC;
	font-weight: 500;
	color: rgba(69, 69, 69, 1);
	margin-left: 15px;
	margin-top: 10px
}

.order1 {
	width: 143px;
	height: 46px;
	background: rgba(255, 255, 255, 1);
	border: 1px solid rgba(227, 227, 227, 1);
	border-radius: 4px;
	position: absolute;
	top: 15px;
	left: 300px;
}

.order1 span {
	width: 107px;
	height: 20px;
	font-size: 16px;
	display: inline-block;
	font-family: PingFang SC;
	font-weight: 500;
	color: rgba(69, 69, 69, 1);
	margin-left: 15px;
	margin-top: 10px
}

.order2 {
	width: 292px;
	height: 46px;
	background: rgba(255, 255, 255, 1);
	border: 1px solid rgba(227, 227, 227, 1);
	border-radius: 4px;
	position: absolute;
	top: 15px;
	left: 465px;
}

.order2 span {
	width: 260px;
	height: 37px;
	font-size: 16px;
	display: inline-block;
	font-family: PingFang SC;
	font-weight: 500;
	color: rgba(69, 69, 69, 1);
	margin-left: 14px;
	margin-top: 11px;
}

/* 备注内容开始 */
#remark {
	/* background-color: pink; */
	margin-top: 43px;
	width: 1500px;
	height: 244px;
	border: 1px solid rgba(227, 227, 227, 1);
}

#remark input {
	width: 100%;
	height: 244px;
	border: 1px solid rgba(227, 227, 227, 1);
	padding-bottom: 210px;
	padding-left: 20px;
	word-break: break-all;
	font-size: 18px;
	font-family: PingFang SC;
	font-weight: 500;
	color: rgba(44, 43, 43, 1);
}

#remark span {
	width: 75px;
	height: 15px;
	font-size: 16px;
	font-family: PingFang SC;
	font-weight: 500;
	color: rgba(55, 55, 55, 1);
	display: block;
	line-height: 30px;
}

#remark button {
	width: 160px;
	height: 46px;
	background: rgba(82, 206, 185, 1);
	border-radius: 4px;
	font-size: 21px;
	font-family: PingFang SC;
	font-weight: 500;
	color: rgba(255, 255, 255, 1);
	line-height: 46px;
	position: absolute;
	bottom: 80px;
	right: 200px;
}

/* .subject .remark span {
            position: absolute;
            left: 20px;
            top: 0;
        } */
#remark>button:nth-of-type(2) {
	width: 160px;
	height: 46px;
	background: rgba(179, 179, 179, 1);
	border-radius: 4px;
	font-size: 21px;
	font-family: PingFang SC;
	font-weight: 500;
	color: rgba(255, 255, 255, 1);
	line-height: 46px;
	position: absolute;
	bottom: 80px;
	right: 0px;
}

.list>div:nth-of-type(even) {
	background-color: #fff;
}

.submenu1 {
	flex-grow: 2
}

.describe1 {
	margin-left: 10px;
}

describe1>span {
	width: 151px;
}

.describe2 {
	position: relative;
}

.describe2 span {
	position: absolute;
	top: 0px;
	left: -40px;
}

.describe3 {
	flex-grow: 2;
	margin-left: 0px
}

.describe5 span {
	position: absolute;
	left: -100px;
}

#time {
	width: 200px;
	position: absolute;
	left: -180px;
}

.describe7 span {
	position: absolute;
	left: -85px;
}

.describe8 span {
	position: absolute;
	right: 180px;
}

#span1 {
	width: 200px;
}

#span2 {
	width: 150px;
	position: absolute;
	top: 0px;
	left: -94px;
}
#span3{
 width:200px;
    
    position: relative;
    left: -50px;
 
 
}
#span4{
width:150px;
position: relative;
    left: -70px;
}

#span5{
width:50px;
position: relative;
    left: -170px;
}

#span7{
width:150px;
position: absolute;
    left: -160px;
}
</style>


	<!-- 顶部导航开始 -->
	<nav class="navbar navbar-default navbar-fixed-top">

		<div class="container-fluid-left">
			<li class="dropdown " style="font-size: 27px;" id="bth01"><a
				href="#" class="dropdown-toggle" data-toggle="dropdown"
				role="button" aria-haspopup="true" aria-expanded="false"
				style="color: #067F6B;">陪护椅后台管理 </a></li>
			<!-- Brand and toggle get grouped for better mobile display -->





			<!-- 消息中心 -->
			<div class="Administrator">
				<i id="icon01" class="incon001"></i> <a href="#"
					style="font-size: 22px; font-family: PingFang SC; font-weight: 500; color: #000000">

					消息中心</a>
			</div>
			<!-- 消息中心结束 -->


			<!-- 管理员开始 -->
			<li class="dropdown" style="font-size: 20px;" id="bth02"><i
				id="icon02" class="incon002"></i> <a href="#"
				class="dropdown-toggle" data-toggle="dropdown" role="button"
				aria-haspopup="true" aria-expanded="false"
				style="color: #000000; font-size: 22px;"> 管理员 <span
					class="glyphicon glyphicon-menu-down"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">Action</a></li>
					<li><a href="#">Another action</a></li>
					<li><a href="#">Something else here</a></li>
					<!-- <li role="separator" class="divider"></li> -->
					<li><a href="#">Separated link</a></li>
				</ul></li>
	</nav>
	<!-- 顶部导航结束 -->
	<jsp:include page="head.jsp"></jsp:include>

	<!-- 左菜单开始 -->
	<jsp:include page="left.jsp"></jsp:include>
	<!-- 左菜单结束 -->

	<!-- 页头开始 -->
	<div class="head">
		<a href="#">问题反馈><span>查看</span></a>

	</div>






	<!-- 搜索框和下拉框 -->
	<div class="inquire">
		<div class="search">
			<!-- Single button -->
			<div class="order">
				<span class="message">订单编号：${detail.orderId}</span>
			</div>



			<div class="order1">
				<span class="message">状态： <c:if
						test="${detail.checkState==1 }">待审核</c:if> <c:if
						test="${detail.checkState==2 }">已通过</c:if> <c:if
						test="${detail.checkState==3 }">未通过</c:if>
				</span>
			</div>

			<div class="order2">
				<span class="message">提交时间：${detail.createTime}</span>
			</div>

		</div>
	</div>

	<!-- 页面主体 -->
	<div class="main">
		<!-- 头部菜单 -->
		<div class="menu">

			<div class="submenu1">
				<span>医院名称</span>
			</div>
			<div class="submenu2">
				<span>科室</span>

			</div>
			<div class="submenu3">
				<span>订单编号</span>
			</div>
			<div class="submenu4">
				<span>陪护椅编号</span>
			</div>
			<div class="submenu5">

				<span>问题编号</span>
			</div>
			<div class="submenu6">
				<span>提交时间</span>
			</div>
			<div class="submenu7">
				<span>联系方式</span>
			</div>
			<div class="submenu8">
				<span>审核状态</span>
			</div>
			<div class="submenu9">
				<span>维修状态</span>
			</div>
		</div>
		<div class="list">
			<div class="particulars1">
				<!-- <div class="describe0">
                            <input type="checkbox" value="n" style="zoom:130%;" />
                        </div> -->
				<div class="describe1">

					<span id="span1">${detail.hospitalName}</span>
				</div>
				<div class="describe2">
					<span id="span2">${detail.departmentName}</span>
				</div>
				<div class="describe3">
					<span id="span3">${detail.orderId}</span>
				</div>
				<div class="describe4">
					<span id="span4">${detail.bedCode}</span>
				</div>
				<div class="describe5">
					<span id="span5">${detail.problemState}</span>
				</div>
				<div class="describe6">
					<span id="time"> ${detail.createTime} <!-- <em>2019-09-18</em>
                        <i>12:21</i> -->
					</span>

				</div>
				<div class="describe7">
					<span id="span7"> ${detail.userPhone} </span>
				</div>
				<div class="describe8">
					<span> <c:if test="${detail.checkState==1 }">待审核</c:if> <c:if
							test="${detail.checkState==2 }">已通过</c:if> <c:if
							test="${detail.checkState==3 }">未通过</c:if>
					</span>
				</div>
				<div class="describe9">
					<span> <c:if test="${detail.maintainState==0 }">未维修</c:if> <c:if
							test="${detail.maintainState==1 }">已维修</c:if>
					</span>
				</div>
			</div>

			<div class="remark" id="remark">
				<span>备注:</span> <input type="text" class="input1">
				<c:if test="${detail.checkState==1 }">
					<button type="button" class="btn-primary4">
						<a href="${ctx }/checkYes?id=${detail.maintainId }">通过</a>
					</button>
					<button type="button" class="btn-primary4">
						<a href="${ctx }/checkNo?id=${detail.maintainId }">拒绝</a>
					</button>
				</c:if>
				<c:if test="${detail.checkState==2 and detail.maintainState==0}">
					<button type="button" class="btn-primary4">
						<a href="${ctx }/maintain?id=${detail.maintainId }">维修</a>
					</button>
				</c:if>
			</div>
		</div>
	</div>

</body>

</html>