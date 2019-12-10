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
    <title>医院管理>计费管理</title>
    <meta name="description" content="overview &amp; stats"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets//fonts//iconfont.css">
    <link rel="stylesheet" href="../assets/css/commonality.css">
    <link rel="stylesheet" href="./css/billing.css">
    <link rel="./billing.less" type="text/css" href="styles.less"/>
    <script src="../assets/js/jquery-2.1.4.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <%--<script src="../assets/js/less.js" type="text/javascript"></script>--%>
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

    .describe9 {
        flex-grow: 2;
        position: relative;
    }

    .describe9 > span {
        height: 100px;
        width: 240px;
        display: block;

        color: red;
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
        height: 550px;
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

    .describe2 span {
        position: absolute;
        right: -62px;
    }


    .describe3 span {
        position: absolute;
        right: -67px;
    }

    .describe4 span {
        position: absolute;
        right: -130px;
    }

    #time {
        left: 180px;
    }

    .describe5 span {
        position: absolute;
        left: 175px;
    }

    .describe7 span {
        left: 240px;
        position: absolute;
    }

    .describe9 span {
        position: absolute;
        right: 55px;
    }

    #tow {

        left: 190px;

        top: -3px;
        font-size: 19px;
    }

    #hour {
        position: absolute;
        top: 240px;
        left: 130px;

    }

    #hour1 {
        position: absolute;
        top: 220px;
        left: 5px;

    }

    #capping1 {
        position: absolute;
        top: 280px;
        left: 5px;
    }

    #capping {
        width: 160px;
        height: 40px;
        position: absolute;
        top: 305px;
        left: 140px;
        border: 1px solid rgba(228, 228, 228, 1);
        padding-left: 20px;
    }

    #capping2 {
        width: 160px;
        height: 40px;
        position: absolute;
        top: 305px;
        left: 355px;
        border: 1px solid rgba(228, 228, 228, 1);
        padding-left: 20px;
    }

    #capping3 {
        position: absolute;
        top: 325px;
        left: 318px;
        display: block;
        width: 16px;
        height: 2px;
        background-color: #000;
    }

    #rates {
        width: 200px !important;
        height: 40px;
        position: absolute;
        top: 304px;
        left: 560px;
        padding-left: 10px;
    }

    #fengding {
        position: absolute;
        top: 348px;
        left: 22px;
    }

    #fengding1 {
        position: absolute;
        top: 370px;
        left: 130px;

        width: 668px !important;
        height: 42px !important;
        background: rgba(255, 255, 255, 1);
        border: 1px solid rgba(228, 228, 228, 1);
        border-radius: 4px;
        margin-left: 10px;
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
    <a href="#" style="">医院管理>计费管理</a>

</div>



<!-- 搜索框和下拉框 -->
<div class="inquire">
    <div class="search">
        <!-- Single button -->

        <div class="content_input">
            <span>医院名称：</span>
            <input type="text" class="search_field" placeholder="请输入医院名">
            <button class="search_btn">搜索</button>
            <button class="search_btn" id="one">重置</button>
        </div>

        <!-- Single button -->

    </div>
</div>

<!-- 页面主体 -->
<div class="main">
    <table id="tt"></table>

    <!-- 工具条 -->
    <div id="tb">
        <a id="addBtn" href="#" class="easyui-linkbutton" data-options="plain:true" onclick="showHospitalName()">添加计费</a>
        <a id="updateBtn" href="#" class="easy-linkbutton" date-optin="plain:true" >修改</a>
        <a id="removeBtn" href="#" class="easyui-linkbutton" data-options="plain:true">删除</a>
    </div>
    <!-- 添加弹窗 显示信息的窗口 -->
    <div id="win" class="easyui-window" title="添加医院计费" style="width:945px;height:760px"
         data-options="iconCls:'icon-save',modal:true,closed:true ">
        <div class="modal-content1">
            <form id="addForm" method="post">
                <div class="add-information1">
                    <span>医院名称：</span>
                    <select style="width: 240px; border-radius: 6px;  text-align: justify" class="easyui-validatebox" data-options="required:true" name="hospitalId"  placeholder="请选择" id="add" >
                        <option value="">请选择</option>

                    </select>
                </div>
                <div class="add-information1">
                    <span>套餐计费：</span>
                    <input type="text" class="demo-input" style="width: 10px" name="rates" placeholder="元"  class="easyui-validatebox" data-options="required:true">
                    <span>元/</span>
                    <input type="text" class="demo-input" name="ratesTime" placeholder="小时"  class="easyui-validatebox" data-options="required:true">
                    <span>时</span>
                </div>
                <%--<div class="add-information1">
                    <span>套餐计费时间：</span>
                    <input type="datetime-local" class="demo-input" name="endTime" id="test2" class="easyui-validatebox" data-options="required:true">
                </div>--%>
                <div class="add-information1">
                    <span>次数计费方式：</span>
                    <input type="text" name="chargeNumber" style="width:240px; border-radius:6px;text-align: justify" placeholder="元/次" class="easyui-validatebox" data-options="required:true">
                    <span>次</span>
                </div>
                <div class="add-information1">
                    <span>标准计费方式：</span>
                    <input type="text" name="costNormal" class="easyui-validatebox" data-options="required:true" style="width:240px; border-radius:6px;text-align: justify" placeholder="元/小时">
                    <span>元/时</span>
                </div>
                <div class="add-information1">
                    <span>押金金额：</span>
                    <input type="text" name="cashPledgeMoney" style="width:240px; border-radius:6px;text-align: justify">
                </div>
                <div class="add-information1">
                    <span>封顶金额：</span>
                    <input type="text" name="limitAmount" style="width:240px; border-radius:6px;text-align: justify">
                </div>
                <a id="saveBtn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save' ">保存</a>
                <a id="cancelBtn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cancel' ">取消</a>
            </form>
        </div>
    </div>


    <!-- 修改弹窗 显示信息的窗口 -->
    <div id="win1" class="easyui-window" title="添加医院计费" style="width:945px;height:760px"
         data-options="iconCls:'icon-save',modal:true,closed:true ">
        <div class="modal-content1">
            <form id="updateForm" method="post">
                <div class="add-information1">
                    <span>医院名称：</span>
                    <input type="text" class="demo-input" style="width: 10px" name="hospitalName"   class="easyui-validatebox" data-options="required:true" >
                    <input type="hidden" class="demo-input" style="width: 10px" name="hospitalId"   class="easyui-validatebox" data-options="required:true" >
                    <input type="hidden" class="demo-input" style="width: 10px" name="id"   class="easyui-validatebox" data-options="required:true" >
                </div>
                <div class="add-information1">
                    <span>套餐计费：</span>
                    <input type="text" class="demo-input" style="width: 10px" name="rates" placeholder="元" id="test1" class="easyui-validatebox" data-options="required:true">
                    <span>元/</span>
                    <input type="text" class="demo-input" name="ratesTime" placeholder="小时" id="test2" class="easyui-validatebox" data-options="required:true">
                    <span>时</span>
                </div>
                <%--<div class="add-information1">
                    <span>套餐计费时间：</span>
                    <input type="datetime-local" class="demo-input" name="endTime" id="test2" class="easyui-validatebox" data-options="required:true">
                </div>--%>
                <div class="add-information1">
                    <span>次数计费方式：</span>
                    <input type="text" name="chargeNumber" style="width:240px; border-radius:6px;text-align: justify" placeholder="元/次" class="easyui-validatebox" data-options="required:true">
                    <span>次</span>
                </div>
                <div class="add-information1">
                    <span>标准计费方式：</span>
                    <input type="text" name="costNormal" class="easyui-validatebox" data-options="required:true" style="width:240px; border-radius:6px;text-align: justify" placeholder="元/小时">
                    <span>元/时</span>
                </div>
                <div class="add-information1">
                    <span>押金金额：</span>
                    <input type="text" name="cashPledgeMoney" style="width:240px; border-radius:6px;text-align: justify">
                </div>
                <div class="add-information1">
                    <span>封顶金额：</span>
                    <input type="text" name="limitAmount" style="width:240px; border-radius:6px;text-align: justify">
                </div>

                <a id="saveBtn1" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save' ">保存</a>
                <a id="cancelBtn1" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cancel' ">取消</a>
            </form>
        </div>
    </div>


</div>

<link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/default/easyui.css"/>
<link rel="stylesheet" type="text/css" href="./plugs/easyui/themes/icon.css"/>
<script src="./plugs/easyui/jquery.easyui.min.js"></script>
<script src="./plugs/easyui/locale/easyui-lang-zh_CN.js"></script>
<script src="../assets/js/jquery.z-pager.js"></script>
<script src="./js/billing.js"></script>
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


    // 添加按钮打开编辑窗口
    $("#addBtn").click(function(){
        //每次打开时清空表单数据
        $("#addForm").form("clear");
        $("#win").window("open");
    });

    // 添加的取消按钮
    $("#cancelBtn").click(function() {
        // 每次打开时清空表单数据
        $("#addForm").form("clear");
        $("#win").window("close");
        clearDiv($("#win"));
    });

    // 添加按钮打开编辑窗口
    $("#addBtn1").click(function(){
        //每次打开时清空表单数据
        $("#updateForm").form("clear");
        $("#win1").window("open");
    });

    // 添加的取消按钮
    $("#cancelBtn1").click(function() {
        // 每次打开时清空表单数据
        $("#updateForm").form("clear");
        $("#win1").window("close");
        clearDiv($("#win1"));
    });



    function showHospitalName() {

        $.ajax({
            url:"/hospital/hospitalName",
            type:"get",
            success:function (data) {

                for (var i = 0; i < data.length; i++) {
                    $("#add").append("<option value='"+data[i].id+"'>"+data[i].name+"</option>")
                }
            }
        })

    }

    // function showName(){
    //     showHospitalName();
    //     $("#add").attr("disabled","disabled");
    // }


</script>
</body>

</html>