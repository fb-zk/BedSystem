$(function() {
	initDataGrid();
	
	$("#searchBox .btn-group").click(function(e) {
		var target = e.target;
		if (target.tagName.toUpperCase() === "A") {
			var $btn = $(this).children(".dropdown-toggle").eq(0);
			$btn.text($(target).text());
			$(this).data("val", $(target).data("val"));
			console.log($(this).data("val"));
		}
	})

	$("#searchBtn").click(function() {
		var $btns = $("#searchBox .btn-group");
		var obj = {};
		var bedState = $btns.eq(0).data("val");
		var key = $btns.eq(1).data("val");
		var value = $(this).prev().val();
		if (bedState != undefined)
			obj.bedState = bedState;
		if (key != undefined)
			obj[key] = value;
		$("#tt").datagrid("load", obj);
	})
});


//获取医院的id，并查询该医院下面的科室
$(function(){
	$('#hospitalId').combobox({
		url:'hospital/findHospitalByid',
		valueField:'hospitalId',
		textField:'hospitalId',
		//editable:false,
		panelWidth:300,
		panelHeight:400,
	    onSelect: function (row) {
	        if (row != null) {
	            $('#departmentId').combobox({
					url: "department/selectDepartmentByHospitalId?h_id=" + row.id,
					valueField:'departmentId',
					textField:'departmentId',
					method:'get',
					editable:false,
					panelWidth:100,
					panelHeight:50,
					
					//var valueFiled = $('#departmentId').combobox('getValue');
	            	//debugger;
	            });
	        }
	    }
	});
});

//获取厂商的id，并查询该厂商表中陪护椅的单价
$(function(){
	$('#factoryId').combobox({
	    onSelect: function (row) {
	        if (row != null) {
	        	//var f_id = $('#factoryId').combobox('getValue');
	            $.ajax({
	            	url:'factory/findUnitPrices?f_id='+ row.id,
	            	dataType: 'json',
	            	type:'get',
	            	//async: false,
	            	success:function(data){
	            		var Up=$('#unitPrices');//根据文本框的id找到这个文本框，并将其变成jquery对象
	            		Up.val('');//清空上次框里面的数据
	            		Up.val(data);//向input框中填入数据
	            	}
	            })
	        }
	    }
	});
});


//绑定状态设置，暂无设置
//$(function(){
	//$("#bindingState").combobox("setValue",0);//给绑定下拉框
//});


//$(function(){
	//$(".show").combobox("setValue",0);//给绑定下拉框
	
//});


/**
 * 初始化datagrid
 */
function initDataGrid() {
	$('#tt').datagrid({
		// 额外请求参数
		/*
		 * queryParams: { name: 'easyui', subject: 'datagrid' }
		 */
		// queryParams: $("#searchform").form2json(), //搜索条件查询
		url : '/Chair/selectBindingChair',
		// 启用工具条
		toolbar : "#tb",
		// 显示行号
		rownumbers : true,
		// 显示分页控件
		pagination : true,
		// True 就把行条纹化。（即奇偶行使用不同背景色）
		striped : true,
		loadMsg : '正在加载中，请稍等... ',
		fitColumns : false,// 宽度自适应
		ctrlSelect : true,// Ctrl+鼠标左键多选自适应
		checkOnSelect : true,// 点击行的时候也可以选中
		autoRowHeight : true,// 高度自适应
		columns : [[
			/*{
				field : "id",
				title : "系统uuid",
				width : 100,
				align : 'center'
				checkbox : true
			}, */
			{
				field : "code",
				title : "陪护椅编码",
				width : 135,
				align : 'center'
			},
			{
				field : "hospitalName",
				title : "医院",
				width : 135,
				align : 'center'
			}, 
			{
				field : "departmentName",
				title : "部门",
				width : 135,
				align : 'center'
			}, 
			{
				field : "factoryName",
				title : "生产厂商",
				width : 135,
				align : 'center'
			}, 
			{
				field : "unitPrices",
				title : "单价(单位:元)",
				width : 135,
				align : 'center'
			}, 
			{
				field : "produceTime",
				title : "生产日期",
				width : 135,
				align : 'center'
			}, 
			{
				field : "protectTime",
				title : "保修期(单位:月)",
				width : 135,
				align : 'center'
			}, 
			{
				field : "bindingState",
				title : "绑定状态",
				width : 135,
				align : 'center',
				formatter : function(value) {
					var num = parseInt(value);
					if (num > 0) {
						return '已绑定';
					} else {
						return '未绑定';
					}
				}
			}, 
			{
				field : "lockState",
				title : "陪护椅锁状态",
				width : 135,
				align : 'center',
				formatter : function(value) {
					var num = parseInt(value);
					switch (num) {
					case 0:
						return '未知异常';
					case 1:
						return '开启';
					case 2:
						return '关闭';
					case 3:
						return '未启用';
					case 4:
						return '电量不足';
					case 5:
						return '流量不足';
					case 6:
						return '非法开启';
					case 7:
						return '电源关闭';
					case 8:
						return '维修中';
					}
				}
			},
			{
				field : "details",
				title : "操作",
				width : 135,
				align : 'center',
				formatter : function(value,row,index) {
					var btn='<a class="show" href="#" onclick="Details()">查看/修改</a>'
					return btn;
				}
			}
		]],
		//onLoadSuccess: function () {
			//data = eval("("+data+")");
			//alert(id);
			//$("a[name='Details']").linkbutton({text:'查看详情',iconCls:'icon-ok'}); 
			//$('.show').linkbutton({ text: '查看/修改', plain: true});
		//}
	});
	
	// 添加按钮
	$("#addBtn").click(function() {
		// 每次打开时清空表单数据
		$("#editForm").form("clear");
		$("#win").window("open");
	});
	
	// 取消按钮
	$("#cancelBtn").click(function() {
		// 每次打开时清空表单数据
		$("#win").window("close");
	});
	
	// 保存数据
	$("#saveBtn").click(function() { // 绑定保存按钮点击事件
		var saOrUpUrl="";
		saOrUpUrl="Chair/saveChair";
		var rows="";
		rows = $("#tt").datagrid('getSelections');//返回勾选的用户记录的行数
		if(rows != ""){//不为空则为修改，为空则为保存
			saOrUpUrl="Chair/updateChair";
		}
	
		//debugger;
		
		$("#editForm").form("submit", {
			url : saOrUpUrl,
			// onSubmit:表单提交前的回调函数，返回true则提交表单；返回false不提交表单
			onSubmit : function() {
				// 判断表单的验证是否都通过
				return $("#editForm").form("validate");
			},
			success : function(data) {
				data = eval("(" + data + ")");
				if (data.success) {
					$("#win").window("close");
					$("#tt").datagrid("reload");
					$.messager.alert("提示", "保存成功", "info");
				} else {
					$.messager.alert("提示", "保存失败：" + data.msg, "error");
				}
			}
		});
	});

	// //修改数据
	// $("#editBtn").click(function(){
	// 	//判断只能选择一行，单位时间内只能修改一个用户信息
	// 	var rows = $("#tt").datagrid('getSelections');//返回勾选的用户记录的行数
	// 	//alert('length='+rows.length)
	// 	if(rows.length != 1){
	// 		$.messager.alert("提示","修改操作只能选择一行","warning");
	// 		return;
	// 	}
	// 	//表单回显
	// 	$("#editForm").form("load","Chair/findChairByid?id="+rows[0].id); //rows[0]表示勾选的那一行数据
	// 	$("#win").window("open");
	// });
	
	//删除数据，点击删除按钮
	$("#removeBtn").click(function(){
		//判断是否选中至少一行数据
		var rows = $("#tt").datagrid('getSelections');//返回勾选的用户记录的行数
		if(rows.length == 0){
			$.messager.alert("提示","删除操作至少选中一行","warning");
			return;
		}
			
		//格式：id=1&id=2&id=3  需要传回后台的内容
		$.messager.confirm("提示","确认删除数据吗？",function(value){
			if(value){
				var idStr="";
				//遍历数据,必须要遍历
				$(rows).each(function(i){
					idStr += ("id="+rows[i].id+"&");
				});
				//alert(idStr);	//idStr=id=1&id=2&id=3&  需要截取id=1&id=2&id=3
				idStr = idStr.substring(0,idStr.length-1);
				//alert(idStr) id=id=1&id=2&id=3
				
				//传递到后台
				$.post("Chair/deleteChairByid",idStr,function(data){
	  				if(data.success){
	  					//同时刷新table数据
	  					$("#tt").datagrid("reload");
	  				
	  					$.messager.alert("提示","删除成功","info");
	  				}else{
	  					$.messager.alert("提示","删除失败："+data.msg,"error");
	  				}
				},"json");
			}
		});
	});

}
//每行数据详情使用
function Details(){
	var rows = $("#tt").datagrid('getSelections');//返回勾选的用户记录的行数
	if (rows.length == 1){
		$("#editForm").form("load","Chair/findChairByid?id="+rows[0].id); //rows[0]表示勾选的那一行数据
		$("#win").window("open");
	}
}
