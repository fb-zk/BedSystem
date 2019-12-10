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
		rownumbers:true, 
		fit: true,
		url: '/bedInfo/queryList',
		queryParams: {},
		pagination: true, 
        striped: true,	//True 就把行条纹化。（即奇偶行使用不同背景色）
        pageSize: 20,
        singleSelect: false,
        nowrap : true,
		columns: [[

				 {title:'医院', field:'hospitalName', width: 160, align: 'center'},  
		         {title:'订单号', field:'orderId', width: 160, align: 'center'},
				 {title:'病床号', field:'bedNum', width: 100, align: 'center'},
				 {title:'陪护椅编号', field:'bedCode', width: 100, align: 'center'},
				 {title:'使用时间', field:'usedTime', width: 160, align: 'center',formatter: function(s) {
						var result;
						if (s > -1) {
							var hour = Math.floor(s / 3600);
							var min = Math.floor(s / 60) % 60;
							var sec = s % 60;
							if (hour < 10) {
								result = "0" + hour + ":";
							} else {
								result = hour + ":";

				{title:'省', field:'province', width: 60, align: 'center'},
				{title:'市', field:'city', width: 60, align: 'center'},
				{title:'县', field:'country', width: 60, align: 'center'},
				{title:'医院', field:'hospitalName', width: 160, align: 'center'},
				{title:'科室', field:'departmentName', width: 100, align: 'center'},
				{title:'陪护椅编号', field:'bedCode', width: 60, align: 'center'},
				//{title:'病床号', field:'bedNum', width: 100, align: 'center'},
				{title:'订单号', field:'orderId', width: 160, align: 'center'},
				{title:'用户手机号', field:'userPhone', width: 100, align: 'center'},
				{title:'开始时间', field:'startTime', width: 160, align: 'center'},
				{title:'使用时间', field:'usedTime', width: 100, align: 'center',formatter: function(s) {
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

				{title:'省', field:'province', width: 60, align: 'center'},
				{title:'市', field:'city', width: 60, align: 'center'},
				{title:'县', field:'country', width: 60, align: 'center'},
				{title:'医院', field:'hospitalName', width: 160, align: 'center'},
				{title:'科室', field:'departmentName', width: 100, align: 'center'},
				{title:'陪护椅编号', field:'bedCode', width: 60, align: 'center'},
				//{title:'病床号', field:'bedNum', width: 100, align: 'center'},
				{title:'订单号', field:'orderId', width: 160, align: 'center'},
				{title:'用户手机号', field:'userPhone', width: 100, align: 'center'},
				{title:'开始时间', field:'startTime', width: 160, align: 'center'},
				{title:'使用时间', field:'usedTime', width: 100, align: 'center', formatter: function(s) {
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
				 {title:'电量', field:'bedEnergy', width: 100, align: 'center'},
				 {title:'流量', field:'bedFlow', width: 100, align: 'center'},
				 {title:'状态', field:'bedState', width: 160, align: 'center',formatter: function(value) {
					 var str = "默认状态";
					 value = parseInt(value);
					 switch(value) {
						 case 0: str = "未知异常";break;
						 case 1: str = "开启";break;
						 case 2: str = "关闭";break;
						 case 3: str = "未启用";break;
						 case 4: str = "电量不足";break;
						 case 5: str = "流量不足";break;
						 case 6: str = "非法开启";break;
						 case 7: str = "电源关闭";break;
						 case 8: str = "维修中";break;
						 default: str = "数据异常";
					 }
					 return str;
				 }},
			]],
		
    });
}


