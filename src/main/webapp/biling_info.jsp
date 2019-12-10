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
  <title>订单管理>结算信息</title>
  <meta name="description" content="overview &amp; stats" />
  　
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
  <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="../assets//fonts//iconfont.css">
  <link rel="stylesheet" href="../assets/css/commonality.css">
  <link rel="stylesheet" href="./css/regional.less">
  <link rel="stylesheet" href="../assets/laydate/theme/default/laydate.css">
  <link rel="stylesheet" href="../assets/diqu/css/city-picker.css">
  <link rel="stylesheet" href="./css/information.css">
  <script src="../assets/js/jquery-2.1.4.min.js"></script>
  <script src="../assets/js/bootstrap.min.js"></script>
  <script src="../assets/js/jquery.z-pager.js"></script>
  <script src="../assets/js/less.js"></script>
  <script src="../assets/js/laydate.js"></script>
  <script src="../assets/diqu/js/city-picker.data.js"></script>
  <script src="../assets/diqu/js/city-picker.js"></script>
  <!-- <script src="//cdnjs.cloudflare.com/ajax/libs/less.js/3.10.0-beta/less.min.js"></script> -->

</head>

<body>

  <style>
    .head {
      border: 1px solid rgba(227, 227, 227, 1);
      border-radius: 2px;
    }

    .head a {

      font-size: 17px;
      font-family: PingFang SC;
      font-weight: 500;
      color: rgba(61, 68, 67, 1);
      top: 31px;
    }

    .submenu1 {
      flex-grow: 1;
    }

    .submenu2 {
      flex-grow: 1
    }

    .submenu3 {
      flex-grow: 1;
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
      flex-grow: 1;
    }

    .submenu9 {
      flex-grow: 1;
    }



    .describe1 {
      flex-grow: 1;
      margin-left: 0;
    }

    .describe1>span {
      position: absolute;
      left: 60px;
    }

    .describe2 {
      flex-grow: 1;
      margin-left: 0;
      position: relative;

    }

    .describe2 span {
      position: absolute;
      right: 0px;
    }

    .describe3 {
      flex-grow: 1;
      margin-left: 0;
      position: relative;

    }

    .describe3 span {
      position: absolute;
      right: 0px;
    }

    .describe4 {
      flex-grow: 1;
      margin-left: 0;
      position: relative;

    }

    .describe4 span {
      position: absolute;
      right: 55px;
    }

    .describe5 {
      margin-left: 0;
      flex-grow: 1;
      position: relative;

    }

    .describe5 span {
      position: absolute;
      left: 35px;
      width: 100px;
    }



    .describe6 {
      flex-grow: 1;
      position: relative;

    }

    .describe6>span {
      position: absolute;
      left: 0px;
    }






    .describe7 {
      flex-grow: 1;
      position: relative;
    }

    .describe7 span {
      left: 75px;

    }

    .describe8 {}

    .describe8 span {
      position: relative;
      right: 0;
    }

    .describe9 {
      flex-grow: 1;
      position: relative;
    }

    .describe9>span {
      height: 100px;
      width: 240px;
      display: block;
      position: absolute;
      right: 15px;
      color: red;
    }

    .describe9>span .btn {
      background-color: #fff;
      color: #079B82;
      margin-left: 15px;
      font-size: 18px;
    }


    #time {
      left: -65px;
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

    .main {
      height: 620px;
      width: 1530px;
      background-color: #fff;
      position: absolute;
      top: 270px;
      left: 340px;

    }



    /* 查询列表 */
    .inquire {
      width: 1530px;

      height: 60px;
      position: absolute;
      top: 175px;


    }

    .inquire>li {
      width: 130px;
      height: 40px;

      position: absolute;
      left: 2px;
      top: 80px;

    }

    .inquire>li>span {
      line-height: 36px;
      text-align: center;
      margin-left: 15px;
      font-size: 17px;
    }

    .demo-input {
      padding-left: 10px;
      height: 38px;
      min-width: 262px;
      line-height: 38px;
      left: 110px;
      border: 1px solid #e6e6e6;
      background-color: #fff;
      border-radius: 2px;
    }

    .demo-footer {
      padding: 50px 0;
      color: #999;
      font-size: 14px;
    }

    .demo-footer a {
      padding: 0 5px;
      color: #01AAED;
    }

    .demo-input {
      position: absolute;
      left: 105px;

      width: 120px;
      height: 40px;
      background: rgba(255, 255, 255, 1);
      border: 1px solid rgba(227, 227, 227, 1);
      border-radius: 2px;
      font-size: 16px;

    }

    .glyphicon {
      position: relative;
      top: 0px;
      display: inline-block;
      font-family: 'Glyphicons Halflings';
      font-style: normal;
      font-size: 18px;
      font-weight: 400;
      line-height: 1;
      -webkit-font-smoothing: antialiased;
      z-index: 999;
      left: 0px;

    }

    #test2 {
      position: relative;
      top: -59px;
      left: 480px;
    }

    #tow {
      position: relative;
      top: -30px;
      left: 700px;
    }

    #one {
      position: relative;
      top: 23px;
      left: 350px;
      font-size: 17px;
    }

    .btn-group,
    .btn-group-vertical {
      display: inline-block;
      vertical-align: middle;
      position: absolute;
      right: 840px;
      top: 2px;

    }

    .btn-group>.btn:first-child {
      width: 266px;
      height: 35px;
      background: rgba(255, 255, 255, 1);
      border: 1px solid rgba(227, 227, 227, 1);
      border-radius: 4px;
      font-size: 19px;
      margin-top: 18px;
      margin-left: 24px;
      text-align: left;
    }

    #san {
      left: 150px;
      top: 4px;
    }

    .region {
      width: 430px;

      height: 40px;
      position: absolute;
      right: 825px;
      top: 12px;
    }

    .form-group {
      position: absolute;
      left: 130px;
      top: 1px;
    }

    #shi {
      position: absolute;
      top: 12px;
      left: 70px;
      font-size: 17px;
    }

    .sousuo {
      width: 37%;
      height: 40px;

      position: absolute;
      top: 15px;
      left: 9px;
    }

    .sousuo>span {
      line-height: 40px;
      font-size: 17px;
      margin-left: 10px;

    }

    .sousuo>input {
      width: 36%;
      height: 35px;
      background: rgba(255, 255, 255, 1);
      border: 1px solid rgba(227, 227, 227, 1);
      border-radius: 2px;
      padding-left: 10px;
    }

    .sousuo>button {
      width: 120px;
      height: 40px;
      background: rgba(9, 182, 153, 1);
      /* border-radius: 2px; */
      color: #ffff;
      margin-left: 20px;

    }

    .city-picker-span {
      border: 1px solid #ccc;
      border: 1px solid #ccc;
      position: absolute;
      top: 6px;
      padding-left: 10px;
      height: 35px !important;
      line-height: 35px !important;
    }

    element.style {
      width: 280px;
      height: 41x;
      line-height: 42px;
      text-align: center;
    }

    .particulars1 {
      display: flex;
    }

    .submenu11 {
      flex-grow: 3;
    }

    .describe1 {
      flex-grow: 0.5;
    }

    .describe2 {
      flex-grow: 0.5;
    }

    .describe3 {
      flex-grow: 1;
    }

    .describe4 {
      flex-grow: 0.7;
    }

    .describe5 {
      flex-grow: 0.8;
    }

    .describe6 {
      flex-grow: 0.6;
    }



    .describe8 span {
      position: relative;
      right: 0px;
    }

    .describe9 {
      flex-grow: 1;
    }

    .describe9>span {
      width: 160px;
      position: absolute;
      right: -5px;
    }

    .describe10 {
      flex-grow: 1;
      position: relative;
    }

    .describe10 span {
      position: absolute;
      left: 60px;
    }

    .describe11 {
      flex-grow: 1;
    }

    .describe11 span {
      width: 200px;
      position: absolute;
      right: 142px;
    }


    .nist {
      width: 100%;

      height: 490px;
      position: absolute;
      top: 76px;
    }

    .main1 {
      width: 100%;
      /* border-bottom: solid 1px #ccc; */
      display: flex;
      flex-direction: row;
      -webkit-flex-direction: row;
      text-align: center;
      line-height: 60px;
      font-size: 15px;
      height: 76px;

      border-radius: 4px 4px 0px 0px;

      ;

    }

    .tool1 {

      flex-grow: 1;
      height: 76px;

    }

    .tool2 {
      flex-grow: 1;
      height: 76px;

    }

    .tool3 {
      flex-grow: 1;
      height: 76px;

    }

    .tool4 {
      flex-grow: 1;
      height: 76px;

    }

    .tool5 {
      flex-grow: 1;
      height: 76px;

    }

    .tool6 {
      flex-grow: 1;
      height: 76px;

    }

    .tool7 {
      flex-grow: 1;
      height: 76px;

    }

    .nist>div:nth-of-type(even) {
      background: rgba(246, 246, 246, 1);
    }

    .sorter {
      position: absolute;
      bottom: 100px;
    }
    .describe11 a{
      background-color: #fff;
    color: #079B82;
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
    <a href="#" style="">订单管理>结算信息</a>
  </div>



  <!-- 删除按钮 -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <h2>提示</h2>

        <h4 class="modal-title" id="myModalLabel">请再次确认是否删除？</h4>

        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="button" class="btn btn-primary" data-dismiss="modal">确认删除</button>
        </div>
      </div>
    </div>
  </div>

  <!-- 添加按钮 -->
  <div class="modal fade" id="exampleModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content1">
        <div class="add-information0" id="">
          <span>添加医院信息</span>
          <span class="iconfont icon-shanchu" id="bth" data-toggle="modal"></span>
        </div>
        <div class="add-information1">
          <span>地址：</span></span><input type="text" style="width:240px; border-radius:6px;">
        </div>
        <div class="add-information1">
          <span>类型：</span><input type="text" style="width:240px; border-radius:6px;">
        </div>
        <div class="add-information1">
          <span>联系人：</span><input type="text" style="width:240px; border-radius:6px;">
        </div>
        <div class="add-information1">
          <span>医院名称：</span><input type="text" style="width:240px; border-radius:6px;text-align: justify">
        </div>
        <div class="add-information1">
          <span>医院编码：</span><input type="text" style="width:240px; border-radius:6px;text-align: justify">
        </div>
        <div class="add-information1">
          <span>医院等级：</span><input type="text" style="width:240px; border-radius:6px;text-align: justify">
        </div>


        <div class="add-information1">
          <span>联系电话：</span><input type="text" style="width:240px; border-radius:6px;">
        </div>

        <div class="add-information1">
          <span>签约状态：</span><input type="text" style="width:240px; border-radius:6px;">
        </div>
        <div class="add-information1">
          <span>签约时间：</span><input type="text" style="width:240px; border-radius:6px;">
        </div>
        <div class="add-information1">
          <span>设备数量：</span><input type="text" style="width:240px; border-radius:6px;">
        </div>









        <div class="modal-footer1">
          <button type="button" class="btn btn-default" data-dismiss="modal">确定</button>
          <button type="button" class="btn btn-primary" data-dismiss="modal">取消</button>
        </div>
      </div>
    </div>
  </div>


  <div class="inquire">
   


    
    <div class="region">

      <span id="shi"> 区域：</span>
      <form class="form-inline">
        <div id="distpicker">
          <div class="form-group">
            <div style="position: relative;">
              <input id="city-picker3" class="form-control" readonly type="text" value="" data-toggle="city-picker">
            </div>
          </div>

        </div>
      </form>



    </div>
    <div class="sousuo">
      <span>医院名称：</span>
      <input type="text" placeholder="请输入医院名称">


    </div>
    <button id="tianjia" type="button" class="btn btn-primary2" data-toggle="modal" data-target="#exampleModal3"
      data-whatever="@mdo">导出</button>
    <button id="sousuo">查询</button>
    <button id="chongzhi">重置</button>



  </div>



  <!-- 页面主体 -->
  <div class="main">
    <!-- 头部菜单 -->
    <div class="menu">

      <div class="submenu1">
        <span>医院名称</span>
      </div>
      <div class="submenu2">
        <span>医院编码</span>

      </div>
   
      <div class="submenu4">
        <span>地址</span>
      </div>
      <div class="submenu5">

        <span>联系人</span>
      </div>
      <div class="submenu6">
        <span>联系电话</span>
      </div>
    

    
     
      <div class="submenu11">
        <span>操作</span>
      </div>
    </div>
    <div class="list">
      <div class="particulars1">
        <!-- <div class="describe0">
                          <input type="checkbox" value="n" style="zoom:130%;" />
                      </div> -->
        <div class="describe1">

          <span>武汉第九医院</span>
        </div>
        <div class="describe2">
          <span>142014552</span>
        </div>
        
        <div class="describe4">
          <span>四川省成都市</span>
        </div>
        <div class="describe5">
          <span>张大伟</span>
        </div>
        <div class="describe6">
          <span id="time">
            186798783566
          </span>

        </div>
       
      

        <div class="describe11">


          <span>
        
<!-- 
            <button type="button" class="btn btn-primary2" data-toggle="modal" data-target="#exampleModal2"
              data-whatever="@mdo" id="btn1">详情</button> -->
              <a href="${ctx }/particulars.jsp">详情</a>
           
          </span>
        </div>
      </div>
      <div class="particulars1">
        <!-- <div class="describe0">
                          <input type="checkbox" value="n" style="zoom:130%;" />
                      </div> -->
        <div class="describe1">

          <span>武汉第九医院</span>
        </div>
        <div class="describe2">
          <span>142014552</span>
        </div>
     
        <div class="describe4">
          <span>四川省成都市</span>
        </div>
        <div class="describe5">
          <span>张大伟</span>
        </div>
        <div class="describe6">
          <span id="time">
            186798783566
          </span>

        </div>
        

        
     
        <div class="describe11">


          <span>
            <!-- <button type="button" class="btn btn-primary2" data-toggle="modal" data-target="#exampleModal2"
            data-whatever="@mdo" id="btn1">详情</button> -->
            <a href="${ctx }/particulars.jsp">详情</a>
          </span>
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
    <!-- 添加按钮 -->

    <div class="modal fade" id="exampleModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content1">
          <div class="add-information0" id="">
            <span>编辑修改信息</span>
            <span class="iconfont icon-shanchu" id="bth" data-toggle="modal"></span>
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
  <script src="../assets/laydate/laydate.js"></script>
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



    $("#tianjia").click(function () {
      window.location.href = "./add.html";
    })


    $("#sousuo").on("click", function () {
      var date = $("#test1").val();
      console.log(date)

    })
  </script>
</body>

</html>