<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<link rel="shortcut icon" href="http://img.guahao.cn/favicon.ico" />

	<link rel="stylesheet" href="./files_ji/portal.base.min.css" type="text/css"/>  
	<link rel="stylesheet" href="./files_ji/portal.basic.min.css" type="text/css"/>  
	<link rel="stylesheet" href="./files_ji/portal.hdd.min.css" type="text/css"/>  
	<link rel="stylesheet" href="./files_ji/portal.content.min.css" type="text/css"/>
	<link rel="stylesheet" href="./files_ji/style.min.css" type="text/css"/>  
	<link rel="stylesheet" href="./files_ji/animate.min.css" type="text/css"/>	
  
  <title>确认支付</title>
</head>
  <body style="min-width: 980px;">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="g-wrapper">
	<div id="gc"> 
		<div id="g-cfg" data-module="userinfo" class="gp-person g-container">
    <div class="wrap">
         <!--start预约单详情-->
         <div class="order-detail" id="myOrder-detail">
         <p class="short">
            <span class="img cancel-order"></span>
            <span class="doc">
            <strong>支付订单</strong>
            </span>
        </p>
        <ul>
            <li class="title">订单信息</li>
            <li>
            <p><span>就诊人：姜栋煜</span>
            </p>
            <p><span>联系电话：188*****518</span>
            </p>
            <p><span>就诊日期：2015-06-14&nbsp;（具体时间以预约成功短信为准）</span>
               <span>挂号费：7.00元</span>
            </p>
            </li>
          </ul>
        <div class="clear"></div>
        <div class="btn">
           <a class="gbb gbt-green" href="paySuccess.jsp" id="payOrderBtn">
              <span class="gb-right">
                 <span class="gb-text">立即支付</span>
              </span>
          </a>
      </div>
     </div>
        


       </div>
     <!--end预约单详情-->
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