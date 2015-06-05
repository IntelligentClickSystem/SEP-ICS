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
<link type="text/css" rel="stylesheet" href="./files_ji/styles.css">
<link type="text/css" rel="stylesheet"
	href="./files_ji/bootstrap.min.css">

<script>
        $(function() {
            
        });
        </script>
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
							<div class="row">
									<div class="span6">
										<div class="dataTables_filter" id="example_filter">
											<input type="text" placeholder="病人编号、姓名">
											<button class="btn btn-primary" style="margin-left: 10px">搜索</button>
										</div>
									</div>
									<div style="float:right">
										<button class="btn btn-success" onclick="window.location.href='addPatientDetail.jsp'">新添加 <i class="icon-plus icon-white"></i></button>
									</div>
									
							</div>
							<table>
								<caption></caption>
								<colgroup>
									<col width="50px;" />
									<col width="160px;" class="" />
									<col width="100px;" />
									<col width="70px;" />
									<col width="70px;" class="order-cost" />
									<col width="280px;" />
								</colgroup>
								<thead>
									<tr>
										<th>编号</th>
										<th>接诊卡号</th>
										<th>姓名</th>
										<th>性别</th>
										<th>年龄</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>rj12301100</td>
										<td>大鱼</td>
										<td>男</td>
										<td>22</td>
										<td>
											<button class="btn btn-primary" onclick="window.location.href='alterPatientDetail.jsp'">
												<i class="icon-pencil icon-white"></i>编辑</button>
										    <button class="btn btn-success" onclick="window.location.href='patientDetail.jsp'">
										    	<i class="icon-eye-open"></i>详情</button>
										</td>									
									</tr>
									<tr>
										<td>1</td>
										<td>rj12301100</td>
										<td>大鱼</td>
										<td>男</td>
										<td>22</td>
										<td>
											<button class="btn btn-primary">
												<i class="icon-pencil icon-white"></i>编辑</button>
										    <button class="btn btn-success" onclick="window.location.href='patientDetail.jsp'">
										    	<i class="icon-eye-open"></i>详情</button>
										</td>									
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
			<div class="clear"></div>
		</div>

	<div id="gf">
		<div class="g-container">
			<div class="clear"></div>
			<p class="copyright">版权所有：软件工程实践小组&nbsp;&nbsp;&nbsp;</p>
		</div>
	</div>
</body>
</html>