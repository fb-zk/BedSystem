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
		url: '/factoryOrder/findAllOrder',
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
			/*{
				field:"id",
				title:"系统uuid",
				width:100,
				align:'center'
				//checkbox:true
			},*/
			{
				field:"code",
				title:"订单编码",
				width:160,
				align:'center'
			},
			{	
				field:"name",
				title:"订单厂商",
				width:160,
				align:'center'
			},
			{	
				field:"unitPrices",
				title:"订单单价(元)",
				width:160,
				align:'center'
			},
			{	
				field:"count",
				title:"订单总量",
				width:160,
				align:'center'
			},
			{
				field:"totalPrices",
				title:"订单总价(元)",
				width:160,
				align:'center'
			},
			{
				field:"createTime",
				title:"创建时间",
				width:160,
				align:'center'
			},
			{
				field:"updateTime",
				title:"更新时间",
				width:160,
				align:'center'
			}
			// {
			// 	field:"details",
			// 	title:"操作",
			// 	width:160,
			// 	align:'center',
			// 	formatter: function(value,row,index) {//value：字段值、row：行记录数据、index: 行索引
			// 		var btn = "<a class='show' href='javascript:void(0)' οnclick='showRow()'>查看详情</a>";
			// 	    return btn;
			// 	}
			// }
		]]
		// onLoadSuccess: function (data) {
		// 		$('.show').linkbutton({ text: '查看详情', plain: true, iconCls: 'icon-search'});
	    //  }
    });

	/**
	 * 删除
	 */
	$("#removeBtn").click(function () {

		var rows = $('#tt').datagrid('getSelections');
		if (rows.length == 1) {
			var r = confirm("确定要删除此数据吗？");
			if (r){
				$.ajax({
					url:"/factoryOrder/deleteByPrimaryKey",
					type:"POST",
					data:{"id":rows[0].id},
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
	 * 添加
	 */
	$("#saveBtn").click(function () {

		$("#editForm").form("submit",{
			url:"/factoryOrder/insert",
			onSubmit : function() {
				// 判断表单的验证是否都通过
				return $("#editForm").form("validate");
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

	// 添加按钮
	$("#addBtn").click(function(){
		//每次打开时清空表单数据
		$("#editForm").form("clear");
		$("#win").window("open");
	});

// 添加的取消按钮
	$("#cancelBtn").click(function() {
		// 每次打开时清空表单数据
		$("#editForm").form("clear");
		$("#win").window("close");
		clearDiv($("#win"));
	});

	// 修改按钮打开编辑窗口，编辑客户的窗口默认是关闭的，所以需要给编辑窗口添加点击事件,此处绑定的是添加按钮的事件
	$("#editBtn").click(function(){

		// 获取选中行的 roleId
		var rows = $('#tt').datagrid('getSelections');
		if (rows.length == 1) {
			// 数据回显
			$("#updateForm").form("load","/factoryOrder/findfactoryOrderByid?id="+rows[0].id);
			$("#win1").window("open");
		} else {
			$.messager.alert('提示', '请选择一条记录！', 'warning');
			$("#win1").window("close");
		}

	});

	// 修改的取消按钮
	$("#cancelBtn1").click(function() {
		// 每次打开时清空表单数据
		$("#win1").window("close");
		clearDiv($("#win1"));
	});


}

// function showRow(){
// 	// alert(id);
// 	var rows = $('#tt').datagrid('getSelections');
// 	$("#editForm").form("load","factoryOrder/findAllOrder?id="+rows[0].id); //rows[0]表示勾选的那一行数据
// 	$("#win").window("open");
// }


