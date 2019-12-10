$(function(){
	initDataGrid();
	$("#searchBtn").click(function() {
		var obj = {};
		obj["name"] = $("#bm").val();
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
		url: '/manager/user/userList',
		queryParams: {},
		pagination: true,
		toolbar:"#tb",
        striped: true,	//True 就把行条纹化。（即奇偶行使用不同背景色）
        pageSize: 20,
        singleSelect: false,
        nowrap : true,
		columns: [[
				{title:'姓名', field:'name', width: 230, align: 'center'},
				{title:'用户名', field:'userName', width: 150, align: 'center'},
				{title:'密码', field:'passWord', width: 300, align: 'center'},
                {title:'手机号', field:'mobileno', width: 250, align: 'center'},
				{title:'角色类型', field:'type', width: 100, align: 'center',  formatter: function(value) {
                        value = parseInt(value);
                        switch (value) {
                            case 1:
                                return "百穗";
                            case 2:
                                return "医院";
                        }
                    }},
				{title:'角色名称', field:'roleName', width: 220, align: 'center'},
				// {title:'操作', field:'id', width: 60, align: 'center', formatter: function(value) {
				// 	var str = '/manager/user/del?id=' + value;
				// 	str = '<a href="' + str + '">删除</a>'
				// 	return str;
				// }},
		]],
    });

	/**
	 * 添加用户信息
	 */
	$("#saveBtn").click(function () {

		$("#addForm").form("submit",{
			url:"/manager/user/insertInfo",
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
	 * 删除角色信息
	 */
	$("#removeBtn").click(function () {

		var userId = $('#tt').datagrid('getSelections');
		if (userId.length == 1) {
			var r = confirm("确定要删除此数据吗？")
			if (r){
				$.ajax({
					url:"/manager/user/del",
					type:"POST",
					data:{"id":userId[0].id},
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

