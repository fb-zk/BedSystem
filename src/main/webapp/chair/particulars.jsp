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
    <title> 陪护椅详情</title>
    <meta name="description" content="overview &amp; stats"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <link rel="stylesheet" href="../css/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../fonts/iconfont.css">
    <script type="text/javascript" src="/pages/assets/js/jquery-2.1.4.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>

</head>

<body class="no-skin">
<script>
    $(function () {
        var list = '';

        var baseUrl = 'http://192.168.1.13:8080';
        $.ajax({
            type: "post",
            url: baseUrl + '/bedInfo/queryAll',
            data: {},
            dataType: "json",
            contentType: "application/json",
            success: function (res) {
                // var json = eval("("+res+")");
                list = res;
                console.log(list)
                for (var i = 0; i < list.length; i++) {
                    console.log("list:" + JSON.stringify(list[i]));

                }
                // console.log("data:" + JSON.stringify(res));
                // console.log("json:" + json);
                //


            }
        })
    });
    // $().onclick(function () {
    //
    // })
</script>
<style>
    body {
        background-color: #F0F0F2;
        overflow-x: hidden;
    }

    #main {
        margin-top: 60px;
        width: 100%;
        height: 100%;
        /* background:red;*/
        display: flex;
        flex-wrap: wrap;
        flex-direction: row;
        justify-content: start;
    }

    .top-head {
        width: 100%;
        height: 10%;
        /* background: orange;*/
        display: flex;
        flex-wrap: no-wrap;
        justify-content: center;
    }

    .left-menu {
        width: 10%;
        height: 660px;
        background: #fff;

    }


    #logo {
        width: 10%;
        height: 100%;
        line-height: 80px;
        /* background:purple; */
    }

    #title {
        width: 50%;
        font-size: 28px;
        text-align: center;
        line-height: 80px;
        /*background:#eee;*/
    }

    #per-mes {
        width: 20%;
        height: 100%;
        line-height: 80px;
        /*background:green;*/
    }

    li {
        list-style: none;
    }

    a {
        text-decoration: none;
    }

    a:focus,
    a:hover {
        color: #23527c;
        text-decoration: none;
    }

    li:hover {
        list-style: none;
    }


    .icon-home:before {
        margin-right: 10px;
    }

    .icon-order-o:before {
        margin-right: 10px;
    }

    .navbar-default .navbar-brand {
        color: #fff;
        padding: 15px 15px;
    }

    /* 左边菜单结束 */


    /* 主页面---页头 */
    .content {
        width: 90%;
        height: 660px;
        /* background-color: yellow; */
        position: absolute;
        top: 60px;
        left: 12%;

    }

    /* 顶部页头开始 */
    .head {
        height: 35px;
        border-bottom: solid 2px #ccc;
        background-color: #F0F0F2;
    }

    .head a {
        font-size: 14px;
        line-height: 40px;
        margin-left: 10px;
        font-weight: bold;
    }

    .head div {
        position: absolute;
        right: 90px;
        top: 8px;
    }

    .head div span {
        margin-left: 15px;
        font-size: 13px;
    }

    /* 顶部页头结束*/


    /*主页搜索开始  */
    .search {
        height: 50px;
        /* background-color: pink; */
        border-bottom: solid 1px #ccc;
    }

    .btn {
        border-radius: 8px;
    }

    .btn-group > .btn:first-child {
        margin-left: 16px;
        margin-top: 12px;
    }

    .content_input .search_field {
        /*输入框样式*/

        width: 260px;
        height: 30px;
        line-height: 30px;
        border: 1px solid #C7C7C8;
        /* float: left; */
        position: absolute;
        left: 235px;
        top: 50px;
        border-radius: 6px;
        padding-left: 8px;

    }

    .content_input .search_btn {
        /*按钮样式*/
        width: 80px;
        height: 30px;
        line-height: 30px;
        color: #888888;
        /* font-weight: bold; */
        background: #ffff;
        border: none;
        position: absolute;
        left: 500px;
        top: 50px;
        border-radius: 6px;
    }

    .btn-group1 {
        position: absolute;
        right: 40px;
        top: 47px;
    }

    /*主页搜索结束  */

    /*主页菜单开始  */
    .menu {
        height: 35px;
        /* border-bottom: solid 1px #ccc; */
        display: flex;
        flex-direction: row;
        -webkit-flex-direction: row;
        text-align: center;
        line-height: 35px;
        font-size: 13px;
        margin-left: 40px;
    }

    /* .submenu0{
                flex-grow: 0.1;
                 background-color: yellowgreen;
            } */
    .submenu1 {
        /* background-color: #ccc; */
        flex-grow: 3;
    }

    .submenu2 {
        /* background-color: #fff; */
        flex-grow: 2;
    }

    .submenu3 {
        /* background-color: pink; */
        flex-grow: 2;
    }

    .submenu4 {
        /* background-color: sandybrown; */
        flex-grow: 1;
    }

    .submenu5 {
        /* background-color: skyblue; */
        flex-grow: 1;
    }

    .submenu6 {
        /* background-color: silver; */
        flex-grow: 1;
    }

    .submenu7 {
        /* background-color: yellowgreen; */
        flex-grow: 1;
    }

    /* 主页顶部菜单结束 */

    /* 主页内容开始 */
    .subject {
        width: 100%;
        height: 538px;
        /* background-color:yellow; */

    }

    .particulars1 {
        border-bottom: 1px solid #000;
        background-color: #fff;
    }

    .subject > div {
        width: 100%;
        height: 85px;
        /* background-color: #ccc; */
        display: flex;
        flex-direction: row;
        -webkit-flex-direction: row;
        text-align: center;
        line-height: 100px;
    }

    .describe0 {
        /* flex-grow: 0.1;
                 background-color: yellowgreen; */
    }


    .describe1 {
        flex-grow: 3;
        /* background-color: #ccc; */
        width: 0;
        text-align: center;
        color: #64808E;

    }

    .describe2 {
        flex-grow: 2;
        /* background-color: #fff; */
        width: 0;
    }

    .describe3 {
        flex-grow: 2;
        /* background-color: pink; */
        width: 0;
    }

    .describe4 {
        flex-grow: 1;
        /* background-color: sandybrown; */
        width: 0;

    }

    .describe4 span {
        margin-left: -20px;
    }

    .describe5 {
        flex-grow: 1;
        /* background-color: skyblue; */
        width: 0;
    }

    .describe5 span {
        margin-left: -10px;
    }

    .describe6 {
        flex-grow: 1;
        /* background-color: silver; */
        width: 0;
    }

    .describe6 span {
        margin-left: 10px;
    }

    .describe7 {
        flex-grow: 1;
        /* background-color: yellowgreen; */
        width: 0;
    }

    .describe7 span {
        margin-left: -3px;
    }

    /* 设置复选框 */
    input[type=checkbox],
    input[type=radio] {
        margin: 30px 0 0;
        margin-left: 10px;
    }

    /* 分页 */
    .pagination {
        position: absolute;
        right: 60px;
    }

    /* 点击删除按钮 */
    .btn-group-lg > .btn,
    .btn-lg {
        padding: 0px 5px;
        font-size: 13px;
        line-height: 1.3333333;
        border-radius: 6px;
    }

    .btn-primary {
        /* background-color:#F0F0F2; */
        background-color: transparent;
        color: #000;
        border: 0;
    }

    .modal-content {
        background: #607D8B;
        top: 200px;
        left: 60px;
        position: relative;

        height: 200px;
    }

    .modal-title {
        line-height: 7.428571;
        text-align: center;
        color: #fff;
    }

    .modal-footer {
        border: 0;
    }

    /* 添加按钮 */
    .btn-primary1 {
        position: absolute;
        top: -4px;
        font-size: 13px;
        right: -40px;
        padding: 5px;
        background-color: #F0F0F2;
        border: 0;
    }

    .modal-content1 {
        background-color: #fff;
        height: 580px;
    }

    .modal-footer1 {
        position: absolute;
        bottom: 20px;
        right: 30px;
    }

    .add-information0 {
        height: 35px;
        background-color: #708A97;
        position: relative;
    }

    .add-information0 span {
        color: #fff;
        font-size: 16px;
        font-weight: bold;
        position: relative;
        left: 45%;
        top: 10%;
    }

    #bth {
        position: relative;
        left: 84%;
        top: 10%;
        font-size: 20px;
    }


    .add-information1 {
        padding: 20px
    }

    .add-information1 span {
        margin-left: 20px;
        margin-top: 30px;
        text-align: justify;
    }
</style>

<!-- 顶部导航开始 -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">概念</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">陪护床后台管理系统 <span class="caret"></span></a>
                </li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">
                        管理医院
                        <span class="iconfont icon-xiajiantous"></span></a>

                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">
                        管理员
                        <span class="iconfont icon-changyongtubiao-mianxing-3"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- 顶部导航结束 -->

<!-- 左边菜单开始 -->

<div id="main">
    <div class="left-menu">
        <!-- 侧边栏标签页 -->
        <ul class="nav nav-stacked">
            <li role="presentation">

                <a href="#" class="iconfont icon-home">概览</a></li>
            <!-- 侧边栏选项 -->
            <li role="presentation" class="active">
                <!-- 选项控制data-target对应的显隐 -->
                <a href="#" data-toggle="collapse" data-target="#list" class="iconfont icon-order-o">陪护椅信息</a>
                <!-- 隐藏的详细菜单 -->
                <ul id="list" class="collapse ">
                    <li class="active">
                        <a href="">陪护椅详情</a>
                    </li>
                    <li>
                        <a href="">操作二</a>
                    </li>
                </ul>
            </li>
            <li role="presentation"><a href="#" class="iconfont icon-order-o">问题列表</a></li>
            <li role="presentation" class="active">
                <!-- 选项控制data-target对应的显隐 -->
                <a href="#" data-toggle="collapse" data-target="#list2" class="iconfont icon-order-o">统计信息</a>
                <!-- 隐藏的详细菜单 -->
                <ul id="list2" class="collapse ">
                    <li class="active">
                        <a href="">
                            操作一
                        </a>
                    </li>
                    <li><a href="">操作二</a></li>
                </ul>
            </li>

            <li role="presentation" class="active">
                <!-- 选项控制data-target对应的显隐 -->
                <a href="#" data-toggle="collapse" data-target="#list3" class="iconfont icon-order-o">监测信息</a>
                <!-- 隐藏的详细菜单 -->
                <ul id="list3" class="collapse ">
                    <li class="active">
                        <a href="">
                            操作一
                        </a>
                    </li>
                    <li><a href="">操作二</a></li>
                </ul>
            </li>

            <li role="presentation" class="active">
                <!-- 选项控制data-target对应的显隐 -->
                <a href="#" data-toggle="collapse" data-target="#list4" class="iconfont icon-order-o">资源配置表</a>
                <!-- 隐藏的详细菜单 -->
                <ul id="list4" class="collapse ">
                    <li class="active">
                        <a href="">
                            操作一
                        </a>
                    </li>
                    <li><a href="">操作二</a></li>
                </ul>
            </li>

            <li role="presentation" class="active">
                <!-- 选项控制data-target对应的显隐 -->
                <a href="#" data-toggle="collapse" data-target="#list5" class="iconfont icon-order-o">用户管理</a>
                <!-- 隐藏的详细菜单 -->
                <ul id="list5" class="collapse">
                    <li class="active">
                        <a href="">
                            操作一
                        </a>
                    </li>
                    <li><a href="">操作二</a></li>
                </ul>
            </li>


            <li role="presentation" class="active">
                <!-- 选项控制data-target对应的显隐 -->
                <a href="#" data-toggle="collapse" data-target="#list6" class="iconfont icon-order-o">管理医院</a>
                <!-- 隐藏的详细菜单 -->
                <ul id="list6" class="collapse ">
                    <li class="active">
                        <a href="">
                            操作一
                        </a>
                    </li>
                    <li><a href="">操作二</a></li>
                </ul>
            </li>
        </ul>

    </div>

</div>
<!-- 左边菜单结束 -->

<!-- 主页开始 -->
<div class="content">
    <!-- 主页顶部 -->
    <div class="head">
        <a href="#">陪护椅信息</a>
        <div>
                <span class="iconfont icon-shanchu"><button type="button" class="btn btn-primary btn-lg"
                                                            data-toggle="modal" data-target="#myModal">删除
                    </button>

                </span>


            <span class="iconfont icon-add">
                    <button type="button" class="btn btn-primary1" data-toggle="modal" data-target="#exampleModal"
                            data-whatever="@mdo">添加</button>


                </span>
        </div>
    </div>
    <!-- 主页顶部结束 -->

    <!-- 主页搜索开始 -->
    <div class="search">
        <!-- Single button -->
        <div class="btn-group">
            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                全部状态 <span class="caret"></span>
            </button>
            <ul class="dropdown-menu">
                <li><a href="#">正常</a></li>
                <li><a href="#">异常</a></li>
                <li><a href="#">待审核</a></li>
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
            <input type="text" class="search_field" placeholder="订单编号/陪护椅编号">
            <button class="search_btn">查询</button>
        </div>

        <!-- Single button -->
        <div class="btn-group1">
            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
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
    <!-- 主页搜索结束 -->

    <!-- 主页菜单开始 -->
    <div class="menu">

        <div class="submenu1">
            <span>陪护椅编号</span>
        </div>
        <div class="submenu2">
            <span>订单编号</span>

        </div>
        <div class="submenu3">
            <span>所在医院</span>
        </div>
        <div class="submenu4">
            <span>科室</span>
        </div>
        <div class="submenu5">

            <span>维护人员</span>
        </div>
        <div class="submenu6">
            <span>状态</span>
        </div>
        <div class="submenu7">
            <span>操作</span>
        </div>
    </div>
    <!-- 主页菜单结束 -->

    <!-- 主页内容开始 -->
    <div class="subject">
        <div class="particulars1">
            <div class="describe0">
                <input type="checkbox" value="n" style="zoom:130%;"/>
            </div>
            <div class="describe1">
                <span>1234567</span>
            </div>
            <div class="describe2">
                <span>789654</span>
            </div>
            <div class="describe3">
                <span>武汉第九医院</span>
            </div>
            <div class="describe4">
                <span>神经内科</span>
            </div>
            <div class="describe5">
                <span>王大伟</span>
            </div>
            <div class="describe6">
                <span>正常</span>
            </div>
            <div class="describe7">
                    <span>
                        <a href="#">查看</a>
                    </span>
            </div>
        </div>


        <nav aria-label="...">
            <ul class="pagination">
                <li class="disabled">
                        <span>
                            <span aria-hidden="true">&laquo;</span>
                        </span>
                </li>
                <li class="active">
                    <span>1 <span class="sr-only">(current)</span></span>
                </li>
                <li>
                    <span>2 <span class="sr-only">(current)</span></span>
                </li>
                <li>
                    <span>3 <span class="sr-only">(current)</span></span>
                </li>
                <li>
                    <span>4 <span class="sr-only">(current)</span></span>
                </li>
                <li>
                    <span>5 <span class="sr-only">(current)</span></span>
                </li>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>

            </ul>
        </nav>


    </div>
    <!-- <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
      删除
      </button> -->


    <!-- 删除 -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <!-- <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>

                </div> -->

                <h4 class="modal-title" id="myModalLabel">请再次确认是否删除？</h4>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">确定</button>
                    <button type="button" class="btn btn-primary">取消</button>
                </div>
            </div>
        </div>
    </div>


    <!-- 添加 -->


    <!-- 主页内容结束 -->
    <!-- <button type="button" class="btn btn-primary1" data-toggle="modal" data-target="#exampleModal"
        data-whatever="@mdo">添加</button> -->

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
    <!-- 主页结束 -->

    <script>
    </script>
    <script>
        less = {
            env: "development",
            async: false,
            fileAsync: false,
            poll: 1000,
            functions: {},
            dumpLineNumbers: "comments",
            relativeUrls: false,
            rootpath: ":/a.com/"
        };
    </script>

</body>

</html>