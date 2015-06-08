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

<title>智能挂号系统</title>
</head>
<body style="min-width: 980px;">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="g-wrapper">

		<div id="gc" style="min-height: 289px;">

			<div id="g-cfg" class="g-container gp-order" data-module="order_new"
				data-page="index" data-fo-help="1">
				<form class="order-form" id="J_Form" name="postReservationVO"
					action="http://www.guahao.com/my/reservation/submitvalidate"
					method="post" novalidate="novalidate">
					<input name="csrf_token" type="hidden" value="1e1a98nr_2ao4">
					<input id="shiftCaseIdIpt" type="hidden" name="shiftCaseId"
						value="794a29ee-c62b-4310-a439-95e97cc4b534"> <input
						type="hidden" name="hospitalId"
						value="8cda804a-9de1-48cb-b99a-08c0c3e4672d" id="hospitalIdIpt">
					<input type="hidden" name="expertId"
						value="efdb9810-df0b-4ab9-94ac-ba81705439de" id="backExpertId">
					<input type="hidden" name="isNeedAgent" value="0"> <input
						type="hidden" name="deptId"
						value="d0826908-8f55-4cbe-902b-8e208bc6895e"> <input
						type="hidden" name="ageLowerLimit" value="0"> <input
						type="hidden" name="ageTopLimit" value="150"> <input
						type="hidden" name="sexLimit" value="3"> <input
						type="hidden" name="patientListSize" value="1"
						id="J_patientListSize"> <input type="hidden"
						name="signdata"
						value="5F347CE2BE9A7CAD4B344799352D98ECC739C8526A1A8000"
						id="signdata">
					<div class="item info">
						<div class="title">确认预约订单信息</div>
						<table>
							<colgroup>
								<col width="35%">
								<col width="16%">
								<col width="32%">
								<col class="last">
							</colgroup>
							<thead>
								<tr>
									<th><p>医生信息</p></th>
									<th><p>门诊类型</p></th>
									<th><p>就诊时间</p></th>
									<th><p>挂号费</p></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<div class="g-doc-info">
											<a class="img"
												href="http://www.guahao.com/expert/efdb9810-df0b-4ab9-94ac-ba81705439de"
												target="_blank"> <img
												src="./填写预约信息 _ 挂号网_files/efdb9810-df0b-4ab9-94ac-ba81705439de.jpg"
												alt="杨根兴"
												onerror="this.src=&#39;http://img.guahao.cn/img/character/doc-unknow.png?_=20121223&#39;;">
											</a>
											<dl>
												<dt>
													<a
														href="http://www.guahao.com/expert/efdb9810-df0b-4ab9-94ac-ba81705439de"
														target="_blank">杨根兴</a> <span> 副主任医师 </span>
												</dt>
												<dd>
													<p>
														<a
															href="http://www.guahao.com/hospital/8cda804a-9de1-48cb-b99a-08c0c3e4672d"
															target="_blank" title="上海交通大学医学院附属上海儿童医学中心">上海交通大学医学院附属上海儿童医学中心</a>
													</p>
													<p>
														<a
															href="http://www.guahao.com/department/d0826908-8f55-4cbe-902b-8e208bc6895e"
															target="_blank" title="儿骨科">儿骨科</a>
													</p>
												</dd>
											</dl>
										</div>
									</td>
									<td>专家门诊</td>
									<td>2015年05月26日&nbsp;上午 <br>
									</td>
									<td class="g-txt-orange">￥300.0</td>
								</tr>
							</tbody>
						</table>						
					</div>
					<div id="J_BookInfo">

						<div class="item">
							<div class="user-boxes g-clear js-patient-boxes">
								<dl class="on" data-id="6E2650327BBDC103">
									<dt>
										吉训煜 <span>(就诊人)</span>
									</dt>
									<dd>
										4600**********4997<br> 188*****520 <i></i>
									</dd>
								</dl>
								<input type="hidden" id="js-id" value="6E2650327BBDC103"
									name="patient.encodePatientId">
							</div>
						</div>

						<div class="item g-clear">
							<div class="title">选择就诊人初复诊</div>
							<div class="form-line form-line-radio">
								<input type="hidden" name="RequireNameStr0" value=""> <label>
									<input id="visitTypeRadio0" type="radio" value="0"
									name="visitType" checked="checked"> 初诊（第一次去这家医院）
								</label>
							</div>
							<div class="form-line form-line-radio">
								<input type="hidden" name="RequireNameStr1"
									value="1_require_0cardType,,就诊卡类型:1_require_0cardValue,,就诊卡号码:">
								<label> <input id="visitTypeRadio1" type="radio"
									value="1" name="visitType"> 复诊（曾经去过这家医院）
								</label>
							</div>
						</div>
						<div class="hide js-extra" style="display: block;">

							<div id="treatCardInfo1" class="treatcard-info js-treatCardInfo"
								name="requires_1" style="display: none;">
								<div class="item">
									<div class="title">填写就诊卡信息</div>
									<div class="form-line treatCardInfo">
										<label class="gfm-left">卡片类型：</label> <label
											class="treatCardType"> <input
											class="js-cardType js-cardTypeRadio1" data-name="cardType"
											checked="checked" type="radio" value="1"
											name="1_require_0cardType">医保卡
										</label> <label class="treatCardType"> <input
											class="js-cardType js-cardTypeRadio3" data-name="cardType"
											type="radio" value="3" name="1_require_0cardType">自费卡（医院下发的就诊卡）
										</label>
									</div>
									<div class="form-line input-code">
										<label class="gfm-left"> 就诊卡号码：</label> <input
											class="treatCardNum gfm-input" data-name="cardValue"
											name="1_require_0cardValue" type="text" data-required="1"
											value=""
											pattern="^([A-Z][\d]{8})$|^([\d]{9})$|^([\d]{10})$|^([\d]{15})$|^([A-Z][\d]{7}[A-Z])$|^[\d]{8}$"
											data-message="请输入正确的卡号">
										<div class="g-clear"></div>
										<span class="tip"></span>
									</div>
								</div>

							</div>
						</div>
						<div class="item g-clear J_validCode" style="margin-bottom: 20px;">
							<div class="title">请输入图片验证码</div>
							<div class="form-line  captcha-line">
								<input type="text" name="validCode" class="text" id="validCode"
									autocomplete="off" data-required="1" maxlength="4"
									data-validcode="verifi-code" style="width: 190px;"> <img
									id="vcode_img" src="./填写预约信息 _ 挂号网_files/1"><a
									href="javascript:void(0)" id="freshcode"><span
									class="blueText">换一张</span></a>
							</div>
						</div>
						<div class="verify">
							<div class="form-line knowit">
								<label> <input type="checkbox" data-required="1"
									data-message="请先确认" name="knowit">
									我已了解：如遇专家停诊，您的订单会被取消，我们会以短信通知到您，请保持手机畅通，并及时关注订单状态。
								</label>
							</div>
						</div>
					</div>

					<div class="actions">
						<a href="reservSuccess.jsp" id="J_Booking" class="gbb gbt-green">
							确认预约 </a> <span class="js-mobile-tips" style="">预约成功的短信将发送到手机：<em
							class="js-mobile">188*****520</em>，请注意查收！
						</span>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>