<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
							<img src="./files_ji/young-m.png"/>
							<span><strong>doctor1</strong>欢迎来到数字医院智能系统</span>
						</p>
						<div class="clear"></div>
						<ul class="none-border">
							<li >
								<a href="./activatesOfDoctorAction" class="current myorder-a">
								   <span></span>待接诊列表
								</a></li>
							<li>
								<a href="./receiptsOfDoctorAction"><span></span>已接诊列表</a>
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
								<div class="check g-left">
									<label> 按科室筛选： </label>
									 <select name="orderState">
										<option value="0">全部</option>
										<option value="2">内科</option>
										<option value="3">外科</option>
										<option value="1">其它</option>
									</select>
								</div>
								<div class="picker g-left">
									<label> 预约时间： </label> 
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
										<th>预约就诊日期</th>
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
										<td></td>
										<td>普通号</td>									
									</tr>
									
								    <s:iterator value="#request.myNewLists" status="list">
										<tr>
										  <td><s:property value="receiptId" /></td>
										  <td><s:property value="receiptDate" /></td>
										  <td><s:property value="departmentNameString"/></td>
										  <td><s:property value="patientNameString"/></td>
										  <td><s:property value="doctorNameString"/></td>
										  <td><s:property value="doctorTypeString"/></td>
										</tr>
									
									</s:iterator>
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