$(function(){
	initDataGrid();
	
	$("#sousuo").click(function() {
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
		url: '/count/date',
		queryParams: {},
		pagination: true,
        striped: true,	//True 就把行条纹化。（即奇偶行使用不同背景色）
        pageSize: 20,
        singleSelect: false,
        nowrap: true,
		columns: [[
				/*{title:'年', field:'year', width: 100, align: 'center'},
				{title:'月', field:'month', width: 100, align: 'center', hidden: true, formatter: function(value) {
					if(value > 0) $("#tt").datagrid('showColumn', 'month')
					return value;
				}},
				{title:'日', field:'day', width: 100, align: 'center', hidden: true, formatter: function(value) {
					if(value > 0) $("#tt").datagrid('showColumn', 'day')
					return value;
				}},*/
			{title:'投入陪护椅数量', field:'quantity', width: 280, align: 'center'},
				{title:'使用次数', field:'times', width: 380, align: 'center'},
				{title:'使用时长', field:'usedTime', width: 380, align: 'center', formatter: function(s) {
					return formatTime(s);
				}},
				{title:'使用费用', field:'usedCost', width: 380, align: 'center'},

		]],
		/*onDblClickRow: function(index) {
			var row = $("#tt").datagrid('getSelections')[0];
			var obj = {};
			obj["year"] = row.year;
			if(row.month > 0) {
				if(row.month < 10) obj["month"] = "0" + row.month;
				else obj["month"] = "" + row.month;
			}
			$("#tt").datagrid("load", obj);
		}*/
    });
}

