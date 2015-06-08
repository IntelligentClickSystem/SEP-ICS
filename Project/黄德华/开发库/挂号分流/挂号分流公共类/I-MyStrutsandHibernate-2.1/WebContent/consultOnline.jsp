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

<title>在线咨询</title>
</head>
<body style="min-width: 980px;">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="g-wrapper"> 
    <div id="gc" style="min-height: 289px;"> 
    <div id="g-cfg" data-module="userinfo" class="gp-person g-container" data-fo-help="1">
	<div id="g-breadcrumb">
        <a href="#">首页</a> 
        <span>&gt;&nbsp;在线咨询</span> 
  	</div>
	<div class="wrap">
	<div class="person-left">
	<p class="left-head js-user-avatar">
			    			<img src="./files_ji/young-f.png" alt="女">
		<span><strong>姜栋煜</strong>欢迎来到智能挂号系统
		</span>
		
	</p>
	<div class="clear"></div>	
	<ul class="none-border">
		<li class="myorder"><a class="current myorder-a" href="order.jsp"><span class="gi2 gi-order"></span>我的预约单</a></li>
	</ul>
</div>
		<div class="person-right">
				<div class="order-remind  g-clear">
					<span class="icon gi2 gi-order-big"></span>
					<div class="meta">
						<h1>在线咨询</h1>
					</div>  
				</div> 
				<div class="order-list  border-left">
				<div id="errorTipsDv" class="g-tips-box-error tips-box hide">
						<span class="gi gi-error"></span>
						<span class="content"></span>
					</div>
					
				   	<div id="succTipsDv" class="g-tips-box-succ tips-box hide">
				   		<span class="gi gi-succ"></span>
				   		<span class="content"></span>
				   	</div>
			 			<form id="orderFilter" action="http://www.guahao.com/my/orderlist" class="g-clear">
							<input type="hidden" name="pageNo" value="1"/>
						    <div class="check g-left">
							     <label >
							  			按科室筛选：
							  	 </label>
							     <select name="orderState">
							     		<option value="0" >全部</option>
							     		<option value="2" >妇产科</option>
							     		<option value="3" >外科</option>
							     		<option value="1" >牙科</option>
							     		<option value="4" >内科</option>
							     </select> 
						    </div>
			        </form>
					<table  cellspacing="0" cellpadding="0">
						<caption></caption>
						<colgroup>
						 <col width="164px;"/>
						 <col width="120px;" class=""/>
						 <col width="130px;"/> 
						</colgroup>
						<thead>
						 <tr>
						  <th>科室</th>
						  <th class="text-left">医生</th>
						  <th>操作</th>
						 </tr>
						</thead>
						<tbody>
					 <tr>
					 <td >
					  内科-神经内科
                      </td>
					  <td class="text-left">
					  	 <a href="#" target="_blank">韩纲</a>
					  
					  </td>
					  <td >
					      <a target=blank href=tencent://message/?uin=1434342008&Site=http://localhost:8080/MyStrutsandHibernate/consultOnline.jsp&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:1434342008:9 alt="有事Q我"></a>
                	  </td>
					 </tr>
					 
					</tbody>
					</table> 



					
				</div> 
				
			</div>
		<div class="clear"></div>
		
	</div>
</div>

	 
	</div>
	<div id="gf">
		<div class="clear"></div>
		<p class="copyright">
			版权所有：软件工程综合实践小组&nbsp;&nbsp;&nbsp;   
		</p>
	</div>
</div>
 
	
</body>
</html>