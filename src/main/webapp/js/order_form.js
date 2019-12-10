$(function(){
    initDataGrid();

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
        url: '/count/order',
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
            {title:'陪护椅编号', field:'bedCode', width: 100, align: 'center'},
            {title:'科室', field:'departmentName', width: 100, align: 'center'},
            {title:'订单号', field:'orderId', width: 160, align: 'center'},
            {title:'用户手机号', field:'userPhone', width: 100, align: 'center'},
            {title:'开始时间', field:'startTime', width: 160, align: 'center'},
            {title:'结束时间', field:'endTime', width: 160, align: 'center'},
            {title:'使用时长', field:'serviceTime', width: 80, align: 'center', formatter: function(s) {
                    return formatTime(s);
                }},
            {title:'使用费用', field:'cost', width: 60, align: 'center'},
            {title:'支付状态', field:'payState', width: 60, align: 'center', formatter: function(value) {
                    value = parseInt(value);
                    switch(value) {
                        case 0: return "已完成";
                        case 1: return "未支付";
                        case 2: return "待审核";
                        case 3: return "使用中";
                    }
                }},
            {title:'总时长', field:'sumServiceTime', width: 0, hidden: true, formatter: function(s) {
                    var str = formatTime(s);
                    $(".tongjitime input").val("总时长：" + str);
                }},
            {title:'总费用', field:'sumCost', width: 60, hidden: true, formatter: function(value) {
                    $(".cost input").val("总费用：" + value + "元");
                }},
        ]],

    });
}