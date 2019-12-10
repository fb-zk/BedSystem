$(function(){
    initDataGrid();



});


/**
 * 初始化datagrid
 */
function initDataGrid(){
    $('#tt').datagrid({
        rownumbers:true,
        fit: true,
        url: '/resourceAllocation/selectBedResourceAllocation',
        queryParams: {},
        pagination: true,
        striped: true,	//True 就把行条纹化。（即奇偶行使用不同背景色）
        pageSize: 20,
        singleSelect: false,
        toolbar:"#tb",
        nowrap : true,
        loadMsg: '正在加载中，请稍等... ',
        fitColumns:false,//宽度自适应
        ctrlSelect:true,//Ctrl+鼠标左键多选自适应
        checkOnSelect:true,//点击行的时候也可以选中
        autoRowHeight:true,//高度自适应


        columns: [[

            {title:'医院名称', field:'hospitalName', width: 200, align: 'center'},
            {title:'用户押金', field:'cashPledgeMoney', width: 120, align: 'center'},
            {title:'免费时间(分钟)', field:'freeTime', width: 120, align: 'center'},
            {title:'标准计费方式(元/小时)', field:'costNormal', width: 140, align: 'center'},
            {title:'套餐计费(元/小时)', field:'rates', width: 120, align: 'center'},
            {title:'次数计费(元/次)', field:'chargeNumber', width: 120, align: 'center'},
            {title:'封顶金额', field:'limitAmount', width: 120, align: 'center'},
            // {title:'服务状态', field:'costProportion', width: 120, align: 'center'},
        ]],

    });

    /**
     * 删除计费信息
     */
    $("#removeBtn").click(function () {

        var id = $('#tt').datagrid('getSelections');
        if (id.length == 1) {
            var r = confirm("确定要删除此数据吗？")
            if (r){
                $.ajax({
                    url:"/resourceAllocation/del",
                    type:"POST",
                    data:{"id":id[0].id},
                    success:function (params){
                        if (params.code == "200"){
                            alert(params.msg);
                            window.location.reload();
                        } else {
                            alert(params.msg)
                        }
                    }

                })
            }
        } else {
            $.messager.alert('提示', '请选择一条记录！', 'warning');
            $("#win").window("close");
        }

    });

    /**
     * 保存计费信息
     */
    $("#saveBtn").click(function () {
        // alert("111");
        $("#addForm").form("submit",{
            url:"/resourceAllocation/insert",
            onSubmit : function() {
                // 判断表单的验证是否都通过
                return $("#addForm").form("validate");
            },
            success:function (params){

                alert("保存成功");
                window.location.reload();
            },
            error:function(params){
                alert("保存失败")
            }

        })
    });


    /**
     * 更改计费信息
     */
    $("#updateBtn").click(function (){
        /**
         * 计费信息的回显
         */
        //获取选中的行
        var rows = $("#tt").datagrid('getSelections');

        if (rows.length == 1) {
            //数据回显
            $("#updateForm").form("load","/resourceAllocation/findById?id="+rows[0].id);

            $("#win1").window("open");


            $("#saveBtn1").click(function(){
                $("#updateForm").form("submit",{
                    url:"/resourceAllocation/update",
                    onSubmit : function() {
                        // 判断表单的验证是否都通过
                        return $("#updateForm").form("validate");
                    },
                    success:function (params){

                        alert("保存成功");
                        window.location.reload();
                    },
                    error:function(params){
                        alert("保存失败")
                    }

                })
            })

        }else{
            $.messager.alert('提示', '请选择一条记录！', 'warning');
            $("#win1").window("close");
        }
    });



/*
    $("#addForm").from("submit",{
        url:"/resourceAllocation/update",
        onSubmit : function() {
            // 判断表单的验证是否都通过
            return $("#addForm").form("validate");
        },
        success:function (params){

            alert("成功");
            window.location.reload();
        },
        error:function(params){
            alert("失败")
        }
    })*/


}
