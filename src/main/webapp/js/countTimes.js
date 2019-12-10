$(function(){
	initDataGrid();
	
	$("#searchBtn").click(function() {
		var obj = {};
		obj["hospitalName"] = $("#bth9").val();
		obj["bedCode"] = $("#bth10").val();
		obj["departmentName"] = $("#bth11").val();
		// obj["counts"] = $("#bth12").val();
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
		url: '/count/counts',
		queryParams: {},
		pagination: true, 
        striped: true,	//True 就把行条纹化。（即奇偶行使用不同背景色）
        pageSize: 20,
        singleSelect: false,
        nowrap : true,
		columns: [[
				{title:'陪护椅编号', field:'bedCode', width: 220, align: 'center'},
				{title:'医院', field:'hospitalName', width: 220, align: 'center'},
				{title:'科室', field:'departmentName', width: 130, align: 'center'},
				{title:'添加时间', field:'addTime', width: 260, align: 'center'},
				{title:'使用次数', field:'counts', width: 140, align: 'center'},
				{title:'使用时间', field:'usedTime', width: 220, align: 'center',formatter: function(s) {
					var result;
					if (s > -1) {
						var hour = Math.floor(s / 3600);
						var min = Math.floor(s / 60) % 60;
						var sec = s % 60;
						if (hour < 10) {
							result = "0" + hour + ":";
					} else {
						result = hour + ":";
					}
					if (min < 10) {
						result += "0";
					}
					result += min + ":";
					if (sec < 10) {
						result += "0";
								}
								result += sec;
							}
							return result;
				}},
				{title:'费用', field:'cost', width: 160, align: 'center'},
			]],
		
    });
}

