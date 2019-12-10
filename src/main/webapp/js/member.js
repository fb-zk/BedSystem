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

            {title:'账号', field:'username', width: 180, align: 'center'},
            {title:'手机号', field:'phone', width: 180, align: 'center'},
            {title:'用户姓名', field:'name', width: 180, align: 'center'},
            {title:'创建时间', field:'recordTime', width: 220, align: 'center'},
            {title:'押金状态', field:'cashPledgeState', width: 180, align: 'center' ,formatter: function (value) {
                    value = parseInt(value);
                    switch (value){//押金状态（未支付：0   已支付：1）
                        case 0 :return "未支付";
                        case 1 :return "已支付";
                    }
                }},
            {title:'余额', field:'balance', width: 180, align: 'center'},
            {title:'详情', field:'userId', width: 100, align: 'center' ,formatter:function(value){
                var str ='/count/findUserId?userId=' + value;
                str = '<a href=" ' + str + ' ">详情</a>';
                    return str;
                }}


            // {title:'操作', field:'id', width: 60, align: 'center', formatter: function(value) {
            // 	var str = '/manager/user/del?id=' + value;
            // 	str = '<a href="' + str + '">删除</a>'
            // 	return str;
            // }},

        ]]
    });
}