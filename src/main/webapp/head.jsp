<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<nav class="navbar navbar-default navbar-fixed-top">

	<div class="container-fluid-left">
		<li class="dropdown " style="font-size: 27px;" id="bth01">
			<i id="icon">
				<img src="../images/logo.png" alt="">

			</i>

			<a
			href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
			aria-haspopup="true" aria-expanded="false" style="color: #067F6B;">陪护椅后台管理
		</a>
		</li>
		<!-- Brand and toggle get grouped for better mobile display -->
		<!-- 消息中心 -->
		<div class="Administrator">
			<i id="icon01" class="incon001"></i>
			<a href="#" style="font-size:22px;
                    font-family:PingFang SC;
                    font-weight:500; color:#000000">

				消息中心</a>
		</div>
		<!-- 消息中心结束 -->


		<!-- 管理员开始 -->
		<li class="dropdown" style="font-size: 20px;" id="bth02"><i
			id="icon02" class="incon002"></i> <a href="#" class="dropdown-toggle"
			data-toggle="dropdown" role="button" aria-haspopup="true"
			aria-expanded="false" style="color: #000000; font-size: 22px;">
				管理员
				<span class="glyphicon glyphicon-menu-down"></span>
		</a>
			<ul class="dropdown-menu">
				<li><a href="#">修改密码</a></li>


				<li><a href="/loginOut">退出登录</a></li>
			</ul></li>
</nav>
<style>
	{
		position: absolute;
		left: 100px;
		top: 30px;
	}
	{
		position: absolute;
		left: -70px;
		top: 10px;
	}
	.dropdown-menu{
		margin: 15px 0 0;
	}
</style>

<script src="./plugs/easyui/jquery.easyui.min.js"></script>
<script src="./plugs/easyui/locale/easyui-lang-zh_CN.js"></script>
<script>

	// $("#loginOut").click(function () {
	//
	// 	$("#addForm").form("submit",{
	// 		url:"/manager/user/insertInfo",
	// 		onSubmit : function() {
	// 			// 判断表单的验证是否都通过
	// 			return $("#addForm").form("validate");
	// 		},
	// 		success:function (params){
	//
	// 			alert("保存成功");
	// 			window.location.reload();
	// 		},
	// 		error:function(params){
	// 			alert("保存失败")
	// 		}
	//
	// 	})
	// })

</script>