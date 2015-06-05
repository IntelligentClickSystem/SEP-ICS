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
				<a href="#">首页</a> <span>&gt;&nbsp;症状自查</span>
			</div>
			
			<div class="wrap">
					<div class="demo">
						<div id='quiz-container' class="main-quiz-holder">
						  <form action="">
						    <div class="intro-container slide-container">
							<input class="search-input" type="text" placeholder="请输入症状"/> 
							<br /><br />
							<br />
							<span><a href="javascript:void(0)" class="search-btn" >搜索</a></span>
							</div>
						  </form>
						</div>						
					</div>
		    </div>
		    <div class="clear"></div>
		
		    <div class="g-box search-box">
		    	<div class="g-blue-title title">根据您的搜索结果，为您推荐的科室</div>
		    	<div class="search info">
		    		<table>
							<colgroup>
								<col width="45%">
								<col width="30%">
								<col class="last">
							</colgroup>
							<thead>
								<tr>
									<th><p>可能疾病</p></th>
									<th><p>相应科室</p></th>
									<th><p>操作</p></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<div>高血压</div>
										<p>高血压是以体循环动脉血压持续性增高为主要表现的临床综合征，是常见的心血管疾病。高血压分为原发性高血压和继发性高血压。继发性高血压多继发于肾、内分泌和神经系统疾病</p>
									</td>
									<td>心血管内科</td>
									<td><a href="javascript:void(0)" class="control-btn">预约挂号</a></td>
								</tr>	
								<tr>
									<td>
										<div>高血压</div>
										<p>高血压是以体循环动脉血压持续性增高为主要表现的临床综合征，是常见的心血管疾病。高血压分为原发性高血压和继发性高血压。继发性高血压多继发于肾、内分泌和神经系统疾病</p>
									</td>
									<td>心血管内科</td>
									<td><a href="javascript:void(0)" class="control-btn">预约挂号</a></td>
								</tr>	
								<tr>
									<td>
										<div>高血压</div>
										<p>高血压是以体循环动脉血压持续性增高为主要表现的临床综合征，是常见的心血管疾病。高血压分为原发性高血压和继发性高血压。继发性高血压多继发于肾、内分泌和神经系统疾病</p>
									</td>
									<td>心血管内科</td>
									<td><a href="javascript:void(0)" class="control-btn">预约挂号</a></td>
								</tr>														
							</tbody>
					</table>						    		
		    	</div>		    	
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