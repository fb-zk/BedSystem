<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>系统管理>用户管理</title>
    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets//fonts//iconfont.css">
    <link rel="stylesheet" href="../assets/css/commonality.css">
    <link rel="stylesheet" href="./css1/number.css">
    <script src="../assets/js/jquery-2.1.4.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>

</head>
<style>
  #san {
    left: 80px;
    top: 0;
}
  .inquire>li {
    width: 130px;
    height: 40px;
    position: absolute;
    left: 570px;
    top: 16px;
}
  .btn-group, .btn-group-vertical {
    display: inline-block;
    vertical-align: middle;
    position: absolute;
    right: 963px;
    top: 0px;
}
  .btn-group>.btn:first-child {
    width: 170px;
    height: 35px;
    background: rgba(255, 255, 255, 1);
    border: 1px solid rgba(227, 227, 227, 1);
    border-radius: 4px;
    font-size: 16px;
    margin-top: 15px;
    margin-left: 24px;
    text-align: left;
    line-height: 24px;
}

.dropdown-menu{
    position: absolute;
    left: 24px;
  }
  #test2 {
    position: relative;
    top: -59px;
    left: 320px;
}
.demo-input {
    position: absolute;
    left: 100px;
    width: 120px;
    height: 35px;
    background: rgba(255, 255, 255, 1);
    border: 1px solid rgba(227, 227, 227, 1);
    border-radius: 2px;
    font-size: 16px;
}
#tow {
    position: relative;
    top: -27px;
    left: 490px;
}
.sousuo {
    width: 30%;
    height: 40px;
    position: absolute;
    top: 16px;
    left: 1120px;
}
.sousuo>button {
    width: 100px;
    height: 36px;
    background: rgba(9, 182, 153, 1);
    border-radius: 2px;
    color: #ffff;
    margin-left: 20px;
    border: 0;
}
#one {
    position: relative;
    top: 17px;
    left: 300px;
    font-size: 19px;
}
#phone{
  position: absolute;
  left: 30px;
  width: 270px;
  top: 14px;
}
#phone input{
  width: 160px;
    height: 30px;
    border: 1px solid rgba(227, 227, 227, 1);
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
            <a href="#" style="">会员管理>会员信息</a>

        </div>

        <!-- 搜索框和下拉框 -->
        <div class="inquire">
            <li id="phone">
                <span>手机号：</span><input type="text">
            </li>



            <li>
                <span>创建日期：</span>
                <input type="text" class="demo-input " placeholder="请选择" id="test1">
                <i class="glyphicon glyphicon-menu-down"></i>
                <i class="glyphicon glyphicon-menu-down" id="tow"></i>
                <input type="text" class="demo-input " placeholder="请选择" id="test2">
            </li>

            <span id="one">押金状态：</span>
            <div class="btn-group">

                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false" aria-placeholder="请选择"> 请选择
                    <span class="glyphicon glyphicon-menu-down" id="san"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="#">已缴纳</a></li>
                    <li><a href="#">未缴纳</a></li>
                </ul>
            </div>

            <div class="sousuo">

                <button>搜索</button>
                <button>重置</button>
                <button>导出</button>
            </div>


        </div>

        <!-- 页面主体 -->
        <div class="main">
            <table id="tt"></table>

<%--            <!-- 工具条 -->--%>
<%--            <div id="tb">--%>
<%--                <a id="addBtn" href="#" class="easyui-linkbutton" data-options="plain:true" onclick="showRoleName()" >添加</a>--%>
<%--                <a id="removeBtn" href="#" class="easyui-linkbutton" data-options="plain:true">删除</a>--%>
<%--            </div>--%>


        </div>

    <link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/default/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/icon.css"/>
    <script src="./plugs/easyui/jquery.easyui.min.js"></script>
    <script src="./plugs/easyui/locale/easyui-lang-zh_CN.js"></script>
    <script src="./js/member.js"></script>
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

        lay('#version').html('-v' + laydate.v);

        //执行一个laydate实例
        laydate.render({
            elem: '#test1' //指定元素
        });
        laydate.render({
            elem: '#test2' //指定元素
        });
    </script>
</body>














<%--    <!-- 顶部导航开始 -->--%>
<%--    <nav class="navbar navbar-default navbar-fixed-top">--%>

<%--        <div class="container-fluid-left">--%>
<%--            <li class="dropdown " style="font-size:27px;" id="bth01">--%>
<%--                <i>--%>
<%--                    <img src="../images/logo.png" alt="">--%>

<%--                </i>--%>
<%--                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"--%>
<%--                    aria-expanded="false" style="color:#067F6B;">陪护椅后台管理 </a>--%>
<%--            </li>--%>
<%--            <!-- Brand and toggle get grouped for better mobile display -->--%>





<%--            <!-- 消息中心 -->--%>
<%--            <div class="Administrator">--%>
<%--                <i id="icon01" class="incon001"></i>--%>
<%--                <a href="#" style="font-size:22px;--%>
<%--                    font-family:PingFang SC;--%>
<%--                    font-weight:500; color:#000000">--%>

<%--                    消息中心</a>--%>
<%--            </div>--%>
<%--            <!-- 消息中心结束 -->--%>


<%--            <!-- 管理员开始 -->--%>
<%--            <li class="dropdown" style="font-size:20px;" id="bth02">--%>
<%--                <i id="icon02" class="incon002"></i>--%>
<%--                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"--%>
<%--                    aria-expanded="false" style="color:#000000;  font-size: 22px;">--%>
<%--                    管理员--%>
<%--                    <span class="glyphicon glyphicon-menu-down"></span></a>--%>
<%--                <ul class="dropdown-menu">--%>
<%--                    <li><a href="#">Action</a></li>--%>
<%--                    <li><a href="#">Another action</a></li>--%>
<%--                    <li><a href="#">Something else here</a></li>--%>
<%--                    <!-- <li role="separator" class="divider"></li> -->--%>
<%--                    <li><a href="#">Separated link</a></li>--%>
<%--                </ul>--%>
<%--            </li>--%>
<%--    </nav>--%>
<%--    <!-- 顶部导航结束 -->--%>

<%--    <!-- 左菜单开始 -->--%>
<%--    <jsp:include page="left.jsp"></jsp:include>--%>
<%--    <!-- 左菜单结束 -->--%>

<%--    <!-- 页头开始 -->--%>
<%--    <div class="head">--%>
<%--        <a href="#" style="">会员管理>会员信息</a>--%>
<%--    </div>--%>



<%--    <!-- 删除按钮 -->--%>
<%--    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">--%>
<%--        <div class="modal-dialog" role="document">--%>
<%--            <div class="modal-content">--%>
<%--                <h2>提示</h2>--%>

<%--                <h4 class="modal-title" id="myModalLabel">请再次确认是否删除？</h4>--%>

<%--                <div class="modal-footer">--%>
<%--                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>--%>
<%--                    <button type="button" class="btn btn-primary">确认删除</button>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--    <!-- 添加按钮 -->--%>
<%--    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">--%>
<%--        <div class="modal-dialog" role="document">--%>
<%--            <div class="modal-content1">--%>
<%--                <div class="add-information0" id="">--%>
<%--                    <span>添加信息</span>--%>
<%--                    <span class="iconfont icon-shanchu" id="bth" data-toggle="modal"></span>--%>
<%--                </div>--%>
<%--                <div class="add-information1">--%>
<%--                    <span>所在医院：</span><input type="text" style="width:240px; border-radius:6px;text-align: justify">--%>
<%--                </div>--%>
<%--                <div class="add-information1">--%>
<%--                    <span>订单科室：</span><input type="text" style="width:240px; border-radius:6px;text-align: justify">--%>
<%--                </div>--%>
<%--                <div class="add-information1">--%>
<%--                    <span>订单编号：</span><input type="text" style="width:240px; border-radius:6px;text-align: justify">--%>
<%--                </div>--%>
<%--                <div class="add-information1">--%>
<%--                    <span>订单状态：</span></span><input type="text" style="width:240px; border-radius:6px;">--%>
<%--                </div>--%>
<%--                <div class="add-information1">--%>
<%--                    <span>维护人员：</span><input type="text" style="width:240px; border-radius:6px;">--%>
<%--                </div>--%>
<%--                <div class="add-information1">--%>
<%--                    <span>陪护椅编号：</span><input type="text" style="width:240px; border-radius:6px;">--%>
<%--                </div>--%>






<%--                <div class="modal-footer1">--%>
<%--                    <button type="button" class="btn btn-default" data-dismiss="modal">确定</button>--%>
<%--                    <button type="button" class="btn btn-primary">取消</button>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>


<%--    <div class="inquire">--%>
<%--      <li id="phone">--%>
<%--        <span>手机号：</span><input type="text">--%>
<%--      </li>--%>



<%--        <li>--%>
<%--            <span>创建日期：</span>--%>
<%--            <input type="text" class="demo-input " placeholder="请选择" id="test1">--%>
<%--            <i class="glyphicon glyphicon-menu-down"></i>--%>
<%--            <i class="glyphicon glyphicon-menu-down" id="tow"></i>--%>
<%--            <input type="text" class="demo-input " placeholder="请选择" id="test2">--%>
<%--        </li>--%>

<%--        <span id="one">押金状态：</span>--%>
<%--        <div class="btn-group">--%>

<%--            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"--%>
<%--                aria-expanded="false" aria-placeholder="请选择"> 请选择--%>
<%--                <span class="glyphicon glyphicon-menu-down" id="san"></span>--%>
<%--            </button>--%>
<%--            <ul class="dropdown-menu">--%>
<%--                <li><a href="#">已缴纳</a></li>--%>
<%--                <li><a href="#">未缴纳</a></li>--%>
<%--            </ul>--%>
<%--        </div>--%>

<%--        <div class="sousuo">--%>

<%--            <button>搜索</button>--%>
<%--            <button>重置</button>--%>
<%--            <button>导出</button>--%>
<%--        </div>--%>


<%--    </div>--%>



<%--    <!-- 页面主体 -->--%>
<%--    <div class="main">--%>
<%--        <!-- 头部菜单 -->--%>
<%--        <div class="menu">--%>
<%--        <h1>渲染</h1>--%>

<%--        <!-- 分页器 -->--%>
<%--        <div class="sorter">--%>

<%--            <div class="pager clearfix" style="margin-top:30px;">--%>

<%--                <a href="" class="pg-prev"></a>--%>
<%--                <a href="">1</a>--%>
<%--                <span>2</span>--%>
<%--                <!-- <span class="current">2</span> -->--%>
<%--                <a href="">3</a>--%>
<%--                <a href="">4</a>--%>
<%--                <a href="">5</a>--%>


<%--                <span class="els">...</span>--%>
<%--                <a href="">11</a>--%>
<%--                <a href="" class="pg-next" disabled="true"></a>--%>

<%--            </div>--%>


<%--        </div>--%>


<%--        <!-- 按钮修改 -->--%>
<%--        <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">--%>
<%--            <div class="modal-dialog" role="document">--%>
<%--                <div class="modal-content1">--%>
<%--                    <div class="add-information0" id="">--%>
<%--                        <span>编辑修改信息</span>--%>
<%--                        <span class="iconfont icon-shanchu" id="bth" data-toggle="modal"></span>--%>
<%--                    </div>--%>
<%--                    <div class="add-information1">--%>
<%--                        <span>医院名称：</span><input type="text" style="width:240px; border-radius:6px;text-align: justify">--%>
<%--                    </div>--%>
<%--                    <div class="add-information1">--%>
<%--                        <span>医院等级：</span><input type="text" style="width:240px; border-radius:6px;text-align: justify">--%>
<%--                    </div>--%>
<%--                    <div class="add-information1">--%>
<%--                        <span>联系方式：</span><input type="text" style="width:240px; border-radius:6px;text-align: justify">--%>
<%--                    </div>--%>

<%--                    <div class="add-information1">--%>
<%--                        <span>销售人员：</span><input type="text" style="width:240px; border-radius:6px;">--%>
<%--                    </div>--%>
<%--                    <div class="add-information4">--%>
<%--                        <span>状态：</span><input type="text" style="width:240px; border-radius:6px;">--%>
<%--                    </div>--%>
<%--                    <div class="add-information5">--%>
<%--                        <span>性质：</span></span><input type="text" style="width:240px; border-radius:6px;">--%>
<%--                    </div>--%>






<%--                    <div class="modal-footer1">--%>
<%--                        <button type="button" class="btn btn-default" data-dismiss="modal" id="btn-default1">确定</button>--%>
<%--                        <button type="button" class="btn btn-primary" id="btn-primary1">取消</button>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

</html>