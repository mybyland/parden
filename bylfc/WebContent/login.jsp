<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>用户登录_农产品信息交互平台</title>


<script type="text/javascript">


function clearText(e) {
		e.value = "";

	}

	function showHint(e, hint) {
		if (e.value.length == 0) {
			e.value = hint;
		}

	}

</script>
<style type="text/css">
body {
	background-image: url("images/bga1.jpg");
	background-repeat:no-repeat; 
	margin : 0px;
	padding: 0px;
	text-align: center;
	width: 100%;
	
	
}
.login {
	width: 30%;
	height: 200px;
	margin-top:150px;
	float: left;
	margin-left: 400px;
	padding:50px;
}


.container {
	width: 67%;
	height: auto;
	
}



</style>
</head>
<body>
	<div class="login">

			<%
				String errorname = (String) request.getAttribute("error_name");
				String errorcode = (String) request.getAttribute("error_code");
				String nullinfo = (String) request.getAttribute("null_info");
				if (errorname != null) {
			%>
			<h1><%=errorname%></h1>
			<%
				}
				if (errorcode != null) {
			%>
			<h1><%=errorcode%></h1>
			<%
				}
				if (nullinfo != null) {
			%>
			<h1><%=nullinfo%></h1>
			<%
				}
			%>
			<form action="login" method="post">
				<div>
					<label>账号:</label> 
					<input  type="text"   name="nickname" id="nickname"
						value="请输入用户名" onfocus="clearText(this)"
				onblur="showHint(this,'请输入用户名')"/>
				</div>
				<div style="margin-top: 20px;">
					<label>密码:</label> 
					<input type="password" name="password"
						id="password" value="请输入密码" onfocus="clearText(this)"
				onblur="showHint(this,'请输入密码')"  />
				</div>
				<div id="action" style="margin-top: 20px;">
					<input type="submit" name="login" value="登  录" />
				</div>
				
				<div>还没有账号!<a href="register.jsp">立即注册</a></div>
				
			</form>

		</div>

</body>
</html>