<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<div class="menuleft">
	<ul class="nav nav-stacked">
		<li role="presentation">
			<a href="#" style="font-size: 22px" data-toggle="collapse" data-target="#list0">
				<i class="icno003" id="icno003"> </i>
				<span class="gailan">陪护椅管理</span>
			</a>
			<ul id="list0" class="collapse ">
				<li class="active"><span class="circle" id="zhanqi"></span> <a href="${ctx }/chaperoneInfo.jsp" style=> 陪护椅信息 </a></li>
				<%-- <li><span class="circle"></span> <a href="${ctx }/bedBind.jsp">绑定</a></li> --%>
				<li class="active"><span class="circle" id="zhanqi"></span> <a href="${ctx }/factory.jsp" style=> 厂商信息 </a></li>
				<li class="active"><span class="circle" id="zhanqi"></span> <a href="${ctx }/factoryOrder.jsp" style=> 厂商订单 </a></li>
			</ul></li>
		<!-- 侧边栏选项 -->
		<li role="presentation" class="active">
			<!-- 选项控制data-target对应的显隐 -->
			<a href="#" data-toggle="collapse" data-target="#list" style="font-size: 22px">
				<i class="icno004" id="icno004"></i>
				<span class="gailan1">医院管理</span>
			</a>
			<!-- 隐藏的详细菜单 -->
			<ul id="list" class="collapse ">
				<li class="active"><span class="circle"></span> <a href="${ctx }/manage.jsp" style=> 信息录入 </a></li>
				<li><span class="circle"></span> <a href="${ctx }/billing.jsp">计费管理</a></li>
			</ul>
		</li>
		<li role="presentation">
			<a href="#" style="font-size: 22px" data-toggle="collapse" data-target="#list01">
				<i class="icno005" id="icno005"></i>
				<span class="gailan2">监测管理</span>
			</a>
			<ul id="list01" class="collapse ">
				<li class="active">
					<span class="circle"></span>
					<a href="${ctx }/bedMonitor.jsp" style=> 监测管理 </a>
				</li>
			</ul>
		</li>
		<li>
			<a href="#" data-toggle="collapse" data-target="#list7" style="font-size:22px">
				<i class="icno010" id="icno010"></i>
				<span class="gailan6">会员管理</span>
			</a>
			<!-- 隐藏的详细菜单 -->
			<ul id="list7" class="collapse ">
				<li class="active" style="font-size:19px">
					<span class="circle"></span>
					<a href="${ctx}/member.jsp">
						会员管理
					</a>
				</li>
			</ul>
		</li>

		<li>
			<a href="#" data-toggle="collapse" data-target="#list8" style="font-size:22px">
				<i class="icno011" id="icno011"></i>
				<span class="gailan6">订单管理</span>
			</a>
			<!-- 隐藏的详细菜单 -->
			<ul id="list8" class="collapse ">
				<li class="active" style="font-size:19px">
					<span class="circle"></span>
					<a href="${ctx}/order_form.jsp">
						订单信息
					</a>
				</li>

				<li class="active" style="font-size:18px">
					<span class="circle"></span>
					<a href="${ctx}/biling_info.jsp">
						结算信息
					</a>
				</li>
			</ul>
		</li>









		<li role="presentation" class="active">
			<!-- 选项控制data-target对应的显隐 -->
			<a href="#" data-toggle="collapse" data-target="#list2" style="font-size: 22px">
				<i class="icno006" id="icno006"></i>
				<span class="gailan3">问题反馈</span>
			</a>
			<!-- 隐藏的详细菜单 -->
			<ul id="list2" class="collapse ">
				<li class="active">
					<span class="circle"></span>
					<a href="${ctx }/bedProblemList.jsp"> 问题反馈 </a>
				</li>
			</ul>
		</li>
		<li role="presentation" class="active">
			<!-- 选项控制data-target对应的显隐 -->
			<a href="#" data-toggle="collapse" data-target="#list3" style="font-size: 22px">
				<i class="icno007" id="icno007"></i>
				<span class="gailan4">统计分析</span>
			</a>
			<!-- 隐藏的详细菜单 -->
			<ul id="list3" class="collapse ">
				<li class="active"><span class="circle"></span> <a href="${ctx }/countTimes.jsp"> 使用次数统计 </a></li>
				<li><span class="circle"></span> <a href="${ctx }/countOrder.jsp">订单统计</a></li>
				<li><span class="circle"></span> <a href="${ctx }/countArea.jsp">地区统计</a></li>
				<li><span class="circle"></span> <a href="${ctx }/countNature.jsp">医院性质统计</a></li>
				<li><span class="circle"></span> <a href="${ctx }/countLevel.jsp">医院等级统计</a></li>
				<li><span class="circle"></span> <a href="${ctx }/countDepartment.jsp">科室统计</a></li>
				<li><span class="circle"></span> <a href="${ctx }/countDate.jsp">时间段统计</a></li>
				<li><span class="circle"></span> <a href="">入驻医院统计</a></li>
				<li><span class="circle"></span> <a href="${ctx }/countBedUser.jsp">消费者统计</a></li>
			</ul>
		</li>
		<li>
			<a href="#" data-toggle="collapse" data-target="#list6" style="font-size: 22px">
				<i class="icno009" id="icno009"></i>
				<span class="gailan6">系统管理</span>
			</a>
			<!-- 隐藏的详细菜单 -->
			<ul id="list6" class="collapse ">
				<li class="active" style="font-size: 18px">
					<span class="circle"></span>
					<a href="${ctx }/role.jsp"> 角色管理 </a>
				</li>
				<li>
					<span class="circle"></span>
					<a href="${ctx }/sysUser.jsp">用户管理</a>
				</li>
				<li>
					<span class="circle"></span>
					<a href="${ctx }/sales_management.jsp">销售人员管理</a>
				</li>
			</ul>
		</li>



	</ul>
</div>