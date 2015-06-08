<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./files_ji/portal.min.css" type="text/css">
<link rel="stylesheet" href="./files_ji/portal.hdd.min.css"
	type="text/css">
<link rel="stylesheet" href="./files_ji/portal.content.min.css"
	type="text/css">
<link rel="stylesheet" href="./files_ji/portal.style.min.css"
	type="text/css">
<link rel="stylesheet" href="./files_ji/portal.basic.min.css"
	type="text/css">
<link rel="stylesheet" href="./files_ji/portal.base.min.css"
	type="text/css">
<link rel="stylesheet" href="./files_ji/animate.min.css" type="text/css">
<link rel="stylesheet" href="./files_ji/style_ji.css" type="text/css">

<script type="text/javascript" src="./files_ji/jquery-1.4.2.min.js"></script>

<title>就诊信息</title>
</head>
<body style="min-width: 980px;">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="g-wrapper">
		<div id="gc" style="min-height: 248px;">
			<div id="g-cfg" data-module="userinfo" class="gp-person g-container"
				data-fo-help="1">
				<div id="g-breadcrumb">
					<a href="#">首页</a> <span>&gt;&nbsp;就诊评价</span>
				</div>
				<div class="wrap">
					<div class="person-left">
						<p class="left-head js-user-avatar">
							<img src="./files_ji/young-f.png" alt="女"> <span><strong>姜栋煜</strong>欢迎来到智能挂号系统
							
						</p>
						<div class="clear"></div>
						<ul class="none-border">
							<li class="myorder"><a class="current myorder-a"
								href="diagnoseInfo.jsp"><span class="gi2 gi-order"></span>评价医生</a></li>
							<li class="myorder"><a class=" my-plus-a"
								href="evaluateDoctorHistroy.jsp"><span class="gi2 gi-order"></span>历史评价</a></li>
						</ul>

					</div>
					<div class="person-right">
						<div class="order-remind  g-clear">
							<span class="icon gi2 gi-order-big"></span>
							<div class="meta">
								<h1>评价医生</h1>
							</div>
						</div>
						<div class="order-list  border-left">
							<div id="errorTipsDv" class="g-tips-box-error tips-box hide">
								<span class="gi gi-error"></span> <span class="content"></span>
							</div>

							<div id="succTipsDv" class="g-tips-box-succ tips-box hide">
								<span class="gi gi-succ"></span> <span class="content"></span>
							</div>
							<table cellspacing="0" cellpadding="0">
								<caption></caption>
								<colgroup>
									<col width="144px;">
									<col width="160px;" class="">
									<col width="100px;">
									<col width="70px;">
									<col width="80px;" class="order-cost">
									<col width="130px;">
								</colgroup>
								<thead>
									<tr>
										<th>就诊日期</th>
										<th class="text-left">医生</th>
										<th>就诊人</th>
										<th class="text-right">花费</th>
										<th>状态</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>

									<tr>
										<td>2013-01-01</td>
										<td class="text-left"><a href="#" target="_blank">doctor1</a><a
											href="evaluate.jsp"
											class="gbn gbt-blue2 my-send fadeInDown animated"
											target="_blank"><i></i>评价就诊</a><br>
										<small> <a href="#" target="_blank">内科-风湿科</a><br>
										</small></td>
										<td>姜栋煜</td>
										<td class="text-right red-word">5.00元</td>
										<td>已完成</td>
										<td><a href="#">删除</a></td>
									</tr>
									<tr>
										<td>2013-01-01</td>
										<td class="text-left"><a href="#" target="_blank">doctor1</a><a
											href="evaluate.jsp"
											class="gbn gbt-blue2 my-send fadeInDown animated"
											target="_blank"><i></i>评价就诊</a><br>
										<small> <a href="#" target="_blank">内科-风湿科</a><br>
										</small></td>
										<td>姜栋煜</td>
										<td class="text-right red-word">5.00元</td>
										<td>已完成</td>
										<td><a href="#">删除</a></td>
									</tr>
								</tbody>
							</table>


							<div class="pagination">
								<div class="pagers">
									<form action="" name="qPagerForm">
										<input type="hidden" name="pageNo" value="1">


									</form>
								</div>
								<div class="clear"></div>
							</div>

						</div>

					</div>
					<div class="clear"></div>

				</div>
			</div>
			<div class="helpqs-list hide"></div>

		</div>
		<div id="gf">
			<div class="g-container">
				<div class="clear"></div>
				<p class="copyright">版权所有：软件工程综合实践小组&nbsp;&nbsp;&nbsp;</p>
			</div>
		</div>

	</div>
</body>
</html>