<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css">
		<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
		<title>数据库课程设计之高校智能排课系统</title>
		<style type="text/css">
			*{margin: 0px;padding: 0px;}
			.main{
				margin-top:0;
				text-align: center;
			}
			.main ul{
				display: inline-block;
			}
			.font_big{
				font-size: 30px;
			}
			.mid{
				text-align: center;				
			}
			select{
				height: 30px;
				font-size: 20px;
				margint:10px 150px;
				border-radius: 5px;
			}
			body{
				margin-top: 75px;
				background: #000 url(img/background.jpg) center center fixed no-repeat;
				-moz-background-size:cover;
				-webkit-background-size:cover;
				-ms-background-size:cover;
				-o-background-size:cover;
				background-size:cover;
				}
				/*1024x768*/
				@media only all and (max-width:1024px) (max-heigth: 768px){
					body{
						margin-top: 75px;
						-moz-background-size:1024px 768px;
						-webkit-background-size:1024px 768px;
						-ms-background-size:1024px 768px;
						-o-background-size:1024px 768px;
						background-size:1024px 768px;
					}
				}
				/*640x480*/
				@media only all and (max-width:1024px) (max-heigth: 768px){
					body{
						margin-top: 75px;
						-moz-background-size:640px 480px;
						-webkit-background-size:640px 480px;
						-ms-background-size:640px 480px;
						-o-background-size:640px 480px;
						background-size:640px 480px;
					}
				}
		</style>
    <title>teacher manager</title>
  </head>
  
  <body>
  <div class="main">
	  	<ul class="nav nav-pills">
			<li  class="active"><a href="test/teacher.jsp">教师信息</a><span></span></li>
			<li><a href="test/class.jsp" >班级信息</a><span></span></li>
			<li><a href="test/course.jsp">课程信息</a><span></span></li>
			<li><a href="test/classcourse.jsp">班级课程信息</a><span></span></li>
			<li><a href="test/user.jsp">个人信息</a><span></span></li>
		</ul>
	</div>
  <div class="col-lg-6 col-lg-offset-3">
				<div class="panel panel-primary">
					<div class="panel-heading font_big">数据库课程设计之高校智能排课系统</div>
					<div class="panel-body">
						<div class="jumbotron col-lg-8 col-lg-offset-2 page-hearder" >
							<form id="ff" name="rr" class="bs-example bs-example-form" role="form" action="myteacher!doManaTeacher.action" method="post">
						        <div class="input-group">
						            <select name="select" >
										<option value="add">添加教师</option>
										<option value="alter">修改</option>
									</select>
						        </div>
						        <br>
						        <div class="input-group">
						            <span class="input-group-addon">教师编号:</span>
						            <input type="text"  name="tId" id="tId"  class="form-control">
						        </div>
						        <br>
						        <div class="input-group">
						            <span class="input-group-addon">教师名:</span>
						            <input type="text" name="tName" id="tName" class="form-control">
						        </div>
						        <br>
						        <div class="input-group">
						            <span class="input-group-addon">任职课程:</span>
						            <input type="text" name="courseName" id="courseName" class="form-control">
						        </div>
						        <br>
						        <div class="input-group">
						            <span class="input-group-addon">时间:</span>
						            &nbsp;&nbsp;&nbsp;&nbsp;
						            <label><input type="checkbox" id="workday" name="workday" value="1">周一</label>
						            &nbsp;&nbsp;
									<label><input type="checkbox" id="workday" name="workday" value="2">周二</label>
									&nbsp;&nbsp;
									<label><input type="checkbox" id="workday" name="workday" value="3">周三</label>
									&nbsp;&nbsp;
									<label><input type="checkbox" id="workday" name="workday" value="4">周四</label>
									&nbsp;&nbsp;
									<label><input type="checkbox" id="workday" name="workday" value="5">周五</label>
									&nbsp;&nbsp;
						        </div><br>
						        <br>
						        <div class="col-lg-12 mid">
									<input type="submit" name="btn" id="btn" class="btn btn-info" value="提交" />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="reset" name="btn2" id="btn2" class="btn btn-danger" value="重填" />
									<br /><br />
									<a href="nav.jsp">返回首页</a>
						       </div>								
						</form>
					</div>
				</div>
				<div class="panel-footer mid">数据库课程设计之高校智能排课系统 计算机工程学院版权所有</div>
			</div>
		</div>
  </body>
</html>