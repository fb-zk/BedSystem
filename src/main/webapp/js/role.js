$(function(){
    initDataGrid();
    $("#searchBtn").click(function() {
        var obj = {};
        obj["name"] = $("#role_name").val();
        $("#tt").datagrid("load", obj);
    })
});


/**
 * 初始化datagrid
 */
function initDataGrid(){
    $('#tt').datagrid({
        rownumbers:true,
        fit: true,
        url: '/manager/role/roleList',
        queryParams: {},
        //启用工具条
        toolbar:"#tb",
        //显示分页控件
        pagination: true,
        loadMsg: '正在加载中，请稍等... ',
        ctrlSelect:true,//Ctrl+鼠标左键多选自适应
        checkOnSelect:true,//点击行的时候也可以选中
        striped: true,	//True 就把行条纹化。（即奇偶行使用不同背景色）
        pageSize: 20,
        singleSelect: true,
        nowrap : true,
        columns: [[

            {title:'角色名称', field:'name', width: 380, align: 'center'},
            {title:'角色关键字', field:'keyWord', width: 380, align: 'center'},
            {title:'角色类型', field:'type', width: 100, align: 'center',  formatter: function(value) {
                    value = parseInt(value);
                    switch (value) {
                        case 1:
                            return "百穗";
                        case 2:
                            return "医院";
                    }
                }},
            {title:'操作', field:'roleId', width: 280, align: 'center', formatter: function(value) {
                    var str = '/manager/user/findByRoleId?roleId=' + value;
                    var btn = '<a class="show" href="' + str + '"></a>'
                    return btn;
                }},
        ]],
        onLoadSuccess: function () {
            //data = eval("("+data+")");
            //alert(id);
            //$("a[name='Details']").linkbutton({text:'查看详情',iconCls:'icon-ok'});
            $('.show').linkbutton({ text:'查看详情', plain: true, iconCls: 'icon-search'});
        }

    });

    /**
     * 添加角色信息
     */
    $("#saveBtn1").click(function () {

        $("#addForm").form("submit",{
            url:"/manager/role/inserRoleInfo",
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
    })

    /**
     *  修改角色信息
     */
    $("#saveBtn").click(function () {

        var rows = $('#tt').datagrid('getSelections');
        $("#editForm").form("submit",{
            url:"/manager/role/updateById",
            onSubmit : function() {
                // 判断表单的验证是否都通过
                return $("#editForm").form("validate");
            },
            success:function (params){

                alert("修改成功");
                window.location.reload();
            },
            error:function(params){
                alert("修改失败")
            }

        })
    })


    /**
     * 删除角色信息
     */
    $("#removeBtn").click(function () {

        var rows = $('#tt').datagrid('getSelections');
        if (rows.length == 1) {
            var r = confirm("确定要删除此数据吗？")
            if (r){
                $.ajax({
                    url:"/manager/role/del",
                    type:"POST",
                    data:{"roleId":rows[0].roleId},
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

    })

}
