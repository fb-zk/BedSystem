<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>管理医院>信息录入</title>
    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets//fonts//iconfont.css">
    <link rel="stylesheet" href="../assets/css/commonality.css">
    <script src="../assets/js/jquery-2.1.4.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <!-- <script src="../assets/js/jquery.z-pager.js"></script> -->
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

        .describe9 {
            flex-grow: 2;
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
    </style>

    <!-- 顶部导航开始 -->
    <%--<nav class="navbar navbar-default navbar-fixed-top"></nav>--%>
    <jsp:include page="head.jsp"></jsp:include>
    <!-- 顶部导航结束 -->

    <!-- 左菜单开始 -->
    <%--<div class="menuleft"></div>--%>
    <jsp:include page="left.jsp"></jsp:include>
    <!-- 左菜单结束 -->

    <!-- 页头开始 -->
    <div class="head">
        <a href="#" style="">医院管理>信息录入</a>
        <div>
            <span class="tubiao1">
                <i>
                    <img src="../assets/fonts/font/未标题-1_13.png" alt="">
                </i>
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">删除
                </button>
            </span>

            <span class="tubiao2">
                <i>
                    <img src="../assets/fonts/font/未标题-1_16.png" alt="">
                </i>
                <button type="button" class="btn btn-primary1" data-toggle="modal" data-target="#exampleModal"
                    data-whatever="@mdo" id="add">医院录入</button>
            </span>
        </div>
    </div>



    <!-- 删除按钮 -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
    <%--<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">--%>
        <%--<div class="modal-dialog" role="document">--%>
            <%--<div class="modal-content1">--%>
                <%--<div class="add-information0" id="">--%>
                    <%--<span>添加信息</span>--%>
                    <%--<span class="iconfont icon-shanchu" id="bth"></span>--%>
                <%--</div>--%>
                <%--<div class="add-information1">--%>
                    <%--<span>所在医院：</span><input type="text" style="width:240px; border-radius:6px;text-align: justify">--%>
                <%--</div>--%>
                <%--<div class="add-information1">--%>
                    <%--<span>订单科室：</span><input type="text" style="width:240px; border-radius:6px;text-align: justify">--%>
                <%--</div>--%>
                <%--<div class="add-information1">--%>
                    <%--<span>订单编号：</span><input type="text" style="width:240px; border-radius:6px;text-align: justify">--%>
                <%--</div>--%>
                <%--<div class="add-information1">--%>
                    <%--<span>订单状态：</span></span><input type="text" style="width:240px; border-radius:6px;">--%>
                <%--</div>--%>
                <%--<div class="add-information1">--%>
                    <%--<span>维护人员：</span><input type="text" style="width:240px; border-radius:6px;">--%>
                <%--</div>--%>
                <%--<div class="add-information1">--%>
                    <%--<span>陪护椅编号：</span><input type="text" style="width:240px; border-radius:6px;">--%>
                <%--</div>--%>






                <%--<div class="modal-footer1">--%>
                    <%--<button type="button" class="btn btn-default" data-dismiss="modal">确定</button>--%>
                    <%--<button type="button" class="btn btn-primary">取消</button>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>


    <!-- 搜索框和下拉框 -->
    <div class="inquire">
        <div class="search">
            <!-- Single button -->
            <div class="btn-group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    全部状态 <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <%--<li><a href="#">正常</a></li>--%>
                    <%--<li><a href="#">异常</a></li>--%>
                    <%--<li><a href="#">待审核</a></li>--%>
                        <li><a href="#">到期</a></li>
                        <li><a href="#">服务中</a></li>
                    <!-- <li role="separator" class="divider"></li>
                            <li><a href="#">Separated link</a></li> -->
                </ul>
            </div>

            <div class="btn-group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    筛选条件 <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="#">医院</a></li>
                    <li><a href="#">科室</a></li>
                    <li><a href="#">维护人员</a></li>
                    <!-- <li role="separator" class="divider">订单编号</li> -->
                    <li><a href="#">状态</a></li>
                    <li><a href="#">订单编号</a></li>
                </ul>
            </div>


            <div class="content_input">
                <input type="text" class="search_field" placeholder="医院/销售人员"><button class="search_btn">搜索</button>
            </div>

            <!-- Single button -->
            <div class="btn-group1">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" id="bth3"
                    aria-haspopup="true" aria-expanded="false">
                    默认排序 <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="#">时间</a></li>
                    <li><a href="#">时长</a></li>
                    <li><a href="#">最近订单</a></li>
                    <li><a href="#">最远订单</a></li>
                </ul>
            </div>
        </div>
    </div>

    <!-- 页面主体 -->
    <div class="main">
        <div id = 'tt'></div>
    </div>

    <script src="../assets/js/jquery.z-pager.js"></script>
    <script>
        // 小圆点的

        $(".nav-stacked li>ul>li").mouseover(function () {

            // $(".nav-stacked li>ul>li>span").css("background","rgba(9, 182, 153, 1)").siblings().removeClass("color","")
            $("this>span").addClass("active1").siblings().removeClass("active1");



        })
             $("#add").click(function () {
                 window.location.href="./add.jsp";
             })
        // 分页器
        $("#pager").zPager({
            totalData: 60
        });
    </script>
    <link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/default/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/icon.css"/>
    <script src="./plugs/easyui/jquery.easyui.min.js"></script>
    <script src="./plugs/easyui/locale/easyui-lang-zh_CN.js"></script>
    <script src="./js/manage.js"></script>
</body>

</html>