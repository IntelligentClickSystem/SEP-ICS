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

<title>历史评价</title>
</head>
<body style="min-width: 980px;">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="g-wrapper">
		<div id="gc" style="min-height: 248px;">
			<div id="g-cfg" data-module="userinfo" class="gp-person g-container"
				data-fo-help="1">
				<div id="g-breadcrumb">
					<a href="#">首页</a> <span>&gt;&nbsp;我的评价</span>
				</div>
				<div class="wrap">
					<div class="person-left">
						<p class="left-head js-user-avatar">
							<img src="./files_ji/young-f.png" alt="女"> <span><strong>范春雷医师</strong>欢迎来到智能挂号系统</span>
						</p>
						<div class="clear"></div>
						<ul class="none-border">
							<li class="my-plus"><a class=" my-plus-a"
								href="evaluateInfo.jsp"><span class="gi2 gi-plus"></span>评价医生</a></li>
							<li class="myorder"><a class="current myorder-a"
								href="evaluateInfoHistroy.jsp"><span class="gi2 gi-order"></span>历史评价</a></li>
						</ul>

					</div>
					<div class="person-right">
						<div class="order-remind  g-clear">
							<span class="icon gi2 gi-order-big"></span>
							<div class="meta">
								<h1>我的历史评价</h1>
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
									<col width="70px;">
									<col width="100px;">
									<col width="140px;">
									<col width="130px;">
								</colgroup>
								<thead>
									<tr>
										<th>编号</th>
										<th>时间</th>
										<th>内容</th>
										<th>评分</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>d0</td>
										<td>2014-12-28 08:10:55</td>
										<td>神医</td>
										<td>5*5*5</td>
									</tr>
									<tr>
										<td>d1</td>
										<td>2014-12-28 08:10:55</td>
										<td>神医</td>
										<td>5*5*5</td>
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