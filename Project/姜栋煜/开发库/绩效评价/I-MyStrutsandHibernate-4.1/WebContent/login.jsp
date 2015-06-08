<%@ page language="java" import="java.util.*"  pageEncoding="utf-8"%>
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

<title>登录</title>
</head>
<body style="min-width: 980px;"> 
	
<div id="g-wrapper" class="g-wrapper ">  
	<div id="gh">
       <div class="gh-nav">
	      <div class="container g-clear">
		      <div class="g-left">
			  <a href="regeditPatient1.jsp">注册</a>
			  </div>
		  </div>
	   </div>	
       <div class="gh-main">
	       <div class="container g-clear">	
		        <div class="gh-logo gh-logo-txt">
			    <span class="header-title-name"><b class="text">登录智能挂号系统</b></span>
	            </div>
	      </div>
       </div>
	</div>

<div id="gc" style="min-height: 307px;"> 
<div class="g-top-box">
	
</div> 
<div id="loginPage" class="g-container template-style" data-loadpop="default">
  	<!-- .content -->
 	<div class="template-content g-clear">
		<!-- .contentLeft -->
		<div class="g-left main-content">
		    <form action="login" method="post" id="user" name="user" novalidate="novalidate">
			    <div class="g-tips-box-error hide">
			   		 <span class="gi gi-error"></span>
					  <span class="content">
					</span>
				</div>
				<div class="g-tips-box-succ hide">
						<span class="gi gi-succ"></span>
					   	<span class="content"></span>
				</div>
			    <input type="hidden" name="method" value="dologin">
			    <input type="hidden" name="target" value="/">
			    <ul>
				<li class="tip-text"><label>登录名：</label>
					<input class="text" type="text" placeholder="手机、邮箱或用户名" id="loginId" name="loginId" value="" data-required="1">
				</li>
				<li>
				    <label>密码：</label>
					<input class="text" type="password" autocomplete="off" id="password" data-required="1">
					<input class="hide" type="password" autocomplete="off" name="password">
				</li>
				</ul>
				 <div class="action-btn">
				  <a href="quiz.jsp" class="gbn gbt-green" id="logingo">登录</a>
					 <span class="forget-pw"> 
						<a href="">忘记密码？</a>
					</span>
				</div>
			</form>
			 <form action="" id="resendform" class="hide">
				<input type="hidden" id="email" name="email" value="">
			</form>
			
				 
		</div>
		<!-- end of .contentLeft --> 
		<!-- .contentRight -->
		<div class="g-left">
			<div class="top-text">
				<p>还没有智能挂号系统账号？</p>
				<a class="gb gb-grey2" href="regeditPatient1.jsp">
	                        <span class="gb-right">
	                            <span class="gb-text">注册</span>
	                        </span>
	            </a>
			</div>
		  </div><!-- end of .contentRight -->
	    </div><!-- end of .content -->
     </div>

    <script type="text/javascript">  
	$GF.push(function(){		 
		var loginPage = $("#loginPage"), 
			form=loginPage.find($("#user")).validator(); 
	 
		function dologin(form){
			if(form.data("validator").checkValidity()){
				form.find(".g-tips-box-error").hide();
				form.find(".g-tips-box-succ").hide();
				form.find("input[name='password']").val($().crypt({method:"md5",source:form.find("#password").val()}));
				form.submit(); 
				return false;
			}
		}
		//输入框中加提示
		form.find("#loginId").glPlaceholder();
		//登录操作
		form.find("#logingo").click(function(){
			dologin(form);
		});
		
		//回车键触发 
		form.find("input.text").keyup(function (event) {
		 if(event.keyCode==13){ 
			 dologin(form);
	            } 
		}); 

	}) 

    </script>
   </div>
	
	<div id="gf">
	   <div class="g-container">
		  <div class="clear"></div>
		   <p class="copyright">
			版权所有：软件工程综合实践小组
		   </p>
	   </div>
    </div>
  </div>
</body>
</html>