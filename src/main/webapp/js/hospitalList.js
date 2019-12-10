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
		url: '/hospital/queryAll',
		queryParams: {},
		pagination: true,
        striped: true,	//True 就把行条纹化。（即奇偶行使用不同背景色）
        pageSize: 20,
        singleSelect: false,
        nowrap : true,
		//toolbar: '#tb',
		columns: [[
				{title:'省', field:'province', width: 60, align: 'center'},
				{title:'市', field:'city', width: 60, align: 'center'},
				{title:'县', field:'country', width: 60, align: 'center'},
				{title:'医院', field:'name', width: 160, align: 'center'},
				{title:'医院地址', field:'address', width: 160, align: 'center'},
				{title:'医院等级', field:'lev', width: 60, align: 'center', formatter: function(value) {
					value = parseInt(value);
					switch(value) {
						case 0: return "其它";
						case 1: return "一级";
						case 2: return "二级";
						case 3: return "三级";
					}
				}},
				//{title:'病床号', field:'bedNum', width: 100, align: 'center'},
				{title:'机构性质', field:'nature', width: 60, align: 'center'},
				{title:'医院性质', field:'type', width: 60, align: 'center'},
				{title:'联系人', field:'tel', width: 100, align: 'center'},
				{title:'销售姓名', field:'salerName', width: 60, align: 'center'},
				{title:'服务状态', field:'serviceState', width: 60, align: 'center', formatter: function(value) {
					value = parseInt(value);
					switch(value) {
						case 0: return "到期";
						case 1: return "服务中";
					}
				}},
				{title:'操作', field:'id', width: 160, align: 'center', formatter: function(id) {
					var str = '<button type="button" class="btn btn-primary2" data-toggle="modal" data-target="#exampleModal2" data-whatever="@mdo" id="btn1">修改编辑</button>';
              		return str;
				}},
			]],
		
    });
}

