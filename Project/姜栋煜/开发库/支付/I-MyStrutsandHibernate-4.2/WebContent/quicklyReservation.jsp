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
$(function(){
	$("#quiz-container").jquizzy({
        
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
				<a href="#">首页</a> <span>&gt;&nbsp;快速预约</span>
			</div>
			
			<div class="wrap">
					<div class="demo">
						<div id='quiz-container' class="main-quiz-holder">
						  <form action="">
						  
				
						  <div class="intro-container slide-container" >
						  <div class="select">
						    <select name='make'>
							   <option selected>选择科室</option>
							    <option value='1'>内科</option>
							    <option value='2'>外科</option>
							    <option value='3'>儿科</option>
							  </select>
							  </div>
						       <div style="display:inline-block">						          
								    <a href="reservationTime.jsp" class="search-btn" >进入预约</a>
						       </div>								
							</div>
						    
						  </form>
						</div>						
					</div>
					<div class="clear"></div>
		    </div>
		   <div class="clear"></div>
		</div>
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