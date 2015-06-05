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

<style type="text/css">
.demo{width:760px; margin:60px auto 10px auto}
</style>

<script type="text/javascript" src="./files_ji/jquery-1.4.2.min.js"></script>
<script type="text/javascript">
var init={'questions':[{'question':'jQuery是什么？','answers':['JavaScript库','CSS库','PHP框架','以上都不是'],'correctAnswer':1}]};

$(function(){
	$("#quiz-container").jquizzy({
        questions: init.questions
    });
});
</script>
<title>智能挂号系统</title>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
	<div id="gc" style="min-height: 248px;">
		<div id="g-cfg" data-module="userinfo" class="gp-person g-container"
			data-fo-help="1">
			<div id="g-breadcrumb">
				<a href="#">首页</a> <span>&gt;&nbsp;症状自查</span>
			</div>
			
			<div class="wrap">
					<div class="demo">
						<div id='quiz-container'></div>
					</div>
		    </div>
		    <div class="clear"></div>
		
		    <div class="g-box expert-box">
		    	<div class="g-blue-title title">根据您的测试结果，为您推荐的医生</div>
		    	<div class="content">
		    		<ul class="g-clear">
		    			
					</ul>	    		
		    	</div>		    	
		    </div>
		    <div class="clear"></div>
		</div>
		
		<div class="helpqs-list hide">
			<div id="gf">
				<div class="g-container">
					<div class="clear"></div>
					<p class="copyright">版权所有：软件工程实践小组&nbsp;&nbsp;&nbsp;</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>