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
    <title>系统管理>角色管理</title>
    <meta name="description" content="overview &amp; stats"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets//fonts//iconfont.css">
    <link rel="stylesheet" href="../assets/css/commonality.css">
    <link rel="stylesheet" href="./css/role.css">
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
        height: 570px;
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
        margin-left: 35px;
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
        margin-left: 13px;
    }

    .add-information5 span {

        margin-left: 35px;
        margin-top: 30px;
        text-align: justify;
    }

    .add-information5 {
        font-size: 18px;
        margin-top: 25px;
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
    #btn8{
        margin-left: 0px;
    }
    #nname{
        margin-left:13px;
    }
   #addForm{
       width: 500px;
       height: 300px;
   }
   #addForm select{
       height: 30px;
       width: 320px  !important ;
       margin-left: 13px;
   }
    #addForm div{
        height: 50px;
        margin-top: 20px;
    }

    #addForm span{
        font-size:20px;
    }
    #addForm div span{
        font-size:20px;
    }
    #addForm div input{
        height: 30px !important;
        width: 320px !important;
        background-color:#fff;
        border-color:#ccc;

    }
    #saveBtn1{
        position: absolute;
        top: 240px;
        left: 300px;
    }
    #cancelBtn1{
        position: absolute;
        top: 240px;
        left: 150px;
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
    <a href="#" style="">系统管理><span> 角色管理</span></a>
<%--    <div>--%>
<%--            <span class="tubiao2">--%>
<%--                    <i>--%>
<%--                        <img src="../assets/fonts/font/未标题-1_16.png" alt="">--%>
<%--                    </i>--%>
<%--                    <button type="button" class="btn btn-primary1" data-toggle="modal" data-target="#exampleModal"--%>
<%--                            data-whatever="@mdo">添加</button>--%>
<%--                </span>--%>

<%--    </div>--%>
</div>

<%--<!-- 添加按钮 -->--%>
<%--<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">--%>
<%--    <div class="modal-dialog" role="document">--%>
<%--        <div class="modal-content1">--%>
<%--            <form id="sysRole" action="">--%>
<%--                <div class="add-information0" id="">--%>
<%--                    <span>添加信息</span>--%>
<%--                    <span class="iconfont icon-shanchu" id="bth" ></span>--%>
<%--                </div>--%>
<%--                <div class="add-information1">--%>
<%--                    <span>角色名称：</span>--%>
<%--                    <input type="text" style="width:240px; border-radius:6px;text-align: justify" id="name" name="name" >--%>
<%--                    <div id="error" style="color: red;display: inline"></div>--%>
<%--                </div>--%>

<%--                <div class="add-information1">--%>
<%--                    <span>角色类型：</span>--%>
<%--                    <select style="width: 240px; border-radius: 6px; text-align: justify" name="type" placeholder="请选择" >--%>
<%--                        <option value="">请选择</option>--%>
<%--                        <option value="1">百穂</option>--%>
<%--                        <option value="2">医院</option>--%>
<%--                    </select>--%>
<%--                </div>--%>
<%--                <div class="add-information1">--%>
<%--                    <span id="btn8">角色关键字：</span><input type="text" style="width:240px; border-radius:6px" name="keyWord">--%>
<%--                </div>--%>
<%--                &lt;%&ndash;            <div class="add-information1">&ndash;%&gt;--%>
<%--                &lt;%&ndash;                <span>维护人员：</span><input type="text" style="width:240px; border-radius:6px;">&ndash;%&gt;--%>
<%--                &lt;%&ndash;            </div>&ndash;%&gt;--%>
<%--            </form>--%>
<%--            <div class="modal-footer1">--%>
<%--                <button type="button" class="btn-default" data-dismiss="modal">确定</button>--%>
<%--                <button type="button" class="btn btn-primary"  data-dismiss="modal">取消</button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<!-- 搜索框和下拉框 -->
<div class="inquire">
    <div class="search">

        <div class="content_input">
            <span>角色名称：</span>
            <input type="text" class="search_field" placeholder="" id="role_name">
            <button id="searchBtn" class="search_btn">搜索</button>
            <button class="search_btn" id="chongzhi">重置</button>
            <button type="button" class="btn btn-primary2" data-toggle="modal" data-target="#exampleModal2"
                    data-whatever="@mdo" id="xiugai">修改编辑
            </button>
        </div>

        <!-- Single button -->

    </div>
</div>

<!-- 页面主体 -->
<div class="main">
    <!-- 头部菜单 -->
    <table id="tt"></table>
    <!-- 工具条 -->
    <div id="tb">
        <a id="addBtn" href="#" class="easyui-linkbutton" data-options="plain:true" >添加</a>
        <a id="editBtn" href="#" class="easyui-linkbutton" data-options="plain:true" onclick="showRoleInfo()">修改</a>
        <a id="removeBtn" href="#" class="easyui-linkbutton" data-options="plain:true">删除</a>
    </div>

    <!-- 修改弹窗 显示信息的窗口 -->
    <div id="win" class="easyui-window" title="编辑角色" style="width:500px;height:300px"
         data-options="iconCls:'icon-save',modal:true,closed:true ">
        <div class="modal-content1">
            <form id="editForm" method="post">
                <div id="add1">
                    <span>角色名称：</span><span id="bb1"></span>
                </div>
                <span>角色类型：</span>
                <select style="width: 240px; border-radius: 6px; text-align: justify" name="type" placeholder="请选择" id="add">

                </select><br/>
                <div id="add2">
                    <span>角色关键字：</span><span id="bb2"></span>
                </div><br/>
                <a id="saveBtn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save' ">保存</a>
                <a id="cancelBtn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cancel' ">取消</a>
            </form>
        </div>
    </div>

    <!-- 添加弹窗 显示信息的窗口 -->
    <div id="win1" class="easyui-window" title="添加角色" style="width:500px;height:300px"
         data-options="iconCls:'icon-save',modal:true,closed:true ">
        <div class="modal-content1">
            <form id="addForm" method="post">
                <div>
                    <span>角色名称：</span><input type="text" style="width:240px; border-radius:6px;text-align: justify" class="easyui-validatebox" data-options="required:true"  id="nname" name="name" ><span id="error" style="color: red;display: inline"></span>
                </div>
                <span>角色类型：</span>
                <select style="width: 240px; border-radius: 6px; text-align: justify" name="type" placeholder="请选择" >
                    <option value="1">百穂</option>
                    <option value="2">医院</option>
                </select>
                <div>
                    <span>角色关键字：</span><input type="text" style="width:240px; border-radius:6px" class="easyui-validatebox" data-options="required:true" name="keyWord">
                </div><br/>
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
<script src="./js/role.js"></script>
<script>
    // 小圆点的

    $(".nav-stacked li>ul>li").mouseover(function () {

        // $(".nav-stacked li>ul>li>span").css("background","rgba(9, 182, 153, 1)").siblings().removeClass("color","")
        $("this>span").addClass("active1").siblings().removeClass("active1");


    })

    // 修改按钮打开编辑窗口，编辑客户的窗口默认是关闭的，所以需要给编辑窗口添加点击事件,此处绑定的是添加按钮的事件
    $("#editBtn").click(function(){
        //每次打开时清空表单数据
        $("#editForm").form("clear");
        $("#win").window("open");
        // 获取选中行的 roleId
        var rows = $('#tt').datagrid('getSelections');
        if (rows.length == 1) {

        } else {
            $.messager.alert('提示', '请选择一条记录！', 'warning');
            $("#win").window("close");
        }

    });

    // 添加按钮
    $("#addBtn").click(function(){
        //每次打开时清空表单数据
        $("#addForm").form("clear");
        $("#win1").window("open");
    });

    // 修改的取消按钮
    $("#cancelBtn").click(function() {
        // 每次打开时清空表单数据
        $("#win").window("close");
        clearDiv($("#win"));
    });

    // 添加的取消按钮
    $("#cancelBtn1").click(function() {
        // 每次打开时清空表单数据
        $("#addForm").form("clear");
        $("#win1").window("close");
        clearDiv($("#win1"));
    });

    /**
     * 点击修改按钮后回显角色信息数据
     */
    function showRoleInfo(){

        var rows = $('#tt').datagrid('getSelections');
            $.ajax({
                url:"/manager/role/updateByRoleId",
                type:"get",
                data:{"roleId":rows[0].roleId},
                success:function (params) {

                    if (params.type == "1"){
                        $("#add").html("<option value='"+params.type+"'>百穂</option>")
                    }
                    if (params.type == "2"){
                        $("#add").html("<option value='"+params.type+"'>医院</option>")
                    }
                    $("#bb1").html("<input type=\"text\" name='name'  value='"+params.name+"'/>"+"<input type=\"hidden\" name='roleId' value='"+params.roleId+"'/>");
                    $("#bb2").html("<input type=\"text\" name='keyWord'  value='"+params.keyWord+"'/>")

                }
            })
    }

    /**
     * 验证角色名是否存在
     */
    $("#nname").blur(function () {

        var names = $("#nname").val();

        $.ajax({
            type:"POST",
            url:"/manager/role/roleNameExist",
            data:{"name":names},
            success:function (parmas) {
                if (parmas.code == "504"){

                    $("#error").html("<font color = 'red'>用户名已存在</font>");
                } else if (parmas.code == "200"){
                    $("#error").html("<font color = 'red'></font>");
                }
            }
        })
    });




</script>
</body>

</html>