<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'header.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="./files_ji/portal.min.css" type="text/css">
<link rel="stylesheet" href="./files_ji/portal.hdd.min.css"
	type="text/css">
<link rel="stylesheet" href="./files_ji/portal.content.min.css"
	type="text/css">
<link rel="stylesheet" href="./files_ji/portal.style.min.css"
	type="text/css">
<link rel="stylesheet" href="./files_ji/animate.min.css" type="text/css">

</head>

<body>
    <s:if test="%{null == #session.patient}">
   		 <jsp:forward page="login.jsp" />	
    </s:if>
	<!-- header start -->
	<div id="gh">
		<div class="gh-nav">
			<div class="container g-clear">
				<div class="g-left">
					<span class="text">您好 ${session.patient.name} </span> 
					<a href="#" onmousedown="return _smartlog(this,&#39;TOP&#39;)">个人中心</a> 
					<span class="line">|</span> 
					<a href="order.jsp" onmousedown="return _smartlog(this,&#39;TOP&#39;)">预约单</a> 
					<span class="line">|</span> 
					<a href="#" onmousedown="return _smartlog(this,&#39;TOP&#39;)">退出</a>
				</div>
				<div class="g-right">
					<a href="#" onmousedown="return _smartlog(this,&#39;TOP&#39;)"
						id="helpCenter" target="_blank">客服中心</a> <span class="line">|</span>
					<a href="#" onmousedown="return _smartlog(this,&#39;TOP&#39;)">网站建议</a>
					<span class="line">|</span> <a href="rand_doctor.jsp"
						target="_blank" onmousedown="return _smartlog(this,&#39;TOP&#39;)">医生排行榜</a>
					<span class="line">|</span> <a href="#"
						onmousedown="return _smartlog(this,&#39;TOP&#39;)">快速取消订单</a>
				</div>
			</div>
		</div>
		<div class="gh-main">
			<div class="container g-clear">
				<div class="gh-logo ">
					<a href="#" class="logo"
						onmousedown="return _smartlog(this,&#39;LOG&#39;)"></a>
				</div>
				<div class="gh-search gh-web-search gh-search-left">
					<form class="gh-search-form" action="http://www.guahao.com/search"
						name="qform">
						<span class="gh-search-input"> <span class="search-icon"></span>
							<input type="text" name="q" value="" autocomplete="off"
							maxlength="50" id="js-q" placeholder="请输入疾病名、科室名或医生名"
							class="ui-autocomplete-input" role="textbox" aria-haspopup="true"
							aria-autocomplete="off">
						</span> <a class="gbn gbt-green2 radius-right big-search-bt"
							href="javascript:void(0);">搜索</a>
						<div class="clear"></div>
					</form>
					<div class="search-key">
						<a href="#" onmousedown="return _smartlog(this,&#39;SOU_TXT&#39;)">
							发烧 </a> <a href="#" class="hot"
							onmousedown="return _smartlog(this,&#39;SOU_TXT&#39;)"> 内科 </a> <a
							href="#" onmousedown="return _smartlog(this,&#39;SOU_TXT&#39;)">
							鼻炎 </a> <a href="#" class="hot"
							onmousedown="return _smartlog(this,&#39;SOU_TXT&#39;)"> 不孕不育
						</a> <a href="#"
							onmousedown="return _smartlog(this,&#39;SOU_TXT&#39;)"> 颈椎病 </a>
						<a href="#" onmousedown="return _smartlog(this,&#39;SOU_TXT&#39;)">
							甲亢 </a> <a href="#"
							onmousedown="return _smartlog(this,&#39;SOU_TXT&#39;)"> 儿科 </a> <a
							href="#" onmousedown="return _smartlog(this,&#39;SOU_TXT&#39;)">
							眼科 </a> <a href="#"
							onmousedown="return _smartlog(this,&#39;SOU_TXT&#39;)"> 湿疹 </a>
					</div>
				</div>
				<span class="gh-search-tips"></span>
			</div>
		</div>
		<div class="gh-menu">
			<div class="container">
				<div class="g-left search-tabs-style" id="tab_all">
					<a href="date.jsp">快速预约</a> 
					<a href="consultOnline.jsp">信息咨询</a>
					<a href="diagnoseInfo.jsp">就诊信息</a> 
					<a href="evaluateDoctor.jsp">就诊评价</a> 
					<a href="quiz.jsp">病症自查</a>
				</div>
			</div>
		</div>
	</div>

<script type="text/javascript" src="./files_ji/jquery-ui.min.js"></script>
<script type="text/javascript" src="./files_ji/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="./files_ji/quiz.js"></script>
<script type="text/javascript">
 $(document).ready(function(){
     $('a').attr('target','_parent');
     $('#tab_all').children().filter('a').each(function(){
	        $(this).mouseover(
	            function(){
	            	this.setAttribute("class","tab-current");
	            });
	         $(this).mouseleave(
	            function(){
	            	this.setAttribute("class",null);
	            });
      });
});
</script>
</body>
</html>
