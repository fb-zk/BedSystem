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
<nav class="navbar navbar-default navbar-fixed-top">

    <div class="container-fluid-left">
        <li class="dropdown " style="font-size:27px;" id="bth01">
            <i>
                <img src="../images/logo.png" alt="">

            </i>
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
                    <a href="../peihuyiguanli/information.html" style=>
                        陪护椅信息
                    </a>
                </li>
                <li>
                    <span class="circle"></span>
                    <a href="../peihuyiguanli/binding.html">绑定</a>
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
                    <a href="../yiyuanguanli/information.html" style=>
                        信息录入
                    </a>
                </li>
                <li>
                    <span class="circle"></span>
                    <a href="../yiyuanguanli/billing.html">计费管理</a>
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
                    <a href="../issues/issues.html">
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
                    <a href="../tongji/data.html">
                        使用次数统计
                    </a>
                </li>
                <li>
                    <span class="circle"></span>
                    <a href="../tongji/order.html">订单统计</a>
                </li>
                <li>
                    <span class="circle"></span>
                    <a href="../tongji/regional.html">地区统计</a>
                </li>
                <li>
                    <span class="circle"></span>
                    <a href="../tongji/number.html">医院性质统计</a>
                </li>
                <li>
                    <span class="circle"></span>
                    <a href="../tongji/grade.html">医院等级统计</a>
                </li>
                <li>
                    <span class="circle"></span>
                    <a href="../tongji/Departments.html">科室统计</a>
                </li>

                <li>
                    <span class="circle"></span>
                    <a href="../tongji/data.html">时间段统计</a>
                </li>
                <li>
                    <span class="circle"></span>
                    <a href="../tongji/sign.html">入驻医院统计</a>
                </li>
                <li>
                    <span class="circle"></span>
                    <a href="../tongji/consumption.html">消费者统计</a>
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
                    <a href="../system/role.html">
                        角色管理
                    </a>
                </li>
                <li>
                    <span class="circle"></span>
                    <a href="../system/user.html">用户管理</a></li>
            </ul>
        </li>
    </ul>
</div>
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
            <span>姓名</span>
        </div>
        <div class="submenu2">
            <span>用户名</span>

        </div>
        <div class="submenu3">
            <span>密码</span>
        </div>
        <div class="submenu4">
            <span>手机号</span>
        </div>
        <div class="submenu5">

            <span>角色类型</span>
        </div>
        <div class="submenu6">
            <span>角色名称</span>
        </div>
    </div>
    <div class="list">
        <c:forEach var="sysUser" items="${sys}" varStatus="status">
            <div class="particulars1">

                <div class="describe1">

                    <span>${sysUser.name}</span>
                </div>
                <div class="describe2">
                    <span>${sysUser.userName}</span>
                </div>
                <div class="describe3">
                    <span>${sysUser.passWord}</span>
                </div>
                <div class="describe4">
                    <span>${sysUser.mobileno}</span>
                </div>
                <div class="describe5">
                    <span>${sysUser.roleName}</span>
                </div>
                <div class="describe6">
<%--                    <span>${sysUser.type}</span>--%>
                    <c:if test="${sysUser.type=='1' }">百穂</c:if>
                    <c:if test="${sysUser.type=='2' }">医院</c:if>
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