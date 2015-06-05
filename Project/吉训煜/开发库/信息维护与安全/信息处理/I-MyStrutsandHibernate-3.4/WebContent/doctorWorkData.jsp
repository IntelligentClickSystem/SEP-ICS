<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>接诊信息-个人中心</title>	
<script type="text/javascript" src="./files_ji/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="./files_ji/jquery-ui.min.js"></script>
<script type="text/javascript" src="./files_ji/quiz.js"></script>
<link type="text/css" rel="stylesheet" href="./files_ji/style_ji.css">
</head>
<body style="min-width: 980px;">
	<jsp:include page="header.jsp" />
	<div id="g-wrapper" class="g-wrapper ">
		<div id="gh">
			<div id="g-cfg" class="gp-person g-container">
				<div id="g-breadcrumb">
					<a href="#">首页</a> <span>&gt;&nbsp;医生排名</span>
				</div>
				<div class="wrap">
					<div class="person-left">
						<p class="left-head js-user-avatar">
							<img src="./files_ji/young-m.png"/>
							<span><strong>Admin</strong>欢迎来到数字医院智能系统</span>
						</p>
						<div class="clear"></div>
						<ul class="none-border">
							<li>
								<a href="doctorWorkData.jsp" class="current myorder-a">
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
								<a href="patientInfoManage.jsp">
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
							<form id="orderFilter" action="#" class="g-clear">
								<input type="hidden" name="pageNo" value="1" />
								<div class="check g-left">
									<label> 按科室筛选： </label>
									 <select name="orderState">
										<option value="0">内科</option>
										<option value="2">儿科</option>
										<option value="3">外科</option>
										<option value="1">其它</option>
									</select>
								</div>
							</form>
							<table>
								<caption></caption>
							
								<thead>
									<tr>
										<th>序号</th>
										<th>医生</th>
										<th>科室</th>
										<th>月接诊数</th>
										<th>综合得分</th>										
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td><a href="doctorInfo.jsp" >大鱼</a></td>
										<td>内科</td>
										<td>98</td>
										<td>100</td>									
									</tr>
									
									<tr>
										<td>2</td>
										<td><a href="doctorInfo.jsp" >中鱼</a></td>
										<td>内科</td>
										<td>97</td>	
										<td>99</td>							
									</tr>
									
									<tr>
										<td>3</td>
										<td><a href="doctorInfo.jsp" >小鱼</a></td>
										<td>内科</td>
										<td>96</td>
										<td>100</td>								
									</tr>
									
									<tr>
										<td>4</td>
										<td><a href="doctorInfo.jsp" >虾米</a></td>
										<td>内科</td>
										<td>95</td>	
										<td>100</td>							
									</tr>
								</tbody>
							</table>


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