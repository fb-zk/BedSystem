<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>厂商订单</title>
    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/fonts//iconfont.css">

    <link rel="stylesheet" href="../assets/css/commonality.css">
    <script src="../assets/js/jquery-2.1.4.min.js"></script>

    <script src="../assets/js/bootstrap.min.js"></script>
</head>
<style>
    *{
        list-style: none;
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
    <a href="#" style="">厂商信息 > 订单详情</a>
</div>




<!-- 搜索框和下拉框 -->
<div class="inquire">
    <div class="search">

        <div class="content_input">
            <span>厂商名称：</span>
            <input type="text" class="search_field" placeholder="医院/编号/问题编号"><button class="search_btn">搜索</button>
            <button class="search_btn" id="chongzhi">重置</button>
            <button type="button" class="btn btn-primary2" data-toggle="modal" data-target="#exampleModal2"
                    data-whatever="@mdo" id="xiugai">修改编辑</button>
        </div>

        <!-- Single button -->

    </div>
</div>

<!-- 页面主体 -->
<div class="main">
    <!-- 头部菜单 -->
    <div class="menu">

        <div class="submenu1">
            <span>订单编码</span>
        </div>
        <div class="submenu2">
            <span>订单厂商</span>

        </div>
        <div class="submenu3">
            <span>订单单价(元)</span>
        </div>
        <div class="submenu4">
            <span>订单总量</span>
        </div>
        <div class="submenu5">

            <span>订单总价</span>
        </div>
        <div class="submenu6">
            <span>创建时间</span>
        </div>
        <div class="submenu6">
            <span>更新时间</span>
        </div>
    </div>
    <div class="list">
        <c:forEach var="factorOrder" items="${factory}" varStatus="status">
            <div class="particulars1">

                <div class="describe1">

                    <span>${factorOrder.code}</span>
                </div>
                <div class="describe2">
                    <span>${factorOrder.name}</span>
                </div>
                <div class="describe3">
                    <span>${factorOrder.unitPrices}</span>
                </div>
                <div class="describe4">
                    <span>${factorOrder.count}</span>
                </div>
                <div class="describe5">
                    <span>${factorOrder.totalPrices}</span>
                </div>
                <div class="describe6">
                    <span>${factorOrder.createTime}</span>
                </div>
                <div class="describe6">
                    <span>${factorOrder.updateTime}</span>
                </div>
            </div>
        </c:forEach>
    </div>

    <!-- 分页器 -->
    <div class="sorter">

        <div class="pager clearfix" style="margin-top:30px;">

            <a href="" class="pg-prev"></a>
            <a href="">1</a>
            <span>2</span>
            <!-- <span class="current">2</span> -->
            <a href="">3</a>
            <a href="">4</a>
            <a href="">5</a>


            <span class="els">...</span>
            <a href="">11</a>
            <a href="" class="pg-next" disabled="true"></a>

        </div>


    </div>
</div>

<script src="../assets/js/jquery.z-pager.js"></script>
<script>
    // 小圆点的

    $(".nav-stacked li>ul>li").mouseover(function () {

        // $(".nav-stacked li>ul>li>span").css("background","rgba(9, 182, 153, 1)").siblings().removeClass("color","")
        $("this>span").addClass("active1").siblings().removeClass("active1");



    })

    // 分页器
    $("#pager").zPager({
        totalData: 60
    });
</script>
</body>

</html>