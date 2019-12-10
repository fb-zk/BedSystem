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
		url: '/count/bedUser',
		queryParams: {},
		pagination: true,
        striped: true,	//True 就把行条纹化。（即奇偶行使用不同背景色）
        pageSize: 20,
        singleSelect: false,
        nowrap: true,
		columns: [[
				{title:'账号', field:'username', width: 280, align: 'center'},
				{title:'手机号', field:'phone', width: 280, align: 'center'},
				{title:'用户姓名', field:'name', width: 240, align: 'center'},
				{title:'创建时间', field:'recordTime', width: 380, align: 'center'},
				{title:'', field:'userId', width: 180, align: 'center', formatter: function(value) {
					var str = "/count/bedUser/" + value;
					str = '<a href="' + str + '">查看</a>';
					return str;
				}},
		]],
    });
}

