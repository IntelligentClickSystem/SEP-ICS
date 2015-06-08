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
<link rel="stylesheet" href="./files_ji/portal.basic.min.css"
	type="text/css">
<link rel="stylesheet" href="./files_ji/portal.base.min.css"
	type="text/css">
<link rel="stylesheet" href="./files_ji/animate.min.css" type="text/css">
<link rel="stylesheet" href="./files_ji/style_ji.css" type="text/css">

<script type="text/javascript" src="./files_ji/jquery-1.4.2.min.js"></script>

<title>支付成功</title>
</head>
<body style="min-width: 980px;">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="g-wrapper"> 
    <div id="gc" style="min-height: 289px;"> 
		
    <div id="g-cfg" class="g-container gp-order" data-module="order_new" data-page="success" data-fo-help="1">
	   <div class="order-suc">	 
		  <div class="box">
			<h2><i></i>支付成功！</h2>
				
            <p>
				请关注以下内容：
			</p> 
			<div class="infos">
				<ul>
					<li>
						<label>就诊人：</label>姜栋煜
					</li>
					<li>
						<label>预约医生：</label>骨科 （中国人民解放军总医院301医院-外科-骨科）
					</li>
					<li>
						<label>就诊时间：</label>2015年05月26日 
					</li>
					<li>
						<label>门诊类型：</label>普通门诊 （<span class="g-txt-orange">4.50元</span> ）
					</li>
				</ul> 
				
				<div class="wy-code"></div>
				<dl>
					<dt>注意事项：</dt>  
					<dd>1、订单支付已成功，请您准时到医院就诊；</dd>
					<dd>2、您可以在 <a href="order.jsp">我的预约单</a> 查看订单详情；</dd>
				</dl>
			</div> 
		</div>		
	 </div>   
    </div>
  </div>
 </div>
</body>
</html>