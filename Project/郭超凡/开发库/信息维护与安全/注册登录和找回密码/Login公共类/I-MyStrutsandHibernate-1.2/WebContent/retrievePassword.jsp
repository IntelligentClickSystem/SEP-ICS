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

<script type="text/javascript" src="./files_ji/jquery-1.4.2.min.js">
function isEmail(str){
    var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
    if(!reg.test(str)){
         alert("邮件格式不正确!");
         return false;

     }
     return true;
}
</script>

<title>找回密码</title>
</head>
<body style="min-width: 980px"> 
	<div class="g-wrapper">
	<div id="gh">
	
	    <div class="gh-main">
	     <div class="container g-clear border">
	    	<div class="gh-logo gh-logo-txt">
	    		<span class="header-title-name"><b class="text">找回密码</b></span>
	    	</div>

		   </div>
	    </div>

	</div>

	<div id="gc" style="min-height: 345px;"> 
		

<!-- .mobile-register -->
			<div class="g-container template-style J_DoctorRegister" id="g-cfg" data-module="account" data-fo-help="1">
				<!-- .content -->
				<div class="new-register">
					<div class="form-area">
						<form action="sendEmail" id="passwordForm" name="passwordForm" method="post">
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
								<li class="mobile-line"><label>邮箱：</label><input type="text" id="email" autocomplete="off" name="email" class="text loginId" data-required="1" pattern="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" data-message="请输入正确的邮箱" value="" data-offset="120" data-validcode="ml130"></li>
							</ul>
							
							<div class="action-line">
								<div class="action">
									<Button class="gbn gbt-green" id="retrievePassword" type="submit" style="width:100px">找回密码</Button>
								</div>
								
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