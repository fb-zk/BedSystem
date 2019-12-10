<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>问题反馈</title>
    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets//fonts//iconfont.css">
    <link rel="stylesheet" href="./assets/css/commonality.css">
    <script src="./assets/js/jquery-2.1.4.min.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    
</head>
<style type="text/css">
    	.content_input .search_field{
    	position: absolute;
    	left: 545px;
    	
    	}
    	.content_input .search_btn {
    line-height: 30px;
    color: #ffff;
    font-size: 19px;
    border: none;
    position: absolute;
    left: 930px;
    top: 14px;
    border-radius: 6px;
    width: 131px;
    height: 46px;
    background: rgba(82, 206, 185, 1);
    border-radius: 4px;
}
    </style>
<body>

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
                        <a href="" style=>
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
                        <a href="" style=>
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
                        <a href="#">
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
        <a href="#" style="">问题列表</a>
    </div>

    <!-- 搜索框和下拉框 -->
    <div class="inquire">
        <div id="searchBox" class="search">
            <!-- Single button -->
            <div class="btn-group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    审核状态 <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                	<li><a href="#" data-val="">审核状态(全)</a></li>
                    <li><a href="#" data-val="1">待审核</a></li>
                    <li><a href="#" data-val="2">已通过</a></li>
                    <li><a href="#" data-val="3">已拒绝</a></li>
                </ul>
            </div>
            
            <div class="btn-group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    维修状态 <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                	<li><a href="#" data-val="">维修状态(全)</a></li>
                    <li><a href="#" data-val="0">未维修</a></li>
                    <li><a href="#" data-val="1">已维修</a></li>
                </ul>
            </div>

            <div class="btn-group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    筛选条件 <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="#" data-val="hospitalName">医院</a></li>
                    <li><a href="#" data-val="departmentName">科室</a></li>
                    <li><a href="#" data-val="orderId">订单编号</a></li>
                    <li><a href="#" data-val="bedCode">陪护椅编号</a></li>
                </ul>
            </div>
            
            <div class="content_input">
                <input type="text" class="search_field" placeholder="医院/编号/问题编号">
                <button id="searchBtn" class="search_btn">搜索</button>
            </div>
        </div>
    </div>

    <!-- 页面主体 -->
    <div class="main">
    	<div id="tt"></div>
    </div>

    <script src="./assets/js/jquery.z-pager.js"></script>
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
    
    <link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/default/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/icon.css"/>
	<script src="./plugs/easyui/jquery.easyui.min.js"></script>
	<script src="./plugs/easyui/locale/easyui-lang-zh_CN.js"></script>
	<script src="./js/problem.js"></script>
</body>

</html>