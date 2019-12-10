$(function () {

    var baseUrl = 'http://192.168.1.13:8080/';

    //  登陆
    $('.login_btn').click(function () {
        login();
    });

    function login() {
        var username = $('username').val();
        var password = $('password').val();
        if (username == '') {
            $('#username').show();
            $('#username').text('用户名不能为空');
        }
        if (password == '') {
            $('#password').show();
            $('#password').text('密码不能为空');
        }

        $.ajax({
            type: "post",
            url: baseUrl + 'login',
            data: {
                username: username,
                password: password
            },
            success:function (data) {

            }

        });


    }


}