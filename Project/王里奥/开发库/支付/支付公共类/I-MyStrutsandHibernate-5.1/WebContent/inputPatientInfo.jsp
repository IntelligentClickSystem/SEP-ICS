﻿<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>接诊信息-个人中心</title>	
<script type="text/javascript" src="./files_ji/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="./files_ji/jquery-ui.min.js"></script>
<script type="text/javascript" src="./files_ji/quiz.js"></script>
<link type="text/css" rel="stylesheet" href="./files_ji/style_ji.css">
<link type="text/css" rel="stylesheet" href="./files_ji/styles.css">
<link type="text/css" rel="stylesheet" href="./files_ji/bootstrap.min.css">

 <script>
        $(function() {
            
        });
        </script>
</head>
<body style="min-width: 980px;">
	<jsp:include page="header.jsp" />
	<div id="g-wrapper" class="g-wrapper ">
		<div id="gh">
			<div id="g-cfg" class="gp-person g-container">
				<div id="g-breadcrumb">
					<a href="#">首页</a> <span>&gt;&nbsp;医生排名</span>
				</div>
				<div class="wrap">
					<div class="person-left">
						<p class="left-head js-user-avatar">
							<img src="./files_ji/young-m.png"/>
							<span><strong>Admin</strong>欢迎来到数字医院智能系统</span>
						</p>
						<div class="clear"></div>
						<ul class="none-border">
							<li >
								<a href="doctorWorkData.jsp">
								   <span></span>医生接诊数据
								</a></li>
							<li>
								<a href="doctorSort.jsp" class="current myorder-a"><span></span>医生综合排名</a>
							</li>
							<li>
								<a href="doctorSort.jsp" ><span></span>录入病人信息</a>
							</li>	
							<li>
								<a href="doctorSort.jsp"><span></span>录入医生信息</a>
							</li>	
							<li>
								<a href="doctorSort.jsp"><span></span>修改医生信息</a>
							</li>	
							<li>
								<a href="doctorSort.jsp"><span></span>删除医生信息</a>
							</li>								
						</ul>
					</div>
			
						
							
							
						 <div class="span9" id="content">	
							<div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Bootstrap dataTables</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                    
  									<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
										<thead>
											<tr>
												<th>Rendering engine</th>
												<th>Browser</th>
												<th>Platform(s)</th>
												<th>Engine version</th>
												<th>CSS grade</th>
											</tr>
										</thead>
										<tbody>
											<tr class="odd gradeX">
												<td>Trident</td>
												<td>Internet
													 Explorer 4.0</td>
												<td>Win 95+</td>
												<td class="center"> 4</td>
												<td class="center">X</td>
											</tr>
											<tr class="even gradeC">
												<td>Trident</td>
												<td>Internet
													 Explorer 5.0</td>
												<td>Win 95+</td>
												<td class="center">5</td>
												<td class="center">C</td>
											</tr>
											<tr class="odd gradeA">
												<td>Trident</td>
												<td>Internet
													 Explorer 5.5</td>
												<td>Win 95+</td>
												<td class="center">5.5</td>
												<td class="center">A</td>
											</tr>
											<tr class="even gradeA">
												<td>Trident</td>
												<td>Internet
													 Explorer 6</td>
												<td>Win 98+</td>
												<td class="center">6</td>
												<td class="center">A</td>
											</tr>
											<tr class="odd gradeA">
												<td>Trident</td>
												<td>Internet Explorer 7</td>
												<td>Win XP SP2+</td>
												<td class="center">7</td>
												<td class="center">A</td>
											</tr>
											<tr class="even gradeA">
												<td>Trident</td>
												<td>AOL browser (AOL desktop)</td>
												<td>Win XP</td>
												<td class="center">6</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Firefox 1.0</td>
												<td>Win 98+ / OSX.2+</td>
												<td class="center">1.7</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Firefox 1.5</td>
												<td>Win 98+ / OSX.2+</td>
												<td class="center">1.8</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Firefox 2.0</td>
												<td>Win 98+ / OSX.2+</td>
												<td class="center">1.8</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Firefox 3.0</td>
												<td>Win 2k+ / OSX.3+</td>
												<td class="center">1.9</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Camino 1.0</td>
												<td>OSX.2+</td>
												<td class="center">1.8</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Camino 1.5</td>
												<td>OSX.3+</td>
												<td class="center">1.8</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Netscape 7.2</td>
												<td>Win 95+ / Mac OS 8.6-9.2</td>
												<td class="center">1.7</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Netscape Browser 8</td>
												<td>Win 98SE+</td>
												<td class="center">1.7</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Netscape Navigator 9</td>
												<td>Win 98+ / OSX.2+</td>
												<td class="center">1.8</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Mozilla 1.0</td>
												<td>Win 95+ / OSX.1+</td>
												<td class="center">1</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Mozilla 1.1</td>
												<td>Win 95+ / OSX.1+</td>
												<td class="center">1.1</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Mozilla 1.2</td>
												<td>Win 95+ / OSX.1+</td>
												<td class="center">1.2</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Mozilla 1.3</td>
												<td>Win 95+ / OSX.1+</td>
												<td class="center">1.3</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Mozilla 1.4</td>
												<td>Win 95+ / OSX.1+</td>
												<td class="center">1.4</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Mozilla 1.5</td>
												<td>Win 95+ / OSX.1+</td>
												<td class="center">1.5</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Mozilla 1.6</td>
												<td>Win 95+ / OSX.1+</td>
												<td class="center">1.6</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Mozilla 1.7</td>
												<td>Win 98+ / OSX.1+</td>
												<td class="center">1.7</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Mozilla 1.8</td>
												<td>Win 98+ / OSX.1+</td>
												<td class="center">1.8</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Seamonkey 1.1</td>
												<td>Win 98+ / OSX.2+</td>
												<td class="center">1.8</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Gecko</td>
												<td>Epiphany 2.20</td>
												<td>Gnome</td>
												<td class="center">1.8</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Webkit</td>
												<td>Safari 1.2</td>
												<td>OSX.3</td>
												<td class="center">125.5</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Webkit</td>
												<td>Safari 1.3</td>
												<td>OSX.3</td>
												<td class="center">312.8</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Webkit</td>
												<td>Safari 2.0</td>
												<td>OSX.4+</td>
												<td class="center">419.3</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Webkit</td>
												<td>Safari 3.0</td>
												<td>OSX.4+</td>
												<td class="center">522.1</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Webkit</td>
												<td>OmniWeb 5.5</td>
												<td>OSX.4+</td>
												<td class="center">420</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Webkit</td>
												<td>iPod Touch / iPhone</td>
												<td>iPod</td>
												<td class="center">420.1</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Webkit</td>
												<td>S60</td>
												<td>S60</td>
												<td class="center">413</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Presto</td>
												<td>Opera 7.0</td>
												<td>Win 95+ / OSX.1+</td>
												<td class="center">-</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Presto</td>
												<td>Opera 7.5</td>
												<td>Win 95+ / OSX.2+</td>
												<td class="center">-</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Presto</td>
												<td>Opera 8.0</td>
												<td>Win 95+ / OSX.2+</td>
												<td class="center">-</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Presto</td>
												<td>Opera 8.5</td>
												<td>Win 95+ / OSX.2+</td>
												<td class="center">-</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Presto</td>
												<td>Opera 9.0</td>
												<td>Win 95+ / OSX.3+</td>
												<td class="center">-</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Presto</td>
												<td>Opera 9.2</td>
												<td>Win 88+ / OSX.3+</td>
												<td class="center">-</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Presto</td>
												<td>Opera 9.5</td>
												<td>Win 88+ / OSX.3+</td>
												<td class="center">-</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Presto</td>
												<td>Opera for Wii</td>
												<td>Wii</td>
												<td class="center">-</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Presto</td>
												<td>Nokia N800</td>
												<td>N800</td>
												<td class="center">-</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>Presto</td>
												<td>Nintendo DS browser</td>
												<td>Nintendo DS</td>
												<td class="center">8.5</td>
												<td class="center">C/A<sup>1</sup></td>
											</tr>
											<tr class="gradeC">
												<td>KHTML</td>
												<td>Konqureror 3.1</td>
												<td>KDE 3.1</td>
												<td class="center">3.1</td>
												<td class="center">C</td>
											</tr>
											<tr class="gradeA">
												<td>KHTML</td>
												<td>Konqureror 3.3</td>
												<td>KDE 3.3</td>
												<td class="center">3.3</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeA">
												<td>KHTML</td>
												<td>Konqureror 3.5</td>
												<td>KDE 3.5</td>
												<td class="center">3.5</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeX">
												<td>Tasman</td>
												<td>Internet Explorer 4.5</td>
												<td>Mac OS 8-9</td>
												<td class="center">-</td>
												<td class="center">X</td>
											</tr>
											<tr class="gradeC">
												<td>Tasman</td>
												<td>Internet Explorer 5.1</td>
												<td>Mac OS 7.6-9</td>
												<td class="center">1</td>
												<td class="center">C</td>
											</tr>
											<tr class="gradeC">
												<td>Tasman</td>
												<td>Internet Explorer 5.2</td>
												<td>Mac OS 8-X</td>
												<td class="center">1</td>
												<td class="center">C</td>
											</tr>
											<tr class="gradeA">
												<td>Misc</td>
												<td>NetFront 3.1</td>
												<td>Embedded devices</td>
												<td class="center">-</td>
												<td class="center">C</td>
											</tr>
											<tr class="gradeA">
												<td>Misc</td>
												<td>NetFront 3.4</td>
												<td>Embedded devices</td>
												<td class="center">-</td>
												<td class="center">A</td>
											</tr>
											<tr class="gradeX">
												<td>Misc</td>
												<td>Dillo 0.8</td>
												<td>Embedded devices</td>
												<td class="center">-</td>
												<td class="center">X</td>
											</tr>
											<tr class="gradeX">
												<td>Misc</td>
												<td>Links</td>
												<td>Text only</td>
												<td class="center">-</td>
												<td class="center">X</td>
											</tr>
											<tr class="gradeX">
												<td>Misc</td>
												<td>Lynx</td>
												<td>Text only</td>
												<td class="center">-</td>
												<td class="center">X</td>
											</tr>
											<tr class="gradeC">
												<td>Misc</td>
												<td>IE Mobile</td>
												<td>Windows Mobile 6</td>
												<td class="center">-</td>
												<td class="center">C</td>
											</tr>
											<tr class="gradeC">
												<td>Misc</td>
												<td>PSP browser</td>
												<td>PSP</td>
												<td class="center">-</td>
												<td class="center">C</td>
											</tr>
											<tr class="gradeU">
												<td>Other browsers</td>
												<td>All others</td>
												<td>-</td>
												<td class="center">-</td>
												<td class="center">U</td>
											</tr>
										</tbody>
									</table>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
                    </div>
							
							
							

							<div class="pagination">
								<div class="pagers">
									<form action="" name="qPagerForm">
										<input type="hidden" name="pageNo" value="1" />
									</form>
								</div>
								<div class="clear"></div>
							</div>

						</div>
					</div>
					<div class="clear"></div>

				</div>
			</div>
		</div>
		<div id="gf">
			<div class="g-container">
				<div class="clear"></div>
				<p class="copyright">版权所有：软件工程实践小组&nbsp;&nbsp;&nbsp;</p>
			</div>
		</div>

	</div>
</body>
</html>