<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>陪护椅信息</title>
    <meta name="description" content="overview &amp; stats"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets//fonts//iconfont.css">
    <link rel="stylesheet" href="../assets/css/commonality.css">
    <link rel="stylesheet" href="../assets/css/gongzhong.css">
    <link rel="stylesheet" href="./css/monitor.css">
    <script src="../assets/js/jquery-2.1.4.min.js"></script>
    <script src="../assets/js/bootstrap.min.jsjs"></script>
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


    .describe1 {
        flex-grow: 0.8;
        position: relative;
    }

    .describe1 > span {
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

    .describe4 > span {
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


    .describe9 > span .btn {
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

    .particulars1 {
        font-size: 18px;
    }
</style>

<!-- 顶部导航开始 -->
<nav class="navbar navbar-default navbar-fixed-top">

    <div class="container-fluid-left">
        <li class="dropdown " style="font-size:27px;" id="bth01">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
               aria-expanded="false" style="color:#067F6B;">陪护椅后台管理 </a>
        </li>
        <!-- Brand and toggle get grouped for better mobile display -->


        <!-- 消息中心 -->
        <div class="Administrator">
            <i id="icon01" class="incon001"></i>
            <a href="#" style="font-size:22px;
                    font-family:PingFang SC;
                    font-weight:500; color:#000000">

                消息中心</a>
        </div>
        <!-- 消息中心结束 -->


        <!-- 管理员开始 -->
        <li class="dropdown" style="font-size:20px;" id="bth02">
            <i id="icon02" class="incon002"></i>
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
               aria-expanded="false" style="color:#000000;  font-size: 22px;">
                管理员
                <span class="glyphicon glyphicon-menu-down"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <!-- <li role="separator" class="divider"></li> -->
                <li><a href="#">Separated link</a></li>
            </ul>
        </li>
</nav>
<!-- 顶部导航结束 -->

<!-- 左菜单开始 -->
<div class="menuleft">
    <ul class="nav nav-stacked">
        <li role="presentation">

            <a href="#" style="font-size:22px" data-toggle="collapse" data-target="#list0">
                <i class="icno003" id="icno003">

                </i>
                <span class="gailan">陪护椅管理</span>

            </a>
            <ul id="list0" class="collapse ">
                <li class="active">
                    <span class="circle" id="zhanqi"></span>
                    <a href="./homepage.html" style=>
                        陪护椅信息
                    </a>
                </li>
                <li>
                    <span class="circle"></span>
                    <a href="">绑定</a>
                </li>
            </ul>
        </li>
        <!-- 侧边栏选项 -->
        <li role="presentation" class="active">
            <!-- 选项控制data-target对应的显隐 -->
            <a href="#" data-toggle="collapse" data-target="#list" style="font-size:22px">
                <i class="icno004" id="icno004"></i>
                <span class="gailan1">医院管理</span>
            </a>
            <!-- 隐藏的详细菜单 -->
            <ul id="list" class="collapse ">
                <li class="active">
                    <span class="circle"></span>
                    <a href="" style=>
                        信息录入
                    </a>
                </li>
                <li>
                    <span class="circle"></span>
                    <a href="">计费管理</a>
                </li>
            </ul>
        </li>
        <li role="presentation"><a href="#" style="font-size:22px" data-toggle="collapse" data-target="#list01">
            <i class="icno005" id="icno005"></i>
            <span class="gailan2">监测管理</span>

        </a>
            <ul id="list01" class="collapse ">
                <li class="active">
                    <span class="circle"></span>
                    <a href="../monitor/monitor.html" style=>
                        监测管理
                    </a>
                </li>

            </ul>

        </li>
        <li role="presentation" class="active">
            <!-- 选项控制data-target对应的显隐 -->
            <a href="#" data-toggle="collapse" data-target="#list2" style="font-size:22px">
                <i class="icno006" id="icno006"></i>
                <span class="gailan3">问题反馈</span>

            </a>
            <!-- 隐藏的详细菜单 -->
            <ul id="list2" class="collapse ">
                <li class="active">
                    <span class="circle"></span>
                    <a href="./statistics.html">
                        问题反馈
                    </a>
                </li>

            </ul>
        </li>

        <li role="presentation" class="active">
            <!-- 选项控制data-target对应的显隐 -->
            <a href="#" data-toggle="collapse" data-target="#list3" style="font-size:22px">
                <i class="icno007" id="icno007"></i>
                <span class="gailan4">统计分析</span>
            </a>
            <!-- 隐藏的详细菜单 -->
            <ul id="list3" class="collapse ">
                <li class="active">
                    <span class="circle"></span>
                    <a href="./monitor.html">
                        使用次数统计
                    </a>
                </li>
                <li>
                    <span class="circle"></span>
                    <a href="">订单统计</a>
                </li>
                <li>
                    <span class="circle"></span>
                    <a href="">地区统计</a>
                </li>
                <li>
                    <span class="circle"></span>
                    <a href="">医院性质统计</a>
                </li>
                <li>
                    <span class="circle"></span>
                    <a href="">医院等级统计</a>
                </li>
                <li>
                    <span class="circle"></span>
                    <a href="">科室统计</a>
                </li>

                <li>
                    <span class="circle"></span>
                    <a href="">时间段统计</a>
                </li>
                <li>
                    <span class="circle"></span>
                    <a href="">入驻医院统计</a>
                </li>
                <li>
                    <span class="circle"></span>
                    <a href="">消费者统计</a>
                </li>

            </ul>
        </li>
        <li>
            <a href="#" data-toggle="collapse" data-target="#list6" style="font-size:22px">
                <i class="icno009" id="icno009"></i>
                <span class="gailan6">系统管理</span>
            </a>
            <!-- 隐藏的详细菜单 -->
            <ul id="list6" class="collapse ">
                <li class="active" style="font-size:18px">
                    <span class="circle"></span>
                    <a href="">
                        角色管理
                    </a>
                </li>
                <li>
                    <span class="circle"></span>
                    <a href="#">医院管理</a></li>
            </ul>
        </li>
    </ul>
</div>
<!-- 左菜单结束 -->

<!-- 页头开始 -->
<div class="head">
    <a href="./information.jsp" style="">陪护椅信息</a>
    <div>


      <span class="tubiao2">
        <i>
          <img src="../assets/fonts/font/未标题-1_16.png" alt="">
        </i>
        <button type="button" class="btn btn-primary1" data-toggle="modal" data-target="#exampleModal"
                data-whatever="@mdo">添加</button>
      </span>
    </div>
</div>


<!-- 添加按钮 -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content1">
            <div class="add-information0" id="">
                <span>添加信息</span>
                <span class="iconfont icon-shanchu" id="bth"></span>
            </div>
            <div class="add-information1">
                <span>所在医院：</span><input type="text" style="width:240px; border-radius:6px;text-align: justify">
            </div>
            <div class="add-information1">
                <span>订单科室：</span><input type="text" style="width:240px; border-radius:6px;text-align: justify">
            </div>
            <div class="add-information1">
                <span>订单编号：</span><input type="text" style="width:240px; border-radius:6px;text-align: justify">
            </div>
            <div class="add-information1">
                <span>订单状态：</span></span><input type="text" style="width:240px; border-radius:6px;">
            </div>
            <div class="add-information1">
                <span>维护人员：</span><input type="text" style="width:240px; border-radius:6px;">
            </div>
            <div class="add-information1">
                <span>陪护椅编号：</span><input type="text" style="width:240px; border-radius:6px;">
            </div>


            <div class="modal-footer1">
                <button type="button" class="btn btn-default" data-dismiss="modal">确定</button>
                <button type="button" class="btn btn-primary">取消</button>
            </div>
        </div>
    </div>
</div>


<!-- 搜索框和下拉框 -->
<div class="inquire">
    <div class="search">
        <!-- Single button -->


        <div class="content_input">
            <span id="changshang">厂商名称：</span>
            <input type="text" class="search_field" placeholder="请输入厂商名称" id="bth9">
            <button class="search_btn">搜索</button>
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
    <!-- 头部菜单 -->
    <div class="menu">

        <div class="submenu1">
            <span>陪护椅厂商名称</span>
        </div>
        <div class="submenu2">
            <span>采购数量</span>

        </div>
        <div class="submenu3">
            <span>价格</span>
        </div>
        <div class="submenu4">
            <span>生成日期</span>
        </div>
        <div class="submenu5">

            <span>保修期</span>
        </div>
        <div class="submenu6">
            <span>详情</span>
        </div>

    </div>
    <div class="nist">
        <div class="particulars1">
            <div class="describe00">
                <span>广州某某共享科技有限公司</span>
            </div>
            <div class="describe01">

                <span>800</span>
            </div>
            <div class="describe02">
                <span>￥26500</span>
            </div>
            <div class="describe03">
                <span>2019-08-30</span>
            </div>
            <div class="describe04">
                <span>3年</span>
            </div>
            <div class="describe05">
                <span><a href="#">查看</a></span>
            </div>


        </div>
        <div class="particulars1">
            <div class="describe00">
                <span>广州某某共享科技有限公司</span>
            </div>
            <div class="describe01">

                <span>800</span>
            </div>
            <div class="describe02">
                <span>￥26500</span>
            </div>
            <div class="describe03">
                <span>2019-08-30</span>
            </div>
            <div class="describe04">
                <span>3年</span>
            </div>
            <div class="describe05">
                <span><a href="#">查看</a></span>
            </div>


        </div>
        <div class="particulars1">
            <div class="describe00">
                <span>广州某某共享科技有限公司</span>
            </div>
            <div class="describe01">

                <span>800</span>
            </div>
            <div class="describe02">
                <span>￥26500</span>
            </div>
            <div class="describe03">
                <span>2019-08-30</span>
            </div>
            <div class="describe04">
                <span>3年</span>
            </div>
            <div class="describe05">
                <span><a href="#">查看</a></span>
            </div>


        </div>
        <div class="particulars1">
            <div class="describe00">
                <span>广州某某共享科技有限公司</span>
            </div>
            <div class="describe01">

                <span>800</span>
            </div>
            <div class="describe02">
                <span>￥26500</span>
            </div>
            <div class="describe03">
                <span>2019-08-30</span>
            </div>
            <div class="describe04">
                <span>3年</span>
            </div>
            <div class="describe05">
                <span><a href="#">查看</a></span>
            </div>


        </div>
        <div class="particulars1">
            <div class="describe00">
                <span>广州某某共享科技有限公司</span>
            </div>
            <div class="describe01">

                <span>800</span>
            </div>
            <div class="describe02">
                <span>￥26500</span>
            </div>
            <div class="describe03">
                <span>2019-08-30</span>
            </div>
            <div class="describe04">
                <span>3年</span>
            </div>
            <div class="describe05">
                <span><a href="#">查看</a></span>
            </div>


        </div>


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


    <!-- 按钮修改 -->
    <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content1">
                <div class="add-information0" id="">
                    <span>编辑修改信息</span>
                    <span class="iconfont icon-shanchu" id="bth"></span>
                </div>
                <div class="add-information1">
                    <span>医院名称：</span><input type="text" style="width:240px; border-radius:6px;text-align: justify">
                </div>
                <div class="add-information1">
                    <span>医院等级：</span><input type="text" style="width:240px; border-radius:6px;text-align: justify">
                </div>
                <div class="add-information1">
                    <span>联系方式：</span><input type="text" style="width:240px; border-radius:6px;text-align: justify">
                </div>

                <div class="add-information1">
                    <span>销售人员：</span><input type="text" style="width:240px; border-radius:6px;">
                </div>
                <div class="add-information4">
                    <span>状态：</span><input type="text" style="width:240px; border-radius:6px;">
                </div>
                <div class="add-information5">
                    <span>性质：</span></span><input type="text" style="width:240px; border-radius:6px;">
                </div>


                <div class="modal-footer1">
                    <button type="button" class="btn btn-default" data-dismiss="modal" id="btn-default1">确定</button>
                    <button type="button" class="btn btn-primary" id="btn-primary1">取消</button>
                </div>
            </div>
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