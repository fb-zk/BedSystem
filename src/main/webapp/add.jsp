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
    <title>医院管理>信息录入>录入医院信息</title>
    <meta name="description" content="overview &amp; stats"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <link rel="stylesheet" href="../assets/css/bootstrap.css">
    <link rel="stylesheet" href="../assets//fonts/iconfont.css">
    <link rel="stylesheet" href="../assets/css/commonality.css">
    <link rel="stylesheet" href="../css/add.css">
    <%--<link rel="stylesheet" href="./css/regional.less">--%>
    <link rel="stylesheet" href="../assets/laydate/theme/default/laydate.css">
    <link rel="stylesheet" href="../assets/diqu/css/city-picker.css">
    <script src="../assets/js/jquery-2.1.4.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/jquery.z-pager.js"></script>
    <script src="../assets/diqu/js/city-picker.data.js"></script>
    <script src="../assets/diqu/js/city-picker.js"></script>


</head>

<body>

<style>
    #city-picker3 {
        width: 300px;
        height: 44px;
        line-height: 43px;
        text-align: center;
    }

    .btn-primary1 {
        position: absolute;

        right: 750px;
        top: 3px;
    }

    .modal-content1 {
        height: 240px;
        width: 540px;
        position: absolute;
        top: 360px;
    }

    .add-information0 {
        width: 540px;
        height: 62px;
        background: rgba(234, 234, 234, 1);
        border-radius: 4px 4px 0px 0px;
    }

    .add-information1 {
        font-size: 20px;
    }

    .add-information1 input {
        height: 40px;
        width: 420px;
        margin-left: 20px;
        margin-top: 20px;
    }

    .modal-footer1 button {
        background: rgba(9, 182, 153, 1);
        border-radius: 2px;
        width: 150px;
        height: 40px;
        color: #fff;

    }

    #queding {
        position: absolute;
        left: -450px;
        top: -30px;
    }

    #quxiao {
        position: absolute;
        left: -220px;
        top: -30px;

    }
    #hospitalType select{
        width: 300px;
        height: 32px;
        font-size: 17px;
    }
    #hospitalNature select{
        width: 300px;
        height: 32px;
        font-size: 17px;
    }
    #signingState select{
        width: 300px;
        height: 32px;
        font-size: 17px;
    }
    .city-picker-span{
        width: 300px !important;
        height: 32px !important;
        line-height:32px  !important;
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
    <a href="#" style="">医院管理>信息录入>录入医院信息</a>

</div>


<!-- 添加按钮 -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content1">
            <%--action="${ctx }/hospital/save" method="post"--%>
            <form id="department"  enctype="multipart/form-data">
                <div class="add-information0" id="">
                    <span>添加</span>
                    <span class="iconfont icon-shanchu" id="bth"></span>
                </div>
                <div class="add-information1">
                    <span>请输入科室名：</span><br>
                    <input type="text" name="departmentName" id="departmentName" style="text-align: justify">
                </div>

                <div class="modal-footer1">
                    <button type="button" onclick="onSubmit()" class="btn btn-default" data-dismiss="modal"
                            id="queding">确定
                    </button>
                    <button type="button" class="btn btn-primary" id="quxiao">取消</button>
                </div>
            </form>
        </div>
    </div>
</div>


<!-- 页面主体 -->
<div class="main">
    <!-- 头部菜单 -->
    <form id="hospitalForm" action="${ctx }/hospital/save" method="post" enctype="multipart/form-data">
        <div class="main1">
            <div id="hospitalName" class="hospitalName">
                <input type="hidden" id= "hospitalId" name="id" value="" >
                <span>医院名称：</span>
                <input type="text" name="name" value="">
            </div>

            <div id="hospitalType" class="hospitalType">
                <span>医院性质：</span>
                <%--<input list="students" name="type" value="" placeholder="请选择">--%>
                <select id="students" name="type">
                    <option value="" disabled selected hidden>请选择</option>
                    <option value="01">人民医院</option>
                    <option value="02">中医院</option>
                    <option value="03">妇幼保健院</option>
                    <option value="04">其它医院</option>
                </select>
            </div>

            <div id="hospitalNature" class="hospitalNature">
                <span>医院类型：</span>
                <%--<input list="students1" name="nature" value="" placeholder="请选择">--%>
                <%--<datalist id="students1">--%>
                <%--<option value="私营">--%>
                <%--<option value="公营">--%>

                <%--</datalist>--%>
                <select id="students" name="hospitalNature">
                    <option value="" disabled selected hidden>请选择</option>
                    <option value="公营">公营</option>
                    <option value="民营">民营</option>
                    <option value="合资">合资</option>
                </select>
            </div>

            <div id="region" class="region">
                <span id="region1">地区：</span>
                <form class="form-inline">
                    <div id="distpicker">
                        <div class="form-group">
                            <div style="position: relative;">
                                <input id="city-picker3" class="form-control" readonly type="text" value="湖北省/武汉市/武昌区"
                                       data-toggle="city-picker" >
                            </div>
                        </div>

                    </div>
                </form>
            </div>

            <div id="account" class="account">
                <span>账号：</span>
                <input type="text" name="account" value="" placeholder="请输入账号">
            </div>

            <div id="salerName" class="salerName">
                <span>销售人员姓名：</span>
                <input type="text" name="salerName" placeholder="" value="">
            </div>

            <div id="salesTel" class="salesTel">
                <span>销售人员电话：</span>
                <input type="text" name="salesTel" placeholder="" value="">
            </div>


            <div id="signingState" class="signingState">
                <span>签约状态：</span>
                <%--<input list="students" name="signingState" value="" placeholder="请选择">--%>
                <%--<datalist id="students">--%>
                <%--<option value="已签约">--%>
                <%--<option value="未签约">--%>
                <%--</datalist>--%>
                <select name="signingState" placeholder="请选择">
                    <option value="" disabled selected hidden>请选择</option>
                    <option value="0">未签约</option>
                    <option value="1">已签约</option>
                </select>
            </div>


            <div id="hospitalLev" class="hospitalLev">
                <span>医院等级：</span>
                <select name="hospitalLevel" >
                    <option value="" disabled selected hidden>请选择</option>
                    <option value="3">三级</option>
                    <option value="2">二级</option>
                    <option value="1">一级</option>
                    <option value="0">其他</option>
                </select>
                <select name="grade" >
                    <option value="" disabled selected hidden>请选择</option>
                    <option value="1">甲</option>
                    <option value="2">乙</option>
                    <option value="3">丙</option>
                    <option value="4">丁</option>
                </select>
            </div>

            <div id="contact" class="contact">
                <span>联系人：</span>
                <input type="text" name="contact" placeholder="" value="">
            </div>

            <div class="tel">
                <span>联系电话：</span>
                <input type="text" name="hospitalTel" value="" placeholder="">
            </div>

            <div class="address">
                <span>医院地址：</span>
                <input type="text" name="address" value="" placeholder="">
            </div>

            <div class="signingDate">
                <span>签约时间：</span>
                <input type="date" name="signingDate" value="" placeholder="">
            </div>

            <div class="expireDate">
                <span>到期时间：</span>
                <input type="date" name="expireDate" value="" placeholder="">
            </div>
            <div class="remark">
                <span>备注：</span>
                <input type="text" name="remark" value="" placeholder="备注">
            </div>
            <%--<button id="save">保存医院信息</button>--%>
            <div>
                <input id="save" type="button" onclick="onSave()" value="保存医院信息" form="hospitalForm"/>
            </div>
        </div>
    </form>

    <div class="main2">
        <span>医院科室:</span>
        <div class="submenu" id="submenu">
            <c:forEach   var="sub" items="${departments}" varStatus="status">
                <button  value=${sub.id}  onclick="onDel(this)">${sub.departmentName}</button>
            </c:forEach>
            <%--<button id="gushang">骨伤科</button>--%>
            <%--<button id="waike">外科</button>--%>
            <%--<button id="waike">外科</button>--%>


            <!-- <button id="addtion">添加</button> -->
            <button type="button" class="btn btn-primary1" data-toggle="modal" data-target="#exampleModal"
                    data-whatever="@mdo" id="addtion">添加
            </button>
        </div>
    </div>

    <button>保存科室信息</button>


</div>


</div>

<script>


    function onSave() {


        console.log($("#hospitalForm").serialize());

        $.ajax({
            type: "POST", //方法类型
            dataType: "json",//预期服务器返回的数据类型
            url: "/hospital/save", //url
            data: $("#hospitalForm").serialize(),
            success: function (params) {
                if (params.code == 200) {
                    alert(params.msg);
                    var hospitalId = params.data.id;
                    $("#hospitalId").val(hospitalId);
                } else {
                    alert(params.msg);
                }
            }
        })
    }

    function onDel(obj){
        // console.log(obj);
        //console.log($(obj));
        // var thisId = $(obj).text();
        //alert(thisId);
        console.log($(obj).serialize());
        $.ajax({
            type:"POST",//方法类型
            dataType:"json",//预期服务器返回的类型
            url:"/hospital/deleteDepartment",
            data:{
                /* departmentName: $(obj).text(),
                 hospitalId : $("#hospitalId").val()*/
                id:$(obj).val()
            },
            success:function(params){
                if(params.code == 200){
                    //   alert(params.msg);
                    $(obj).remove();
                }
                alert(params.msg);
            }
        })
    }

    $(function(){

        $("#queding").click(function () {
            // alert(123)
            var departmentName =  $("#departmentName").val();
            var hospitalId = $("#hospitalId").val();
            $.ajax({
                type: "POST", //方法类型
                dataType: "json",//预期服务器返回的数据类型
                //url: "/admin/Information/customAddDepartmentInfo", //url
                url: "/hospital/insertDepartment", //url
                data: {
                    departmentName: departmentName,
                    hospitalId : hospitalId
                },
                success: function (params) {
                    if (params.code == 200) {
                        $("#submenu").prepend("<button value='"+params.data.id+"' onclick=\"onDel(this)\">"+params.data.departmentName+"</button>");

                    } else {
                        alert(params.msg);
                    }
                    $("#departmentName").val("");
                }

            });
        });


    });


    // function onSubmit() {
    //     alert(123);
    //     var secondSubName =  $("#secondSubName").val();
    //     var hospitalId = $("#hospitalId").val();
    //     $.ajax({
    //         type: "POST", //方法类型
    //         dataType: "json",//预期服务器返回的数据类型
    //         url: "/admin/Information/customAddDepartmentInfo", //url
    //         data: {
    //             secondSubName: secondSubName,
    //             hospitalId : hospitalId
    //         },
    //         success: function (params) {
    //             if (params > 0) {
    //                 alert('保存成功');
    //
    //             } else {
    //                 alert('保存失败');
    //             }
    //         },
    //
    //     })
    // }

    // 小圆点的

    $(".nav-stacked li>ul>li").mouseover(function () {
        // $(".nav-stacked li>ul>li>span").css("background","rgba(9, 182, 153, 1)").siblings().removeClass("color","")
        $("this>span").addClass("active1").siblings().removeClass("active1");

    })
    laydate.render({
        elem: '#test1' //指定元素
    });
    laydate.render({
        elem: '#test2' //指定元素
    });

</script>
</body>

</html>