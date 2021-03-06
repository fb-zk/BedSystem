$(function(){
	initDataGrid();
	
	$("#searchbtn").click(function() {
		var obj = {};
		obj["startTime"] = $("#test1").val();
		obj["endTime"] = $("#test2").val();
		$("#tt").datagrid("load", obj);
	})
});
function formatTime(s) {
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
}

/**
 * 初始化datagrid
 */
function initDataGrid(){
	$('#tt').datagrid({
		rownumbers:true, 
		fit: true,
		url: '/count/hospital',
		queryParams: {},
		pagination: true,
        striped: true,	//True 就把行条纹化。（即奇偶行使用不同背景色）
        pageSize: 20,
        singleSelect: false,
        nowrap : true,
		columns: [[
				{title:'医院', field:'hospitalName', width: 300, align: 'center'},
				{title:'医院等级', field:'hospitalLevel', width: 260, align: 'center', formatter: function(value) {
					value = parseInt(value);
					switch(value) {
						case 0: return "其它";
						case 1: return "一级";
						case 2: return "二级";
						case 3: return "三级";
					}
				}},
				{title:'陪护椅数量', field:'amount', width: 260, align: 'center'},
				{title:'使用次数', field:'times', width: 260, align: 'center'},
				{title:'使用时长', field:'usedTime', width: 300, align: 'center', formatter: function(s) {
					return formatTime(s);
				}},
				{title:'使用费用', field:'usedCost', width: 220, align: 'center'},
		]],
    });
}

