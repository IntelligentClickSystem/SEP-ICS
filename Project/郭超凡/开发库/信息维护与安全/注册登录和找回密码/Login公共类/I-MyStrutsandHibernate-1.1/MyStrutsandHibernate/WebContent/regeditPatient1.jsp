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
<script type="text/javascript">

$(function(){
	$("#regSubmit").click(function(){
        var phone = $("#mobile").attr("value");
        window.location.href="regeditPatient2.jsp?phoneNum="+phone;
    });
});

</script>

<title>病人注册界面</title>
</head>
<body style="min-width: 980px;"> 
	<div class="g-wrapper">
	<div id="gh">
<div class="gh-nav">
	<div class="container g-clear">
		<div class="g-left">
           		<span class="text">您好！ 请</span>
					<a href="login.jsp">登录</a>
			 
		</div>
	</div>
</div>	
	    <div class="gh-main">
	     <div class="container g-clear border">
	    	<div class="gh-logo gh-logo-txt">
	    		<span class="header-title-name"><b class="text">注册智能挂号系统</b></span>
	    	</div>
	    	<ul class="gh-register">
	    		<li class="on">
	    			<p>
	    				<span><i class="info"></i></span>
	    				创建帐号
	    			</p>
	    		</li>
	    		<li>
	    			<p>
	    				<span><i class="full"></i></span>
	    				完善个人信息
	    			</p>
	    		</li>
	    		<li>
	    			<p>
	    				<span><i class="suc"></i></span>
	    				注册成功
	    			</p>
	    		</li>
	    	</ul>

		   </div>
	    </div>

	</div>

	<div id="gc" style="min-height: 345px;"> 
		

<!-- .mobile-register -->
			<div class="g-container template-style J_DoctorRegister" id="g-cfg" data-module="account" data-fo-help="1">
				<!-- .content -->
				<div class="new-register">
					<div class="form-area">
						<form id="doctorForm" name="doctorForm" method="post">
							<div class="msg-container">
								<div class="g-tips-box-error hide">
							   		<span class="gi gi-error"></span>
							   		<span class="content">
									
							   		</span>
							   	</div>
					  			<div class="g-tips-box-succ hide">
									<span class="gi gi-succ"></span>
								   	<span class="content"></span>
								</div>
							</div>
							<ul class="docorFirst">
								<li class="mobile-line"><label>手机号：</label><input type="text" id="mobile" autocomplete="off" name="mobile" class="text loginId" data-required="1" pattern="^1\d{10}$" data-message="请输入正确的手机号码" value="" data-validtips="输入的手机号将作为用户名" data-offset="120" data-validcode="ml130"></li>
								<li><label>密码：</label><input class="text" id="password" name="password" type="password" autocomplete="off" disableautocomplete="" maxlength="16" data-required="1" data-validtips="请输入6-16位数字及字符组成的密码" value="" data-validcode="ml130" data-offset="120"></li>
								
							</ul>
							 <div class="action-line">
								<div class="action">
									<a href="#" class="gbn gbt-blue2" id="regSubmit">下一步</a>
								</div>
								<div class="login">已经拥有账号，<a href="./login.jsp">直接登录</a></div>
							</div>
						</form>
					</div>
				</div>
				<!-- end of .contentCenter -->
            </div>
            <!-- end of .mobile-register -->
<div class="helpqs-list hide">
	 
</div>
	 
	</div>
	<div id="gf">
	<div class="g-container">
		<div class="code g-left">
			
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
		<p class="copyright">
			版权所有：软件工程综合实践小组&nbsp;&nbsp;&nbsp; 	
		</p>
	</div>
</div>
 
	
</div></body></html>