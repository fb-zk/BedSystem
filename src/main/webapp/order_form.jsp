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
  <title>订单管理>订单信息</title>
  <meta name="description" content="overview &amp; stats" />
  <meta name="viewport"
        content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
  <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="../assets//fonts//iconfont.css">
  <link rel="stylesheet" href="../assets/css/commonality.css">
  <link rel="stylesheet" href="./css1/number.css">
    <link rel="stylesheet" href="../assets/diqu/css/city-picker.css">
    <link rel="stylesheet" href="../assets/laydate/theme/default/laydate.css">
  <script src="../assets/js/jquery-2.1.4.min.js"></script>
  <script src="../assets/js/bootstrap.min.js"></script>
  <script src="../assets/js/jquery.z-pager.js"></script>

  <script src="../assets/js/laydate.js"></script>
</head>
<style>
  .main {
    height: 620px;
    width: 1530px;
    position: absolute;
    top: 275px;
    left: 320px;
  }

  #san {
    left: 70px;
    top: 0;
  }

  .inquire>li {
    width: 130px;
    height: 40px;
    position: absolute;
    left: 240px;
    top: 72px;
  }

  .btn-group,
  .btn-group-vertical {
    display: inline-block;
    vertical-align: middle;
    position: absolute;
    right: -153px;
    top: -15px;
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

  .dropdown-menu {
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
    left: 110px;
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
    top: 75px;
    left: 840px;
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
    left: 1170px;
    font-size: 19px;
  }

  #phone {
    position: absolute;
    left: 905px;
    width: 270px;
    top: 13px;
  }

  #phone input {
    width: 160px;
    height: 30px;
    border: 1px solid rgba(227, 227, 227, 1);
    

  }

  .menu div span {
    width: 48px;
  }

  .inquire {
    width: 1530px;
    height: 120px;
    position: absolute;
    top: 158px;
    /* background: pink; */
  }

  #close {
    position: absolute;
    top: 70px;
    left: 13px;
    width: 293px;
  }

  #close input {
    width: 160px;
    height: 30px;
    border: 1px solid rgba(227, 227, 227, 1);
    width: 120px;
  }

  #region {
    width: 160px;
    height: 30px;
    position: absolute;
    top: 13px;
    left: 47px;
  }

  #region input {
    position: absolute;
    left: 70px;
    width: 162px;
    top: 4px;
    height: 30px;
    width: 120px;
    border: 1px solid rgba(227, 227, 227, 1);

  }

  #hospital {
    width: 160px;
    height: 30px;
    position: absolute;
    top: 13px;
    left: 240px;
  }

  #hospital input {
    position: absolute;
    left: 68px;
    top: 3px;
    height: 30px;
    width: 120px;
    border: 1px solid rgba(227, 227, 227, 1);
  }
  #administrative{
    width: 230px;
    height: 30px;
    position: absolute;
    top: 13px;
    left: 430px;
  }
  #administrative input{
    position: absolute;
    left: 68px;
    top: 3px;
    height: 30px;
    width: 120px;
    border: 1px solid rgba(227, 227, 227, 1);
  }
  #number{
    position: absolute;
    width: 200px;
    height: 30px;
    position: absolute;
    top: 13px;
    left: 620px;
  }
  #number input{
    position: absolute;
    left: 125px;
    top: 3px;
    height: 30px;
    width: 160px;
    border: 1px solid rgba(227, 227, 227, 1);
  }
  #select_box{
    width: 160px;
    height: 30px;
    position: absolute;
    border: 1px solid rgba(227, 227, 227, 1);
    top: 15px;
    left: -175px;
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
      <a href="#" style="">订单管理>订单信息</a>

    </div>

    <!-- 搜索框和下拉框 -->
    <div class="inquire">
      <li id="phone">
        <span>订单编号：</span><input type="text">
      </li>

      <li id="close">
        <span>结算方式：</span><input type="text">
      </li>

      <li id="region">
        <span>地区：</span><input type="text">
      </li>
      <li id="hospital">
        <span>医院：</span><input type="text">
      </li>

      <li id="administrative">
        <span>科室:</span><input type="text">
      </li>

      <li id="number">
        <span>陪护椅编号:</span><input type="text">
      </li>


      <li>
        <span>开启时间：</span>
        <input type="text" class="demo-input " placeholder="请选择" id="test1">
        <i class="glyphicon glyphicon-menu-down"></i>
        <i class="glyphicon glyphicon-menu-down" id="tow"></i>
        <input type="text" class="demo-input " placeholder="请选择" id="test2">
      </li>


      <li id="one">

        <span>支付状态：</span>
        <div class="btn-group">

          <select name="" id="select_box">
            <option selected="selected" disabled="disabled"  style='display: none' value=''>请选择</option>
            <option value="1">已关闭</option>
            <option value="2">未关闭</option>
          </select>


        </div>
      </li>


      <div class="sousuo">

        <button>查询</button>

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
    <script src="./js/order_form.js"></script>
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

</html>