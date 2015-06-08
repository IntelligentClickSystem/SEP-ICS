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

<title>完善信息</title>
</head>
<body>
	<div id="gh">
    <div class="gh-nav">
	  <div class="container g-clear">
		<div class="g-left">
           		<span class="text">您好！ 请</span>
					<a href="login.jsp" class="login" onmousedown="return _smartlog(this,'TOP')">登录</a>
					
			 
		</div>
	  </div>
    </div>	
	  <div class="gh-main">
	     <div class="container g-clear border">
	    	<div class="gh-logo gh-logo-txt">
	    		<span class="header-title-name"><b class="text">注册</b></span>
	    	</div>
	    	<ul class="gh-register">
	    		<li class="on">
	    			<p>
	    				<span><i class="info"></i></span>
	    				创建帐号
	    			</p>
	    		</li>
	    		<li class="on">
	    			<p>
	    				<span><i class="full"></i></span>
	    				完善个人信息
	    			</p>
	    		</li>
	    		<li >
	    			<p>
	    				<span><i class="suc"></i></span>
	    				注册成功
	    			</p>
	    		</li>
	    	</ul>

		   </div>
	    </div>

	</div>

	<div id="gc"> 
		

<!-- .mobile-register -->
			<div class="g-container template-style J_UserRegister" id="g-cfg" data-module="account" data-fo-help="1">
				<!-- .content -->
				<div class="new-register">
					<div class="tip-bar">
						<h5>注册请填写本人信息</h4>
					</div>
					<div class="form-area next-form">
						
							<div class="g-tips-box-error hide">
						   		<span class="gi gi-error"></span>
						   		<span class="content">
								
								
								
						   		</span>
						   	</div>
				  			<div class="g-tips-box-succ hide">
								<span class="gi gi-succ"></span>
							   	<span class="content"></span>
							</div>
							<h5 class="title">
								登录密码设置
							</h5>
							<input type="hidden" name="mobile" value="18910107627">
							<input type="hidden" name="smsCaptcha" value="816367">
							<input type="hidden" name="imgCaptcha" value="e8m4">
							<ul>
								<li class="first-line"><label>密码：</label><input class="text" id="password" name="password" type="password" autocomplete="off" disableautocomplete autocomplete="off" data-required="1" data-validtips="请输入6-16位数字及字符组成的密码" value=""></li>
								<li class="second-line"><label>重复密码：</label><input class="text" id="passwordRepeat" name="passwordRepeat" autocomplete="off"  type="password" autocomplete="off" disableautocomplete data-equals="password" data-message="必须和密码一致" value=""></li>
							</ul>
							<h5 class="title">
								身份信息设置<span class="extra-tip">请务必填写本人信息，注册后不能修改，隐私信息未经本人许可将严格保密</span>
							</h5>
							<ul>
								<li class="first-line"><label>真实姓名：</label><input type="text" class="text" name="userName" data-required="1" value="" data-validtips="请务必填写本人姓名，注册后不能修改"/></li>
								<li class="second-line"><label>身份证号：</label><input type="text" class="text" name="certNo" data-required="1" value=""  data-validtips="请务必填写本人身份证号，注册后不能修改" maxlength="18"/></li>
							</ul>
							<h5 class="title">
								常用邮箱设置<span class="extra-tip">找回密码时用来验证身份</span>
							</h5>
							<ul>
								<li class="first-line"><label>常用邮箱：</label><input type="email" data-required="1" class="text" name="email" value=""/></li>
							</ul>
							 <div class="action-line">
								
									<a href="./regeditfin.jsp" class="gbn gbt-blue2" id="regSubmit">注册</a>
								
							</div>
						
					</div>
				</div>
				<!-- end of .contentCenter -->
            </div>
            <!-- end of .mobile-register -->
	 
	</div>
	<div id="gf">
	<div class="g-container">
		<a class="logo g-left" href="http://www.guahao.com" onmousedown="return _smartlog(this,'BTM')"></a> 
	  
		<div class="code g-left">
			
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
		<p class="copyright">
			版权所有   ：软件工程综合实践小组
		</p>
	</div>
  </div>
 
</body>
</html>