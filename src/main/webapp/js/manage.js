$(function(){
    initDataGrid();



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
        //启用工具条
        toolbar:"#tb",
        //显示行号
        rownumbers:true,
        //显示分页控件
        pagination: true,
        pageSize: 20,
        singleSelect: false,
        nowrap: true,
        //True 就把行条纹化。（即奇偶行使用不同背景色）
        striped: true,
        /*loadMsg: '正在加载中，请稍等... ',
        fitColumns:false,//宽度自适应
        ctrlSelect:true,//Ctrl+鼠标左键多选自适应
        checkOnSelect:true,//点击行的时候也可以选s中
        autoRowHeight:true,//高度自适应*/
        columns: [[

            {title:'医院名称', field:'name', width: 280, align: 'center'},
            {title:'医院等级', field:'hospitalLevel', width:80, align: 'center'},
            {title:'医院级别', field:'grade', width: 80, align: 'center',formatter:function(value){
                value = parseInt(value);
                switch (value){// 医院级别 1：甲，2：乙，3：丙，4：其他
                    case 1 : return "甲";
                    case 2 : return "乙";
                    case 3 : return "丙";
                    case 4 : return "其它";
                }
                }},

            {title:'机构性质', field:'hospitalNature', width: 80, align: 'center'},
            {title:'医院性质', field:'type', width: 120, align: 'center' , formatter:function(value){
                    value = parseInt(value);
                    switch (value){// 医院性质（01人民医院，02中医院，03妇幼保健院，04其它）
                        case 01 : return "人民医院";
                        case 02 : return "中医院";
                        case 03 : return "妇幼保健院";
                        case 04 : return "其它";
                    }
                }},
            {title:'医院地址', field:'address', width: 200, align: 'center'},
            {title:'销售人员', field:'salerName', width: 100, align: 'center'},

            {title:'联系方式', field:'salesTel', width: 200, align: 'center'},

            {title:'服务状态', field:'serviceState', width: 60, align: 'center' ,formatter:function(value){
                value = parseInt(value);
                switch (value){
                    case 0 :return "到期";
                    case 1 :return "服务中";
                }
                }},
            // {title:'病床号', field:'bedCode', width: 60, align: 'center'},
            // {title:'问题类型', field:'problemState', width: 60, align: 'center'},
            // {title:'问题描述', field:'problemDesc', width: 100, align: 'center'},
            // {title:'提交时间', field:'createTime', width: 160, align: 'center'},
            // {title:'联系人手机号', field:'userPhone', width: 100, align: 'center'},
            // {title:'审核状态', field:'checkState', width: 60, align: 'center', formatter: function(value) {
            //         var str = "默认状态";
            //         value = parseInt(value);
            //         switch(value) {
            //             case 1: str = "待审核";break;
            //             case 2: str = "已通过";break;
            //             case 3: str = "已拒绝";break;
            //             default: str = "数据异常";
            //         }
            //         return str;
            //     }},
            // {title:'维修状态', field:'maintainState', width: 60, align: 'center', formatter: function(value) {
            //         var str = "默认状态";
            //         value = parseInt(value);
            //         switch(value) {
            //             case 0: str = "未维修";break;
            //             case 1: str = "已维修";break;
            //             default: str = "数据异常";
            //         }
            //         return str;
            //     }},
            {title:'操作', field:'id', width: 150, align: 'center', formatter: function(value) {
                    var str = '/hospital/del?id=' + value;
                    var str1 = '/hospital/findById?id=' + value;
                    str = '<a href="' + str + '">删除</a>' + ' ' + '<a href="' + str1 + '">查看</a>'
                    return str;
                }},
        ]],

    });
}
