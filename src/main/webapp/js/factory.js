$(function(){
	initDataGrid();
	
	$("#searchBox .btn-group").click(function(e) {
		var target = e.target;
		if(target.tagName.toUpperCase() === "A") {
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
		if(bedState != undefined) obj.bedState = bedState;
		if(key != undefined) obj[key] = value;
		$("#tt").datagrid("load", obj);
	})
});



/**
 * 初始化datagrid
 */
function initDataGrid(){
	$('#tt').datagrid({
		//额外请求参数
		/*queryParams: {
			name: 'easyui',
			subject: 'datagrid'
		}*/
		//queryParams: $("#searchform").form2json(), //搜索条件查询
		url: '/factory/selectAllFactory',
		//启用工具条
		toolbar:"#tb",
		//显示行号
		rownumbers:true,
		//显示分页控件
		pagination: true,
		//True 就把行条纹化。（即奇偶行使用不同背景色）
        striped: true,
        loadMsg: '正在加载中，请稍等... ',
        fitColumns:false,//宽度自适应
        ctrlSelect:true,//Ctrl+鼠标左键多选自适应
        checkOnSelect:true,//点击行的时候也可以选中
        autoRowHeight:true,//高度自适应
		columns: [[
			// {
			// 	field:"id",
			// 	title:"系统uuid",
			// 	width:100,
			// 	align:'center',
			// 	checkbox:true
			// },
			{
				field:"code",
				title:"厂商编码",
				width:105,
				align:'center'
			},
			{	
				field:"name",
				title:"厂商名称",
				width:125,
				align:'center'
			},
			{	
				field:"phone",
				title:"厂商电话",
				width:125,
				align:'center'
			},
			{	
				field:"person",
				title:"厂商联系人",
				width:105,
				align:'center'
			},
			{
				field:"address",
				title:"厂商地址",
				width:200,
				align:'center'
			},
			{
				field:"servieeDetails",
				title:"服务细节",
				width:115,
				align:'center'
			},
			{
				field:"unitPrices",
				title:"原价(元)",
				width:80,
				align:'center'
			},
			{
				field:"createTime",
				title:"添加时间",
				width:180,
				align:'center'
			},
			{
				field:"updateTime",
				title:"更新时间",
				width:180,
				align:'center'
			},
			{
				field : "id",
				title : "操作",
				width : 125,
				align : 'center',
				formatter : function(value) {
					var str = '/factoryOrder/findFactoryByid?id=' + value;
					var btn='<a class="show" href="'+str+'" >查看详情</a>'
					return btn;
				}
			}
		]],
		//onLoadSuccess: function () {
			//data = eval("("+data+")");
			//alert(id);
			//$("a[name='Details']").linkbutton({text:'查看详情',iconCls:'icon-ok'});
			//$('.show').linkbutton({ text: '查看详情', plain: true, iconCls: 'icon-search'});
		//}

    });
	// formatter : function(value) {
	// 	var str = '/factory/findFactoryByid?id=' + value;
	// 	str = '<a class="show" href="' + str + '"></a>'
	// 	return str;
	// }


	/**
	 * 添加或修改厂商信息
	 */
	$("#saveBtn").click(function () {

		$("#addForm").form("submit",{
			url:"/factory/updateOrInsert",
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

		})
	});

	/**
	 * 删除角色信息
	 */
	$("#removeBtn").click(function () {

		var id = $('#tt').datagrid('getSelections');
		if (id.length == 1) {
			var r = confirm("确定要删除此数据吗？")
			if (r){
				$.ajax({
					url:"/factory/del",
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



	// 添加按钮
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

	// 修改按钮打开编辑窗口，编辑客户的窗口默认是关闭的，所以需要给编辑窗口添加点击事件,此处绑定的是添加按钮的事件
	$("#editBtn").click(function(){

		// 获取选中行的 roleId
		var rows = $('#tt').datagrid('getSelections');
		if (rows.length == 1) {
			// 数据回显
			$("#addForm").form("load","/factory/findfactoryByid?id="+rows[0].id);
			$("#win").window("open");

		} else {
			$.messager.alert('提示', '请选择一条记录！', 'warning');
			$("#win").window("close");
		}

	});

	// 修改的取消按钮
	$("#cancelBtn").click(function() {
		// 每次打开时清空表单数据
		$("#win").window("close");
		clearDiv($("#win"));
	});

}

