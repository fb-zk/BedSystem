<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>陪护椅主页</title>
    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">

    <link rel="stylesheet" href="../assets/fonts/iconfont.css">

    <link rel="stylesheet" href="../assets/css/commonality.css">
    <link rel="stylesheet" href="./css/homepage.css">
    <!-- <link rel="stylesheet/less" type="text/css" href="./styles.less" /> -->

    <script src="../assets/js/jquery-2.1.4.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>

    <!-- <script src="//cdnjs.cloudflare.com/ajax/libs/less.js/3.10.0-beta/less.min.js"></script> -->
</head>

<body>

    <style>
        .head a {
            width:260px;
        }




        #bth01{
            position: absolute;
            left: 100px;
            top: 5px;
        }
        #icon{
            width: 66px;
            height: 3px;
            display: inline-block;
            background: rgba(0, 0, 0, 0);
        }
        #bth02 {
            width: 147px;
            position: absolute;
            height: 23px;
            right: 100px;
            top: 30px;
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
    </style>

    <!-- 顶部导航开始 -->
    <jsp:include page="head.jsp"></jsp:include>
    <!-- 顶部导航结束 -->

    <!-- 左菜单开始 -->
    <%--<div class="menuleft"></div>--%>
    <jsp:include page="left.jsp"></jsp:include>
    <!-- 左菜单结束 -->

    <!-- 页头开始 -->
    <div class="head">
        <a href="#" style="">陪护椅主页>数据总览</a>

    </div>


    <!-- 页面主体 -->
    <div class="main">


        <div class="submenu1">
            <h3>陪护椅厂商</h3>
            <span>
                <img src="../assets/fonts/index/未标题-1_03.png" alt="">
            </span>
            <i></i>
            <li>生产厂家：<span>2家</span></li>
            <li>投入总量：<span>1500张</span></li>
            <li>投入使用：<span>1000张</span></li>
        </div>
        <div class="submenu2">
            <h3>投入使用情况</h3>
            <span>
                <img src="../assets/fonts/index/未标题-1_05.png" alt="">
            </span>
            <i></i>
            <li>开启：<span>100张</span></li>
            <li>关闭投入总量：<span>15张</span></li>
            <li>维修：<span>10张</span></li>
        </div>
        <div class="submenu3">
            <h3>运营管理者</h3>
            <span>
                <img src="../assets/fonts/index/未标题-1_07.png" alt="">
            </span>
            <i></i>
            <li>医院管理员：<span>4人</span></li>
            <li>百穗管理员：<span>8人</span></li>

        </div>
        <div class="submenu4">
            <h3>医院管理</h3>
            <span>
                <img src="../assets/fonts/index/未标题-1_09.png" alt="">
            </span>
            <i></i>
            <li>医院总数：<span>2家</span></li>
            <li>服务期内：<span>12家</span></li>
            <li>服务到期：<span>9家</span></li>
        </div>
        <div class="submenu5">
            <h3>问题管理</h3>
            <span>
                <img src="../assets/fonts/index/未标题-1_15.png" alt="">
            </span>
            <i></i>
            <li>待审核：<span>42条</span></li>
            <li>未维修：<span>12条</span></li>
            <li>已维修：<span>8人</span></li>
        </div>
        <div class="submenu6">
            <h3>消费用户</h3>
            <span>
                <img src="../assets/fonts/index/未标题-1_17.png" alt="">
            </span>
            <i></i>
            <li>总消费人数：<span>8人</span></li>

        </div>
        <div class="submenu7">
            <h3>订单统计</h3>
            <span>
                <img src="../assets/fonts/index/未标题-1_20.png" alt="">
            </span>
            <i></i>
            <li>总订单：<span>82笔</span></li>
            <li>总次数：<span>1500次</span></li>
            <li>总费用：<span>1000元</span></li>
        </div>
        <div class="submenu8">
            <h3>销售人员</h3>
            <span>
                <img src="../assets/fonts/index/未标题-1_22.png" alt="">
            </span>
            <i></i>
            <li>销售人员：<span>8人</span></li>

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