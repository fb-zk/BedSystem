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
  <title>系统管理>销售人员管理</title>
  <meta name="description" content="overview &amp; stats" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
  <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="../assets//fonts//iconfont.css">
  <link rel="stylesheet" href="../assets/css/commonality.css">
  <link rel="stylesheet" href="../assets/css/gongzhong.css">
  <link rel="stylesheet" href="./css/monitor.css">
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
    .content_input .search_btn {
    line-height: 30px;
    color: #ffff;
    font-size: 17px;
    border: none;
    position: absolute;
    left: 540px;
    top: 14px;
    border-radius: 6px;
    width: 131px;
    height: 46px;
    background: rgba(82, 206, 185, 1);
    border-radius: 4px;
}
.content_input .search_field {
    position: absolute;
    left: 123px;
}
.content_input span {
    width: 114px;
    position: absolute;
    top: 25px;
    left: 12px;
    font-size: 17px;
}
    .main {
      height: 620px;
      width: 1530px;
      background: #F7F7F7 !important;
      position: absolute;
      top: 242px;
      left: 340px;
    }
    .sorter {
      width: 480px;
      height: 30px;
      /* background-color: pink; */
      position: absolute;
      right: 80px;
      bottom: 57px;
    }
  </style>

  <!-- 顶部导航开始 -->
  <jsp:include page="head.jsp"></jsp:include>
  <!-- 顶部导航结束 -->

  <!-- 左菜单开始 -->
  <jsp:include page="left.jsp"></jsp:include>
  <!-- 左菜单结束 -->

  <!-- 页头开始 -->
  <div class="head">
    <a href="./information.html" style="">系统管理>销售人员管理</a>
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
          <span class="iconfont icon-shanchu" id="bth" data-dismiss="modal"></span>
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
        <!-- <div class="add-information1">
          <span>陪护椅编号：</span><input type="text" style="width:240px; border-radius:6px;">
        </div> -->






        <div class="modal-footer1">
          <button type="button" class="btn btn-default" data-dismiss="modal">确定</button>
          <button type="button" class="btn btn-primary" data-dismiss="modal">取消</button>
        </div>
      </div>
    </div>
  </div>


  <!-- 搜索框和下拉框 -->
  <div class="inquire">
    <div class="search">
      <!-- Single button -->



      <div class="content_input">
        <span id="changshang">销售人员名：</span>
        <input type="text" class="search_field" placeholder="请输入销售员名字" id="bth9"><button class="search_btn">搜索</button>
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

         <h2>渲染区域</h2>



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
            <span class="iconfont icon-shanchu" id="bth" data-dismiss="modal"></span>
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
            <button type="button" class="btn btn-primary" id="btn-primary1" data-dismiss="modal">取消</button>
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