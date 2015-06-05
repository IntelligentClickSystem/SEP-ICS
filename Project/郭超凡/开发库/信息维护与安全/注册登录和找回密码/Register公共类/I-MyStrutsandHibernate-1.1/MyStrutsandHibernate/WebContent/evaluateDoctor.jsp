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
function rate(obj,oEvent){
var imgSrc = 'files_ji/icon_star_1.gif';
var imgSrc_2 = 'files_ji/icon_star_2.gif';
if(obj.rateFlag) return;
var e = oEvent || window.event;
var target = e.target || e.srcElement;
var imgArray = obj.getElementsByTagName("img");
for(var i=0;i<imgArray.length;i++){
   imgArray[i]._num = i;
   imgArray[i].onclick=function(){
    if(obj.rateFlag) return;
  //  alert(this._num+1);
 var inputid=this.parentNode.previousSibling;
 inputid.value=this._num+1;
   }
}
if(target.tagName=="IMG"){
   for(var j=0;j<imgArray.length;j++){
    if(j<=target._num){
     imgArray[j].src=imgSrc_2;
    } else {
     imgArray[j].src=imgSrc;
    }
 target.parentNode.onmouseout=function(){
 var imgnum=parseInt(target.parentNode.previousSibling.value);
  for(n=0;n<imgArray.length;n++){
   imgArray[n].src=imgSrc;
  }
  for(n=0;n<imgnum;n++){
   imgArray[n].src=imgSrc_2;
  }
 }
   }
} else {
  return false;
}
}
</script>

<title>就诊评价</title>
</head>
<body style="min-width: 980px;"> 
	 <jsp:include page="header.jsp"></jsp:include>
     <div class="g-wrapper"> 
     <div id="gc" style="min-height: 248px;"> 
		 <div id="g-cfg" data-module="userinfo" class="gp-person g-container" data-fo-help="1">
	     <div id="g-breadcrumb">
         <a href="#">首页</a> 
         <span>&gt;&nbsp;我的评价</span> 
  	 </div>
	 <div class="wrap">
	 <div class="person-left">
	 <p class="left-head js-user-avatar">
			    			<img src="./files_ji/young-m.png" alt="男">
		<span><strong>姜栋煜</strong>欢迎来到智能挂号系统</span>
	</p>
	<div class="clear"></div>	
	<ul class="none-border">
		<li class="myorder"><a class="current myorder-a" href="evaluateDoctor.jsp"><span class="gi2 gi-order"></span>评价医生</a></li>
		<li class="my-plus"><a class=" my-plus-a" href="evaluateDoctorHistroy.jsp"><span class="gi2 gi-plus"></span>历史评价</a></li>
	</ul>

</div>
		<div class="person-right">
				<div class="order-remind  g-clear">
					<span class="icon gi2 gi-order-big"></span>
					<div class="meta">
						<h1>评价就诊</h1>
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
                  <table cellspacing="0" cellpadding="0">
						<caption></caption>
						<colgroup>
						 <col width="144px;">
						 <col width="160px;" class="">
						 <col width="100px;">
						 <col width="70px;">
						 <col width="80px;" class="order-cost">
						 <col width="130px;"> 
						</colgroup>
						<thead>
						 <tr>
						  <th>就诊日期</th>
						  <th class="text-left">医生</th>
						  <th>就诊人</th>
						  <th class="text-right">总花费</th>
						  <th>状态</th>
						  <th></th>
						 </tr>
						</thead>
						<tbody>
						<tr>
						<td>2012-01-02 </td>
						<td class="text-left"> <a href="#" target="_blank">Doctor1<br></a><a href="#" target="_blank">内科-风湿科</a><br></td>
						<td>姜栋煜 </td>
						<td class="text-right red-word">72.00</td>
						<td>已结束</td>
						<td></td>
						</tr>
						</tbody>
					</table> 
                  
                   <form action="" method="post">
				   	<table cellspacing="0" cellpadding="0">
						<caption></caption>
						<colgroup>
						 <col width="340px;">
						 <col width="340px;" class="">
						
						</colgroup>
						<thead>
						 <tr>
						  <th>输入评论</th>
						  <th  class="text-left">评分</th>
						  
						 </tr>
						</thead>
						<tbody>
					 <tr>
					 <td>
					  <input type="textarea" style="width:300px;height:100px">
                      </td>
					
					  	
					  <td class="text-left">
					  <input type="hidden" value="0"><p onmouseover="rate(this,event)"> 医生态度：
                         <img src="files_ji/icon_star_1.gif" title="很烂"> 
                         <img src="files_ji/icon_star_1.gif" title="一般">
                         <img src="files_ji/icon_star_1.gif" title="还好">
                         <img src="files_ji/icon_star_1.gif" title="较好">
                         <img src="files_ji/icon_star_1.gif" title="很好">
                      </p>
                      <input type="hidden" value="0"><p onmouseover="rate(this,event)">治疗效果：
                         <img src="files_ji/icon_star_1.gif" title="很烂">
                         <img src="files_ji/icon_star_1.gif" title="一般">
                         <img src="files_ji/icon_star_1.gif" title="还好">
                         <img src="files_ji/icon_star_1.gif" title="较好">
                         <img src="files_ji/icon_star_1.gif" title="很好">
                      </p>
                      <input type="hidden" value="0"><p onmouseover="rate(this,event)">其他因素：
                         <img src="files_ji/icon_star_1.gif" title="很烂">
                         <img src="files_ji/icon_star_1.gif" title="一般">
                         <img src="files_ji/icon_star_1.gif" title="还好">
                         <img src="files_ji/icon_star_1.gif" title="较好">
                         <img src="files_ji/icon_star_1.gif" title="很好">
                      </p>
                      <br/>
                      <input type="submit" value="提交"></input>
					  </td>
					  </tr>
					 </tbody>
				 </table> 

			</form>
     <div class="pagination">
    <div class="pagers">
     <form action="" name="qPagerForm">
        <input type="hidden" name="pageNo" value="1">
     </form>
   </div>
   <div class="clear"></div>
   </div>
 </div> 
 </div>
	 <div class="clear"></div>
	 </div>
 </div> 
<div class="helpqs-list hide">
	
</div>

	</div>
	<div id="gf">
	<div class="g-container">
		<div class="clear"></div>
		<p class="copyright">
			版权所有：系统分析小组&nbsp;&nbsp;&nbsp; 	
		</p>
	</div>
</div>
 
</div></body></html>