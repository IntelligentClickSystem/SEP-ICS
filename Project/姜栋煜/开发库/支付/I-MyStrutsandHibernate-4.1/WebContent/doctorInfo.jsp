<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="http://img.guahao.cn/favicon.ico">
<link rel="stylesheet" href="./files_ji/portal.min.css" type="text/css">
<link rel="stylesheet" href="./files_ji/portal.hdd.min.css"
	type="text/css">
<link rel="stylesheet" href="./files_ji/portal.content.min.css"
	type="text/css">
<link rel="stylesheet" href="./files_ji/portal.style.min.css"
	type="text/css">
<link rel="stylesheet" href="./files_ji/animate.min.css" type="text/css">
<link rel="stylesheet" href="./files_ji/style.css" type="text/css">
<title>智能挂号系统</title>
<script type="text/javascript">
$(function(){
	$(".table-mask .g-left").doSomething({
	
	});
});
</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="gc" style="min-height: 248px;" >
		<div id="g-cfg" data-module="userinfo" class="gp-person g-container"
			data-fo-help="1">
			<div id="g-breadcrumb">
				<a href="#">首页</a> <span>&gt;&nbsp;<a href="#">科室</a></span><span>&gt;&nbsp;某某</span>
			</div>

			<div id="g-cfg" class="hos-dep-wrap gp-private"
				data-loadpop="default" data-module="doctor">
				<div class="g-container">
					<div class="hd-wrap-top g-clear">
						<div class="hd-base-info g-left">
							<h1>
								杨根兴 <label> 副主任医师 / 教授 </label>
							</h1>
							<img
								src="./医生双坐诊 _ 挂号网_files/elarge_efdb9810-df0b-4ab9-94ac-ba81705439de.jpg"
								alt="杨根兴" class="g-left expert-img">
							<div class="introduce g-left">
								<p class="introduce-skill">
									<label>擅长：</label> <span>发育性髋脱位、先天性马蹄内翻足、创伤和其他各种肢体畸形，专治骨关节创伤、神经损伤、先天性骨关节畸形、先天性髋关节脱位、骨肿瘤（如硬纤维瘤、陈旧性孟氏骨折）的治疗</span>
								</p>
								<p class="introduce-word">
									<label>简介：</label> <span>1963年毕业于上海第二医科大学。主要医疗专长：髋关节脱位、先天性畸形、脑性瘫痪、创伤性骨折、骨关节感染等疾病的诊治。</span>
								</p>
							</div>
						</div>
				    </div>
		
						
				<div class="hd-wrap-content g-clear">
					<div class="g-grid2-l">
						<div class="content-wrap" id="js-sche1"
							data-eid="efdb9810-df0b-4ab9-94ac-ba81705439de" data-did="">
							<div class="recom-hosdep-title">儿骨科</div>
							<div class="g-schedule g-clear">
								<div class="top  g-clear">
									<div class="g-left">
										<p class="time hide" style="display: block;">
											可预约班次将在每日<span>07:30</span>更新
										</p>
										<div class="check-dept hide" style="display: none;">
											<label>该医生在多个科室坐诊，您当前选择的是：</label> <select id="js-depts"></select>
										</div>
									</div>
								</div>
								<div class="table-mask g-left">
									<table cellspacing="0" cellpadding="0">
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
												<td class="odd">
												    <span class="schedule-box">
														<a href="reservation.jsp" class="orderit login" target="_blank"><span>预约</span>
														</a>
													</span>
												<th>&nbsp;</th>
											</tr>
											<tr>
												<th>下</th>
												<td class="odd"></td>
												<td><span class="schedule-box"><a
														href="javascript:;" 
														><span>已满</span></a></span></td>
												<td class="odd"></td>
												<td></td>
												<td class="odd"></td>
												<td></td>
												<td class="odd">
													<span class="schedule-box">
														<a href="reservation.jsp" class="orderit login" target="_blank"><span>预约</span>
														</a>
													</span>
												</td>
												<th>&nbsp;</th>
											</tr>
											<tr>
												<th>晚</th>
												<td class="odd"></td>
												<td></td>
												<td class="odd"></td>
												<td></td>
												<td class="odd"></td>
												<td></td>
												<td class="odd"></td>
												<th>&nbsp;</th>
											</tr>
										</tbody>
									</table>
									<div class="fast-order" style="display: block;">
										如需在特定时间就诊， <a
											href="http://www.guahao.com/department/shiftcase/d0826908-8f55-4cbe-902b-8e208bc6895e"
											class="gbs gbt-blue1">查看科室排班</a> 预约同科室的其他医生
									</div>
								</div>
								<div class="intro g-right">
									<div class="intro-title">
										<span>预约规则</span>
									</div>
									<div class="intro-content introduce-rule g-clear">
										<div class="content-has hide" style="display: block;">
											<span class="content-top">医院规则：<br>如遇专家班次停诊会以短信通知，请保持手机畅通<br>可预约班次更新时间：每日7:30更新<br>1、接受18周岁以下患者预约<br>2、需要预约有效证件及订单号取号<br>3、预约周期：1至7天内<br>4、取消时限：提前1日12：00前<br></span>
											<a class="to-left g-more g-right"
												href="#">更多<i></i></a>
											<span class="more-box hide" style="display: none;"> <span
												class="more-content">医院规则：<br>如遇专家班次停诊会以短信通知，请保持手机畅通<br>可预约班次更新时间：每日7:30更新<br>1、接受18周岁以下患者预约<br>2、需要预约有效证件及订单号取号<br>3、预约周期：1至7天内<br>4、取消时限：提前1日12：00前<br></span>
												<a
												href="http://www.guahao.com/expert/recommend/efdb9810-df0b-4ab9-94ac-ba81705439de#"
												class="gbs gbt-blue  more-up">收起</a>
											</span>
										</div>
										<span class="content-no hide"> 暂无 </span>
									</div>
								</div>
								<div class="loading" style="display: none;">
									<img src="./医生双坐诊 _ 挂号网_files/loading.gif" alt="loading...">
								</div>
							</div>
						</div>
					</div>
				</div>
				</div>
				</div>
				

		<div class="helpqs-list hide">
			<div id="gf">
				<div class="g-container">
					<div class="clear"></div>
					<p class="copyright">版权所有：系统分析小组&nbsp;&nbsp;&nbsp;</p>
				</div>
			</div>
		</div>
    </div>
</body>
</html>