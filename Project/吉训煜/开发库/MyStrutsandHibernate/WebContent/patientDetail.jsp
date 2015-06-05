<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>接诊信息-个人中心</title>
<script type="text/javascript" src="./files_ji/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="./files_ji/jquery-ui.min.js"></script>
<script type="text/javascript" src="./files_ji/quiz.js"></script>
<link type="text/css" rel="stylesheet" href="./files_ji/style_ji.css" >
</head>
<body style="min-width: 980px;">
	<jsp:include page="header.jsp" />
	<div id="g-wrapper" class="g-wrapper ">
		<div id="gh">
			<div id="g-cfg" class="gp-person g-container">
				<div id="g-breadcrumb">
					<a href="#">首页</a>
					<span>&gt;&nbsp;录入病人信息</span>
				</div>
				<div class="wrap">
					<div class="person-left">
						<p class="left-head js-user-avatar">
							<img src="./files_ji/young-m.png" />
							<span>
								<strong>Admin</strong>
								欢迎来到数字医院智能系统
							</span>
						</p>
						<div class="clear"></div>
						<ul class="none-border">
							<li>
								<a href="doctorWorkData.jsp">
									<span></span>
									医生接诊数据
								</a>
							</li>
							<li>
								<a href="doctorSort.jsp" >
									<span></span>
									医生综合排名
								</a>
							</li>
							<li>
								<a href="patientInfoManage.jsp" class="current myorder-a">
									<span></span>
									病人信息管理
								</a>
							</li>
							<li>
								<a href="doctorInfoManage.jsp">
									<span></span>
									医生信息管理
								</a>
							</li>							
						</ul>
					</div>
					<div class="person-right">
						<div class="order-list  border-left">
							<div class="g-blue-title title">病人信息详情</div>
						
							<div id="userinfo-display" class="gfm-line">
								<ul>
									<li class="gfm-item liMob">
										<span class="gfm-left">姓名：</span>
										<label for="">吉训煜</label></li>
									<li class="gfm-item liMob">
										<span class="gfm-left">性别：</span>
										<label for="">男</label></li>
									<li class="gfm-item liMob">
										<span class="gfm-left">年龄：</span>
										<label for="">22</label></li>
									<li class="gfm-item">
										<span class="gfm-left">就诊卡号：</span>
										<label for="">rj12301100</label></li>
									<li class="gfm-item">
										<span class="gfm-left">住址：</span>
										<label for="">上园村3号</label></li>
									<li class="gfm-item">
										<span class="gfm-left">电话：</span>
										<label for="">18811442520</label></li>
									<li class="gfm-item">
										<span class="gfm-left">电子邮箱：</span>
										<label for="">12301100@bjtu.edu.cn</label></li>							
										
									<li class="auth-line g-clear">
										<div class="gfm-btn gfm-call">
											<a href="patientInfoManage.jsp" class="diagnosing-call">返回</a>
										</div>
									</li>							
								</ul>
							</div>



							<div class="pagination">
								<div class="pagers">
									<form action="" name="qPagerForm">
										<input type="hidden" name="pageNo" value="1" />
									</form>
								</div>
								<div class="clear"></div>
							</div>

						</div>
					</div>
					<div class="clear"></div>

				</div>
			</div>
		</div>
		<div id="gf">
			<div class="g-container">
				<div class="clear"></div>
				<p class="copyright">版权所有：软件工程实践小组&nbsp;&nbsp;&nbsp;</p>
			</div>
		</div>

	</div>
</body>
</html>