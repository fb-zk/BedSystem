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
		var checkState = $btns.eq(0).data("val");
		var maintainState = $btns.eq(1).data("val");
		var key = $btns.eq(2).data("val");
		var value = $(this).prev().val();
		if(checkState != undefined) obj.checkState = checkState;
		if(maintainState != undefined) obj.maintainState = maintainState;
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
		url: '/maintain/queryList',
		queryParams: {},
		pagination: true, 
        striped: true,	//True 就把行条纹化。（即奇偶行使用不同背景色）
        pageSize: 20,
        singleSelect: false,
        nowrap : true,
		columns: [[
				 {title:'省', field:'province', width: 60, align: 'center'},
				 {title:'市', field:'city', width: 60, align: 'center'},
				 {title:'县', field:'country', width: 60, align: 'center'},
				 {title:'医院', field:'hospitalName', width: 160, align: 'center'},
				 {title:'科室', field:'departmentName', width: 60, align: 'center'},
		         {title:'订单号', field:'orderId', width: 160, align: 'center'},
				 {title:'病床号', field:'bedCode', width: 60, align: 'center'},
				 {title:'问题类型', field:'problemState', width: 60, align: 'center'},
				 {title:'问题描述', field:'problemDesc', width: 100, align: 'center'},
				 {title:'提交时间', field:'createTime', width: 160, align: 'center'},
				 {title:'联系人手机号', field:'userPhone', width: 100, align: 'center'},
				 {title:'审核状态', field:'checkState', width: 60, align: 'center', formatter: function(value) {
					 var str = "默认状态";
					 value = parseInt(value);
					 switch(value) {
						 case 1: str = "待审核";break;
						 case 2: str = "已通过";break;
						 case 3: str = "已拒绝";break;
						 default: str = "数据异常";
					 }
					 return str;
				 }},
				 {title:'维修状态', field:'maintainState', width: 60, align: 'center', formatter: function(value) {
					 var str = "默认状态";
					 value = parseInt(value);
					 switch(value) {
						 case 0: str = "未维修";break;
						 case 1: str = "已维修";break;
						 default: str = "数据异常";
					 }
					 return str;
				 }},
				 {title:'', field:'maintainId', width: 60, align: 'center', formatter: function(value) {
					 var str = '/maintain/queryById?id=' + value;
					 str = '<a href="' + str + '">查看</a>'
					 return str;
				 }},
			]],
		
    });
}


