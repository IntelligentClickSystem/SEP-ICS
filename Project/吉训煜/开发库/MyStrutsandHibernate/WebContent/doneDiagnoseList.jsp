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
					<a href="#">首页</a> <span>&gt;&nbsp;我的接诊信息</span>
				</div>
				<div class="wrap">
					<div class="person-left">
						<p class="left-head js-user-avatar">
							<img src="./files_ji/young-m.png" alt="男" />
							<span><strong>doctor1</strong>欢迎来到数字医院智能系统</span>
						</p>
						<div class="clear"></div>
						<ul class="none-border">
							<li class="myorder">
								<a href="unfinishedDiagnoseList.jsp">
								   <span></span>待接诊列表
								</a></li>
							<li>
								<a class="current myorder-a" href="doneDiagnoseList.jsp"><span></span>已接诊列表</a>
							</li>
							<li>
								<a href="diagnosing.jsp"><span></span>开始接诊</a>
							</li>
						</ul>
					</div>
					<div class="person-right">
						<div class="order-list  border-left">
							<form id="orderFilter" action="#" class="g-clear">
								<input type="hidden" name="pageNo" value="1" />							
								<div class="picker g-left">
									<label> 按接诊时间筛选： </label> 
										<span class="g-datepicker"> 
											<input type="date" id="startTime" name="shiftDateBegin"
												class="text hasDatepicker" style="width: 135px;"/>
										 </span>
									<span>-</span> 
									<span class="g-datepicker"> 
										<input type="date" id="endTime" name="shiftDateEnd"
											class="text hasDatepicker" style="width: 135px;"/> 
									</span>
								</div>
								<div class="action g-left">
									<a class="gb gb-grey2" href="#" id="sureBt">
									  <span class="gb-right"><span class="gb-text-btn">确定</span></span>
									</a>
								</div>
							</form>
							<table>
								<caption></caption>
								<colgroup>
									<col width="144px;" />
									<col width="160px;" class="" />
									<col width="100px;" />
									<col width="70px;" />
									<col width="80px;" class="order-cost" />
									<col width="130px;" />
								</colgroup>
								<thead>
									<tr>
										<th>挂号单</th>
										<th>就诊日期</th>
										<th>科室</th>
										<th>就诊人</th>
										<th>接诊医生</th>
										<th>挂号类型</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>ghd001</td>
										<td>2015-05-20</td>
										<td>内科</td>
										<td>大鱼</td>
										<td>华佗</td>
										<td>专家号</td>									
									</tr>
									
									<tr>
										<td>ghd001</td>
										<td>2015-05-20</td>
										<td>内科</td>
										<td>大鱼</td>
										<td>华佗</td>
										<td>专家号</td>									
									</tr>
									
									<tr>
										<td>ghd001</td>
										<td>2015-05-20</td>
										<td>内科</td>
										<td>大鱼</td>
										<td>华佗</td>
										<td>专家号</td>									
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