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
  
  <title>订单详情</title>
	
</head>
  <body style="min-width: 980px;">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="g-wrapper">
	<div id="gc"> 
		<div id="g-cfg" data-module="userinfo" class="gp-person g-container">
        <div id="g-breadcrumb">
           <a href="#">首页</a>
            <span>&gt;&nbsp;<a href="order.jsp">我的预约单</a></span>
            <span>&gt;&nbsp;订单详情</span>
        </div>
    <div class="wrap">
         <!--start预约单详情-->
         <div class="order-detail" id="myOrder-detail">
         <!-- #head -->
         <p class="short">
            <span class="img cancel-order"></span>
            <span class="doc">
            <strong>预约已取消</strong><br/>
                                                                     取消原因：病人操作取消预约<br/>
                                                                     取消时间：2015-06-08 09:21:33
            </span>
        </p>
        <!-- 退费成功 -->
       <ul>
            <li class="title">取号信息</li>
            <li>
            <p><span>联系电话：188*****518</span>
            </p>
            <p><span>就诊日期：2015-06-14&nbsp;（具体时间以预约成功短信为准）</span>
               <span>挂号费：7.00元</span>
            </p>
            </li>
            <li class="last">
            <p><span>预约单号：012015060825585790</span>
               <span>下单时间：2015-06-08 09:16:24</span>
            </p>
            <p><span>就诊人：姜栋煜</span>
               <span>证件号：3206**********592X</span></p>
               <p><span>预约医生：刘保卫 中国人民解放军总医院301医院-外科-骨科</span>
                  <span>门诊类型：专家门诊</span></p>
               <p><span>就诊类型：初诊</span>
               </p>
            <p>
               <span>就诊地点：</span>
               <span>就诊卡号：医院就诊卡 XY849172</span></p>
            </li>
          </ul>
        <div class="clear"></div>

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