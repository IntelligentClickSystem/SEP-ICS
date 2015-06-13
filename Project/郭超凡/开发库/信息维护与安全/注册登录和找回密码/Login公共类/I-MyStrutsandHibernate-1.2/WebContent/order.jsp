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
<title>我的预约单</title>
</head>
<body style="min-width: 980px;">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="g-wrapper"> 
    <div id="gc" style="min-height: 289px;"> 
    <div id="g-cfg" data-module="userinfo" class="gp-person g-container" data-fo-help="1">
	<div id="g-breadcrumb">
        <a href="#">首页</a> 
        <span>&gt;&nbsp;我的预约单</span> 
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
		<li class="myorder"><a class="current myorder-a" href="./"><span class="gi2 gi-order"></span>我的预约单</a></li>
	</ul>
</div>
		<div class="person-right">
				<div class="order-remind  g-clear">
					<span class="icon gi2 gi-order-big"></span>
					<div class="meta">
						<h1>我的预约单</h1>
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
							  			按状态筛选：
							  	 </label>
							     <select id="displayOrder" name="orderState">
							     		<option value="0" >全部</option>
							     		<option value="2" >待支付</option>
							     		<option value="3" >已支付</option>
							     		<option value="1" >已取消</option>
							     		<option value="4" >已完成</option>
							     </select> 
						    </div>
			        </form>
			        
					<table   cellspacing="0" cellpadding="0">
						<caption></caption>
						<colgroup>
						 <col width="144px;"/>
						 <col width="160px;" class=""/ >
						 <col width="100px;"/>
						 <col width="70px;"/>
						 <col width="80px;" class="order-cost"/>
						 <col width="130px;"/> 
						</colgroup>
						<thead>
						 <tr>
						  <th>就诊日期</th>
						  <th class="text-left">医生</th>
						  <th>就诊人</th>
						  <th class="text-right">挂号费</th>
						  <th>订单状态</th>
						  <th>操作</th>
						 </tr>
						</thead>
						<tbody>
					 <tr>
					 <td >
					  2015-05-29
                      </td>
					  <td class="text-left">
					  	 <a href="#" target="_blank">韩纲</a>
					  	 <a href="#" target="_blank">外科-骨科</a><br/>
					  	 <a href="#" target="_blank">中国人民解放军总医...</a><small>
					  
					  </td>
					  <td >
					  姜栋煜
					  </td>
					  <td class="text-right red-word">7.00元</td>
					  <td >
		                    		已支付
		                    		<br/>
	                   	<a href="#" class="det">详情</a>
					  </td> 
					  <td >
	                    		5天后就诊
	                          	
	                          <input type="hidden" value="1"/>  
                	  </td>
					 </tr>
					 <tr>
					 <td class="lighterblue-bg">
					  2015-05-26
                      </td>
					  <td class="lighterblue-bg text-left">
					  	 <a href="#" target="_blank">骨科</a>
					  	 <a href="#" target="_blank">外科-骨科</a><br/>
					  	 <a href="#" target="_blank">中国人民解放军总医...</a><small>
					  
					  </td>
					  <td class="lighterblue-bg">
					  姜栋煜
					  </td>
					  <td class="lighterblue-bg text-right red-word">4.50元</td>
					  <td class="lighterblue-bg">
		                    		待支付
		                    		<br/>
	                   	<a href="#" class="det">详情</a>
					  </td> 
					  <td class="lighterblue-bg">
					  <a class="gbs gbt-green1 reSendMsg" href="onlinePay.jsp">支付</a>
	                          	<a href="javascript:void(0);" class="cancel  cancelModal">取消</a> 
	                          <input type="hidden" value="1"/> 
                	  </td>
					 </tr>
					 <tr>
					 <td >
					  2015-05-31
                      </td>
					  <td class="text-left">
					  	 <a href="#" target="_blank">卢强</a>
					  	 <a href="#" target="_blank">外科-骨科</a><br/>
					  	 <a href="#" target="_blank">中国人民解放军总医...</a><small>
					  
					  </td>
					  <td >
					  姜栋煜
					  </td>
					  <td class="text-right red-word">7.00元</td>
					  <td >
		                    		已取消
		                    		<br/>
	                   	<a href="#" class="det">详情</a>
					  </td> 
					  <td >
	                           <a href="" style="display:none;">删除</a> 
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
<script type="text/javascript" src="./files_ji/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="./files_ji/quiz.js"></script>
</html>