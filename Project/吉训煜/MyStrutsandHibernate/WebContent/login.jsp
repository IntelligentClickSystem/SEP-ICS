<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
<meta property="wb:webmaster" content="3b0138a4c935e0f6"> 
<meta property="qc:admins" content="341606771467510176375">

<link rel="shortcut icon" href="http://img.guahao.cn/favicon.ico">
	<link rel="stylesheet" href="./files_ji/portal.base.min.css" type="text/css">  
	<link rel="stylesheet" href="./files_ji/portal.min.css" type="text/css">  
	<link rel="stylesheet" href="./files_ji/portal.hdd.min.css" type="text/css">  
	<link rel="stylesheet" href="./files_ji/portal.content.min.css" type="text/css">  
	<link rel="stylesheet" href="./files_ji/portal.style.min.css" type="text/css">  
	<link rel="stylesheet" href="./files_ji/animate.min.css" type="text/css">
	
	<title>用户登录</title><script type="text/javascript" src="./files_ji/jquery-1.8.1.min.js"></script><script type="text/javascript" src="./files_ji/GH.js"></script><script type="text/javascript" src="./files_ji/validator.js"></script><script type="text/javascript" src="./files_ji/common.js"></script><script type="text/javascript" src="./files_ji/userinfo.js"></script><script type="text/javascript" src="./files_ji/jquery.ui.core.js"></script><script type="text/javascript" src="./files_ji/jquery.ui.autocomplete.js"></script><script type="text/javascript" src="./files_ji/jquery.bxslider.js"></script><script type="text/javascript" src="./files_ji/fingerprint.js"></script><script type="text/javascript" src="./files_ji/jquery.ui.datepicker.js"></script><script type="text/javascript" src="./files_ji/jquery.Jcrop.js"></script><script type="text/javascript" src="./files_ji/jquery-gl-pagination.js"></script>
</head>

<title>登录</title><script type="text/javascript" src="./files_ji/jquery-1.8.1.min.js"></script><script type="text/javascript" src="./files_ji/GH.js"></script><script type="text/javascript" src="./登录   _files/validator.js"></script><script type="text/javascript" src="./files_ji/common.js"></script><script type="text/javascript" src="./登录   _files/jquery.ui.core.js"></script><script type="text/javascript" src="./files_ji/jquery.ui.autocomplete.js"></script><script type="text/javascript" src="./files_ji/jquery.bxslider.js"></script><script type="text/javascript" src="./files_ji/fingerprint.js"></script><script type="text/javascript" src="./files_jis/jquery.crypt.js"></script>
	
</head>
<body style="min-width: 980px;"> 
	
<div id="g-wrapper" class="g-wrapper ">  
	<div id="gh">
<div class="gh-nav">
	<div class="container g-clear">
		<div class="g-left">
					
		<a href="./regedit.jsp" onmousedown="return _smartlog(this,&#39;TOP&#39;)">注册</a>
			 
		</div>
		<div class="g-right"> 
			 <a href="./rand_doctor.jsp" target="_blank" onmousedown="return _smartlog(this,&#39;TOP&#39;)">医院排行榜</a>
          
		</div> 
	</div>
</div>	
		    <div class="gh-main">
		     <div class="container g-clear">	
		    	<div class="gh-logo gh-logo-txt">
			    	   <span class="header-title-name"><b class="text">登录数字智能医院就诊系统</b></span>
		    	</div>
			   </div>
		    </div>
	            <div class="gh-menu">
	                <div class="container">
	                    <div class="g-left">
	                       
	                    </div>
	                    <div class="g-right">
	                    	
						</div>
	                </div>
	            </div>
	</div>

	<div id="gc" style="min-height: 307px;"> 
		

<div class="g-top-box">
	
</div> <div id="loginPage" class="g-container template-style" data-loadpop="default">
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
				<li><label>密码：</label>
					<input class="text" type="password" autocomplete="off" disableautocomplete="" id="password" data-required="1">
					<input class="hide" type="password" autocomplete="off" disableautocomplete="" name="password">
				</li>
				<li>
					<label>&nbsp;</label>
					<label for="auto1" class="auto-login"> <input id="auto1" type="checkbox" name="autologin">一个月内自动登录</label>
				</li>
				</ul>
				 <div class="action-btn">
				  <button class="gbn gbt-green"  id="logingo" type="submit">登录</button>
					 <span class="forget-pw"> 
						<a href="">忘记密码？</a>
					</span>
				</div>
			</form>
			 <form action="" id="resendform" class="hide">
				<input type="hidden" id="email" name="email" value="">
			</form>
			<div class="g-social-login">
				<label>使用合作网站帐号登录：</label>
				<a href="#" class="qq">QQ</a>
				<a href="#" class="weixin">微信</a>
				<a href="#" class="alipay">支付宝</a>
				<a href="#" class="sina">新浪</a>
				<a href="#" class="taobao">淘宝</a>
				<a href="#" class="wuba">58同城</a>
			</div> 
				 
		</div>
		<!-- end of .contentLeft --> 
		<!-- .contentRight -->
		<div class="g-left">
			<div class="top-text">
				<p>还没有挂号账号？</p>
				<a class="gb gb-grey2" href="./regedit.jsp">
	                        <span class="gb-right">
	                            <span class="gb-text">注册</span>
	                        </span>
	            </a>
			</div>
			 
			<div class="top-text">
				<a class="code-text" href="#" target="_bank">下载手机客户端</a>
				<p>查询、预约、方便无处不在！</p>
				<img class="code-app" src="./files_ji/qrApp2.jpg" onerror="this.src=&#39;http://www.guahao.com/qrcode/gener?qrIndex=qrApp2&#39;;this.removeAttribute(&#39;onerror&#39;);">
				
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
		<a class="logo g-left" href="http://www.guahao.com/" onmousedown="return _smartlog(this,&#39;BTM&#39;)"></a> 
		<div class="code g-left">
			
		</div>
		<div class="clear"></div>
		<p class="copyright">
			版权所有：系统分析小组
		</p>
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

</div><div id="gm-bg"></div><div id="gm-mask">
		
<div class="gm-box g-clear" id="gm-login">
		    <a class="close gm-close" href="javascript:;"></a>
			<div class="login-left g-left">
				<h1>登录</h1>
				<form action="http://www.guahao.com/user/login_a">
					<span class="tips-error hide"></span>
					<span class="tips-succ hide"></span>
	            	<ul>
						<li>
							<label>用户名</label>
							<input type="text" value="" name="loginId" class="text required" placeholder="手机、邮箱或用户名" id="poploginId">
						</li>
						<li>
							<label>密码</label>
							<input type="password" autocomplete="off" disableautocomplete="" id="password" class="text required"> 
							<input type="password" autocomplete="off" disableautocomplete="" name="password" class="hide"> 
						</li>
						<li>
							<label>验证码</label>
							<input type="text" maxlength="4" autocomplete="off" size="30" class="text required code-text" name="validCode" data-validcode="loginmodal">  
							
								<img src="./files_ji/1.jpg">
							
						</li>
						<li>
							<input type="checkbox" name="autologin" id="autoLogin"><label for="autoLogin" class="auto-login">一个月内自动登录</label>
							<a href="http://www.guahao.com/forget/index" class="forget-ps" target="_blank">忘记密码？</a> 
						</li>
					</ul> 
	            </form>
	             <form action="" id="resendform" class="hide">
					<input type="hidden" id="email" name="email" value="">
				</form>   
	            <div class="actionbt">
            		<a href="javascript:;" id="loginbtn" class="gbn gbt-blue3">登录</a>
            	</div>
			</div>
			
	    </div></div><div id="gfo-rihgtbar" style="left: 1307px; right: auto; display: block;"><div id="gfo-wrap" style="top: 249px; position: fixed;"><div id="gfo-ghApp" class="item-box"><a href="http://www.guahao.com/appintro" target="_blank" class="tel-box"></a><span class="code-box hide"><a href="javascript:;"><em>微医-用户版</em><img class="icon" src="./登录   _files/qrApp2.jpg" onerror="this.src=&quot;http://www.guahao.com/qrcode/gener?qrIndex=qrApp2&quot;;this.removeAttribute(&quot;onerror&quot;);"></a><a href="javascript:;" class="bottom"><em>微医生</em><img class="icon" src="./登录   _files/qrDrapp1.jpg" onerror="this.src=&quot;http://www.guahao.com/qrcode/gener?qrIndex=qrDrapp1&quot;;this.removeAttribute(&quot;onerror&quot;);"></a></span></div><div id="gfo-weixin" class="item-box"><span class="weixin-icon"></span><span class="code-box hide"><a href="javascript:;"><em>微医公众账号</em><img class="icon" src="./登录   _files/qrWx3.jpg" onerror="this.src=&quot;http://www.guahao.com/qrcode/gener?qrIndex=qrWx3&quot;;this.removeAttribute(&quot;onerror&quot;);"></a><a href="javascript:;" class="bottom"><em>微信号</em><img class="icon" src="./登录   _files/qrWx1.jpg" onerror="this.src=&quot;http://www.guahao.com/qrcode/gener?qrIndex=qrWx1&quot;;this.removeAttribute(&quot;onerror&quot;);"></a></span></div><a id="gfo-sina" class="item-box" href="http://e.weibo.com/95169guahaowang" target="_blank" title="微博账号"><span class="sina-icon"></span></a><div id="gfo-totop" class="item-box hide" title="向上"><span class="top-icon"></span></div></div></div></body></html>