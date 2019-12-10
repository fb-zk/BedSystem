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
	
	// 获取医院
	$.ajax({
		url: "/hospital/queryAll",
		success: function(data) {
			var rows = data.rows;
			var str = "";
			for(var i = 0; i < rows.length; i++) {
				str += '<option value="' + rows[i].id + '">' + rows[i].name + '</option>';
			}
			console.log($("#hospital"));
			$("#hospital").html(str);
		}
	})
	
	// 获取科室
	$("#hospital").change(function() {
		$.ajax({
			url: "/hospital/findDepartment?id=" + $("#hospital").val(),
			success: function(data) {
				var rows = data.data;
				var str = "";
				for(var i = 0; i < rows.length; i++) {
					str += '<option value="' + rows[i].id + '">' + rows[i].name + '</option>';
				}
				$("#department").html(str);
			}
		})
	})
	
	// 提交绑定
	$("#submit").click(function() {
		var params = "?hospitalId=" + $("#hospital").val();
		params += "&departmentId=" + $("#department").val();
		params += "&chaperonageBedCode=" + $("#bedCode").val();
		params += "&roomId=" + $("#roomId").val();
		params += "&bedAddress=" + $("#bedAddress").val();
		window.location = "/bedInfo/bind" + params;
	})
});

/**
 * 初始化datagrid
 */
function initDataGrid(){
	$('#tt').datagrid({
		rownumbers:true, 
		fit: true, 
		url: '/bedInfo/findList',
		queryParams: {},
		pagination: true, 
        striped: true,	//True 就把行条纹化。（即奇偶行使用不同背景色）
        pageSize: 20,
        singleSelect: false,
        nowrap : true,
		columns: [[
				{title:'医院名称', field:'hospitalName', width: 280, align: 'center'},
				{title:'陪护椅编号', field:'bedCode', width: 300, align: 'center'},
				{title:'病床号', field:'roomId', width: 180, align: 'center'},
				{title:'位置', field:'bedAddress', width: 280, align: 'center'},
				{title:'操作', field:'id', width: 320, align: 'center', formatter: function(id) {
					var str = "/bedInfo/unbind?id=" + id;
					str = '<a href="' + str + '">解绑</a>';
					return str;
				}},
		]]
    });
}

