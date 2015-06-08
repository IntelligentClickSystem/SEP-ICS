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
<link rel="stylesheet" href="./files_ji/animate.min.css" type="text/css">
<link rel="stylesheet" href="./files_ji/style_ji.css" type="text/css">

<script type="text/javascript" src="./files_ji/jquery-1.4.2.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#quiz-container").jquizzy({
        
    });
});
</script>
<title>智能挂号系统</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="g-cfg" data-module="userinfo" class="gp-person g-container">
		<div id="g-breadcrumb">
			<a href="">首页</a> <span><a href="">&gt;&nbsp;内科</a></span><span>&gt;&nbsp;预约接诊时间</span>
		</div>
		<div class="wrap">
			<div class="g-blue-title title">请选择您要预约的就诊时间</div>
			<div id="g-cfg" class="hos-dep-wrap gp-private"
				data-loadpop="default" data-module="doctor">
				<div class="hd-wrap-content g-clear"
					style="margin: auto auto 40px 130px">
					<div class="g-grid2-l">
						<div class="content-wrap" id="js-sche1">
							<div class="recom-hosdep-title">内科</div>
							<div class="g-schedule g-clear">
								<div class="top  g-clear">
									<div class="g-left">
										<p class="time">
											可预约班次将在每日<span>07:30</span>更新
										</p>
									</div>
								</div>
								<div class="table-mask g-left">
									<table>
										<colgroup>
											<col width="47px">
											<col width="58px">
											<col width="58px">
											<col width="58px">
											<col width="58px">
											<col width="58px">
											<col width="58px">
											<col width="58px">
											<col width="47px">
										</colgroup>
										<thead>
											<tr>
												<th class="on"><a href="javascript:;"
													class="gi5 g-schedule-pre prev" style="display: none;"></a></th>
												<th><span class="date">05/20</span>周三</th>
												<th><span class="date">05/21</span>周四</th>
												<th><span class="date">05/22</span>周五</th>
												<th><span class="date">05/23</span>周六</th>
												<th><span class="date">05/24</span>周日</th>
												<th><span class="date">05/25</span>周一</th>
												<th><span class="date">05/26</span>周二</th>
												<th><a href="javascript:;"
													class="gi5 g-schedule-next next" style="display: none;"></a></th>
											</tr>
										</thead>
										<tbody>
											<tr class="first">
												<th>上</th>
												<td class="odd"></td>
												<td></td>
												<td class="odd"></td>
												<td></td>
												<td class="odd"></td>
												<td></td>
												<td class="odd"><span class="schedule-box"> <a
														href="reservation.jsp" class="orderit login"
														target="_blank"><span>预约</span> </a>
												</span></td>
												<th>&nbsp;</th>
											</tr>
											<tr>
												<th>下</th>
												<td class="odd"></td>
												<td><span class="schedule-box"><a
														href="javascript:;"><span>已满</span></a></span></td>
												<td class="odd"></td>
												<td></td>
												<td class="odd"></td>
												<td></td>
												<td class="odd"><span class="schedule-box"> <a
														href="reservation.jsp" class="orderit login"
														target="_blank"><span>预约</span> </a>
												</span></td>
												<th>&nbsp;</th>
											</tr>
										</tbody>
									</table>
									<div class="fast-order"
										style="display: block; margin-top: 20px">
										如需在特定时间和特定医生就诊， <a href="#" class="gbs gbt-blue1">查看科室专家医生</a>
										预约同科室的专家医生
									</div>
								</div>
								<div class="intro g-right">
									<div class="intro-title">
										<span>预约规则</span>
									</div>
									<div class="intro-content introduce-rule g-clear">
										<div class="content-has hide" style="display: block;">
											<span class="content-top">医院规则：<br>如遇专家班次停诊会以短信通知，请保持手机畅通<br>可预约班次更新时间：每日7:30更新<br>1、接受18周岁以下患者预约<br>2、需要预约有效证件及订单号取号<br>3、预约周期：1至7天内<br>4、取消时限：提前1日12：00前<br></span>
											<a class="to-left g-more g-right" href="#">更多<i></i></a> <span
												class="more-box hide" style="display: none;"> <span
												class="more-content">医院规则：<br>如遇专家班次停诊会以短信通知，请保持手机畅通<br>可预约班次更新时间：每日7:30更新<br>1、接受18周岁以下患者预约<br>2、需要预约有效证件及订单号取号<br>3、预约周期：1至7天内<br>4、取消时限：提前1日12：00前<br></span>
												<a
												href="http://www.guahao.com/expert/recommend/efdb9810-df0b-4ab9-94ac-ba81705439de#"
												class="gbs gbt-blue  more-up">收起</a>
											</span>
										</div>
										<span class="content-no hide"> 暂无 </span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="g-blue-title title">如果您想预约专家号，以下是为您推荐的专家医生</div>
		<div class="g-box doctor-box">

			<div class="content">
				<ul>
					<li class="g-clear  bx-clone"><a class="img"
						href="./images/grid1.png" target="_blank"
						onmousedown="return _smartlog(this,&#39;DOC&#39;)"><img
							src="./images/grid1.png" onerror="this.src=&#39;"></a>
						<dl>
							<dt>
								<a href="doctorInfo.jsp?id='+value.id;" target="_blank"
									onmousedown="return _smartlog(this,&#39;DOC&#39;)">大鱼</a>&nbsp;
								<span class="level">主治医师</span>
							</dt>
							<dd class="orange">内科</dd>
						</dl>
						<div class="clear"></div>
						<div class="bottom">
							<i class="top"></i> <i class="left flag"></i>我是神医，你信吗？ <i
								class="right flag"></i>
						</div></li>

					<li class="g-clear  bx-clone"><a class="img"
						href="./images/grid1.png" target="_blank"
						onmousedown="return _smartlog(this,&#39;DOC&#39;)"><img
							src="./images/grid1.png" onerror="this.src=&#39;"></a>
						<dl>
							<dt>
								<a href="doctorInfo.jsp?id='+value.id;" target="_blank"
									onmousedown="return _smartlog(this,&#39;DOC&#39;)">大鱼</a>&nbsp;
								<span class="level">主治医师</span>
							</dt>
							<dd class="orange">内科</dd>
						</dl>
						<div class="clear"></div>
						<div class="bottom">
							<i class="top"></i> <i class="left flag"></i>我是神医，你信吗？ <i
								class="right flag"></i>
						</div></li>

					<li class="g-clear  bx-clone"><a class="img"
						href="./images/grid1.png" target="_blank"
						onmousedown="return _smartlog(this,&#39;DOC&#39;)"><img
							src="./images/grid1.png" onerror="this.src=&#39;"></a>
						<dl>
							<dt>
								<a href="doctorInfo.jsp?id='+value.id;" target="_blank"
									onmousedown="return _smartlog(this,&#39;DOC&#39;)">大鱼</a>&nbsp;
								<span class="level">主治医师</span>
							</dt>
							<dd class="orange">内科</dd>
						</dl>
						<div class="clear"></div>
						<div class="bottom">
							<i class="top"></i> <i class="left flag"></i>我是神医，你信吗？ <i
								class="right flag"></i>
						</div></li>

					<li class="g-clear  bx-clone"><a class="img"
						href="./images/grid1.png" target="_blank"
						onmousedown="return _smartlog(this,&#39;DOC&#39;)"><img
							src="./images/grid1.png" onerror="this.src=&#39;"></a>
						<dl>
							<dt>
								<a href="doctorInfo.jsp?id='+value.id;" target="_blank"
									onmousedown="return _smartlog(this,&#39;DOC&#39;)">大鱼</a>&nbsp;
								<span class="level">主治医师</span>
							</dt>
							<dd class="orange">内科</dd>
						</dl>
						<div class="clear"></div>
						<div class="bottom">
							<i class="top"></i> <i class="left flag"></i>我是神医，你信吗？ <i
								class="right flag"></i>
						</div></li>
				</ul>
			</div>
		</div>
		<div class="clear"></div>
	</div>

	<div class="helpqs-list">
		<div id="gf">
			<div class="g-container">
				<div class="clear"></div>
				<p class="copyright">版权所有：软件工程实践小组&nbsp;&nbsp;&nbsp;</p>
			</div>
		</div>
	</div>
</body>
</html>