<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>接诊信息-个人中心</title>
<script type="text/javascript" src="./files_ji/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="./files_ji/jquery-ui.min.js"></script>
<script type="text/javascript" src="./files_ji/quiz.js"></script>
<link type="text/css" rel="stylesheet" href="./files_ji/style_ji.css" >
<link type="text/css" rel="stylesheet" href="./files_ji/bootstrap.min.css" >
</head>
<body style="min-width: 980px;">
	<jsp:include page="header.jsp" />
	<div id="g-wrapper" class="g-wrapper ">
		<div id="gh">
			<div id="g-cfg" class="gp-person g-container">
				<div id="g-breadcrumb">
					<a href="#">首页</a>
					<span>&gt;&nbsp;新增病人信息</span>
				</div>
				<div class="wrap">
					<div class="person-left">
						<p class="left-head js-user-avatar">
							<img src="./files_ji/young-m.png" />
							<span>
								<strong>Admin</strong>
								欢迎来到数字医院智能系统
							</span>
						</p>
						<div class="clear"></div>
						<ul class="none-border">
							<li>
								<a href="doctorWorkData.jsp">
									<span></span>
									医生接诊数据
								</a>
							</li>
							<li>
								<a href="doctorSort.jsp" >
									<span></span>
									医生综合排名
								</a>
							</li>
							<li>
								<a href="patientInfoManage.jsp" class="current myorder-a">
									<span></span>
									病人信息管理
								</a>
							</li>
							<li>
								<a href="doctorInfoManage.jsp" >
									<span></span>
									医生信息管理
								</a>
							</li>							
						</ul>
					</div>
					<div class="person-right">
						<div class="order-list  border-left">
							<div class="g-blue-title title">修改病人信息</div>
						
							<div id="userinfo-display" class="gfm-line">
							 <div class="block-content collapse in">
                                <div class="span12">
                                     <form class="form-horizontal">
                                      <fieldset>
                                        <legend></legend>
                                         <div class="control-group">
                                          <label class="control-label" for="focusedInput">就诊卡号</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="text" placeholder="输入病人就诊卡号">
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="focusedInput">姓名</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="text" placeholder="输入病人姓名">
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="selectError">性别</label>
                                          <div class="controls">
                                            <select id="selectError">
                                              <option>男</option>
                                              <option>女</option>                                      
                                            </select>
                                          </div>
                                        </div>                                        
                                        <div class="control-group">
                                          <label class="control-label" for="focusedInput">年龄</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="text">
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="focusedInput">住址</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="text">
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="focusedInput">电话</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="text">
                                          </div>
                                        </div> 
                                        <div class="control-group">
                                          <label class="control-label" for="focusedInput">电子邮箱</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput" type="text">
                                          </div>
                                        </div>
                                        <div style="margin:50px 0 0 250px">
                                          <button type="submit" class="btn btn-primary btn-large">保存</button>
                                          <button type="reset" class="btn btn-warning btn-large">重置</button>
                                        </div>                                                                     
                                      </fieldset>
                                    </form>

                                </div>
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