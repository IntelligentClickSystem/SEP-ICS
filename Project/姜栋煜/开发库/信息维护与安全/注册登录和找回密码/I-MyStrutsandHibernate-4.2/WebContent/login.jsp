<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta property="wb:webmaster" content="3b0138a4c935e0f6"> 
<meta property="qc:admins" content="341606771467510176375">

<link rel="shortcut icon">
	<link rel="stylesheet" href="./files_ji/portal.base.min.css" type="text/css">  
	<link rel="stylesheet" href="./files_ji/portal.min.css" type="text/css">  
	<link rel="stylesheet" href="./files_ji/portal.hdd.min.css" type="text/css">  
	<link rel="stylesheet" href="./files_ji/portal.content.min.css" type="text/css">  
	<link rel="stylesheet" href="./files_ji/portal.style.min.css" type="text/css">  
	<link rel="stylesheet" href="./files_ji/animate.min.css" type="text/css">

    <script type="text/javascript" async="" src="./files_ji/h.js"></script>
    <script type="text/javascript">  
	$GF = []; 
	
	GreenLine = {};
	//打点日志全局变量
	GreenLine.Log = {
		url:'http://track.guahao.cn/blank.gif?',
		requestMethod:'GET',
		loginId:'',
		perSessiionId:'1419692879697',
		shortSessionId:'1420855952377',
		referurl:'http://www.guahao.com/register/mobile',
		userAgent:'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36'
	}
	function _smartlog(link,mod){return ((new Image()).src = "http://track.guahao.cn/blank.gif?" + "lt=1&from=" + encodeURIComponent(location.href) + "&to=" + encodeURIComponent(link.href) + "&mod=" + mod + "&info=" + GreenLine.Log.loginId + "~|~" + GreenLine.Log.perSessiionId + "~|~" + GreenLine.Log.shortSessionId + "&_=" + (new Date().getTime())),true;};
</script><style type="text/css"></style>	
	
	
	<title>登录</title><script type="text/javascript" src="./files_ji/jquery-1.8.1.min.js"></script><script type="text/javascript" src="./files_ji/GH.js"></script><script type="text/javascript" src="./登录   _files/validator.js"></script><script type="text/javascript" src="./files_ji/common.js"></script><script type="text/javascript" src="./登录   _files/jquery.ui.core.js"></script><script type="text/javascript" src="./files_ji/jquery.ui.autocomplete.js"></script><script type="text/javascript" src="./files_ji/jquery.bxslider.js"></script><script type="text/javascript" src="./files_ji/fingerprint.js"></script><script type="text/javascript" src="./files_jis/jquery.crypt.js"></script>
	
</head>

<body style="min-width: 980px;">

	<div id="g-wrapper" class="g-wrapper ">
		<div id="gh">
			<div class="gh-nav">
				<div class="container g-clear">
					<div class="g-left">

						<a href="./regedit.jsp"
							onmousedown="return _smartlog(this,&#39;TOP&#39;)">注册</a>

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
			<div class="gh-menu">
				<div class="container">
					<div class="g-left"></div>
					<div class="g-right"></div>
				</div>
			</div>
		</div>

		<div id="gc" style="min-height: 307px;">


			<div class="g-top-box"></div>
			<div id="loginPage" class="g-container template-style"
				data-loadpop="default">
				<!-- .content -->
				<div class="template-content g-clear">
					<!-- .contentLeft -->
					<div class="g-left main-content">
						<form action="login" method="post" id="user" name="user"
							novalidate="novalidate">
							<div class="g-tips-box-error hide">
								<span class="gi gi-error"></span> <span class="content">
								</span>
							</div>
							<div class="g-tips-box-succ hide">
								<span class="gi gi-succ"></span> <span class="content"></span>
							</div>
							<!-- <input type="hidden" name="method" value="dologin"> 
							<input type="hidden" name="target" value="/"> -->
							<ul>
								<li class="tip-text"><label>登录名：</label> 
								   <input class="text" type="text" placeholder="手机、邮箱或用户名" id="loginId" name="loginId" value="" data-required="1">
								</li>
								<li>
								   <label>密码：</label> 
								   <input class="text" type="password" autocomplete="off" disableautocomplete="" id="password" data-required="1"> 
								   <input class="hide" type="password" autocomplete="off" disableautocomplete="" name="password">
								</li>
							</ul>
									<div class="action-btn">
										<Button class="gbn gbt-green" id="logingo" type="submit" style="width:80px">登录</Button>
										<span class="forget-pw"> <a href="retrievePassword.jsp">忘记密码？</a>
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
							<p>还没有挂号账号？</p>
							<a class="gb gb-grey2" href="./regeditPatient1.jsp"> <span
								class="gb-right"> <span class="gb-text">注册</span>
							</span>
							</a>
						</div>

					</div>
					<!-- end of .contentRight -->
				</div>
				<!-- end of .content -->
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
				<a class="logo g-left" href="http://www.guahao.com/"
					onmousedown="return _smartlog(this,&#39;BTM&#39;)"></a>
				<div class="code g-left"></div>
				<div class="clear"></div>
				<p class="copyright">版权所有：软件工程综合实践小组</p>
			</div>
		</div>


		<script type="text/javascript">
	
	$GC = {
		isLogined : false,
		guahaoServer : 	'http://www.guahao.com',
		staticServer : 'http://img.guahao.cn',
		imageServer : 'http://img.guahao.cn',
		mobilevalidcodepwd : 'lvxian95169124',
		version:"6.63",
		jsCPath:"http://img.guahao.cn" + "/common/js",
		jspath:"http://img.guahao.cn" + "/portal/js",
		domainEnd:'guahao.com'
	};
	
	// $GS { Array } - the init parameters for startup
	$GS = [$GC.jsCPath + "/base/jquery-1.8.1.min.js",
			$GC.jspath + "/base/GH.js?_=6.63",
			$GC.jsCPath + "/plugins/validator.js",function(){  
		 
			 // load common module 
			 GL.load([GH.adaptModule("common")]);  

			 // load the modules defined in page
			 var moduleName = $("#g-cfg").data("module");   
			 if(moduleName){
			 	var module = GH.modules[moduleName];
			 	if(!module) {
			 		module = GH.adaptModule(moduleName);
			 	}
			 	if(module) {
			 		GL.load([module]);
			 	}
			}
			
			if($GU.isIE6()){
					GL.load([$GC.jspath + "/hack/ie6.js"]);
			}
	
	}];
	
	
</script>
		<script type="text/javascript" src="./files_ji/GL.js"></script>
		<div class="hide">
			<script type="text/javascript">
 
		(function() { 
		
			// baidu
			var hm = document.createElement('script'); hm.type = 'text/javascript'; hm.async = true;
			hm.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'hm.baidu.com/h.js?66fcb71a7f1d7ae4ae082580ac03c957';
			var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(hm, s); 
		})();
	</script>
		</div>

	</div>
	<div id="gm-bg"></div>
	<!--<div id="gm-mask">

		<div class="gm-box g-clear" id="gm-login">
			<a class="close gm-close" href="javascript:;"></a>
			<div class="login-left g-left">
				<h1>登录</h1>
				<form action="http://www.guahao.com/user/login_a">
					<span class="tips-error hide"></span>
					<span class="tips-succ hide"></span>
					<ul>
						<li><label>用户名</label> <input type="text" value=""
							name="loginId" class="text required" placeholder="手机、邮箱或用户名"
							id="poploginId"></li>
						<li><label>密码</label> <input type="password"
							autocomplete="off" disableautocomplete="" id="password"
							class="text required"> <input type="password"
								autocomplete="off" disableautocomplete="" name="password"
								class="hide"></li>
					</ul>
				</form>
				<form action="" id="resendform" class="hide">
					<input type="hidden" id="email" name="email" value="">
				</form>
				<div class="actionbt">
					<a href="javascript:;" id="loginbtn" class="gbn gbt-blue3">登录</a>
				</div>
			</div>

		</div>
	</div>-->
	
</body>
</html>