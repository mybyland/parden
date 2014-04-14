<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>用户注册_农产品信息交互平台</title>
<script type="text/javascript">
	function test() {
		var nickname = document.getElementById("nickname");
		var password = document.getElementById("password");
		var errorname = document.getElementById("errorname");
		var errorcode = document.getElementById("errorcode");
		if (nickname.value.length == 0 || nickname.value == "请输入昵称") {
			errorname.innerText = "必须输入昵称";
		} else {
			errorname.innerText = "";
			truename.innerText = "该用户名通过";
		}
		var n = password.value;
		if (n.length == 0) {
			errorcode.innerText = "必须输入密码";
		} else {
			if (n.length < 6) {
				errorcode.innerText = "密码长度至少6位";
				truecode.innerText = "";
			} else {
				errorcode.innerText = "";
				truecode.innerText = "该密码通过";
			}
		}
		if (nickname.value.length != 0 && n.length >= 6)
			alert(nickname.value + "," + password.value);
	}
	function cleartext(e) {
		if (e.value == "请输入昵称" || e.value == "")
			e.value = "";
	}
	function showhint(e, hint) {
		if (e.value.length == 0)
			e.value = hint;
	}
</script>
<style type="text/css">
body {
	background-image: url("images/bgn1.jpg");
	margin: 0px;
	padding: 0px;
	text-align: center;
}

.container {

	width: 65%;
	height: auto;
}

.top {
	width: 100%;
	height: 150px;
}

.main {
	width: 100%;
	height: 530px;
background-color:#99FF33;
}

.left {
	width: 58%;
	height: 500px;
	float: left;
	margin-left: 25px;
}

.regiserror {


}

.regis1 {
	text-align: left;
	margin-top: 40px;
	margin-left: 5px;
}

.regis {
	padding-left: 80px;
	text-align: left;
	margin-top: 20px;
	margin-left: 20px;
	height: 300px;
}

.right {
	width: 30%;
	height: 380px;
	margin-right: 25px;
	margin-top: 100px;
	float: right;
	border-left-width: 2px;
	border-left-style: outset;
}

.bottom {
	width: 100%;
	height: 30px;
	text-align: inherit;
	font-style: normal;
	font-size: 14px;
	color: blue;
	margin-top: 15px;
	margin-bottom: 10px;
}

label {
	width: 4em;
	text-align: right;
	font-size: 20px;
	margin-right: 1em;
}

input {
	font-size: 16px;
	height: 1.3em;
	background-color: #EDE3DE;
	margin-top: 1em;
}

input:FOCUS {
	background-color: #eeeeee;
}

#action {
	margin-top: 1em;
	margin-bottom: 5em;
	
}

#action input {
	float: inherit;
	color: white;
	background-color: orange;
	text-align: center;
	height: 1.9em;
	width: 10em;
}

.xieyi {
	margin-top: 12px;
	font-size: 8px;
	color: blue;
}
</style>

</head>
<body>

<center>
		<div class="container">
			<div class="top">
				<!-- <img src="images/1.jpg" width="100%" height="100%" /> -->
			</div>
			<div class="main">


				<div class="left">

					<div class="regis1">
						
					</div>
					<div class="regis">
						<%
							String errorMessage = (String) request.getAttribute("ERROR");
							if (null != errorMessage) {
						%>
						<div class="regiserror">
						<h2 class="error">
						<img src="image/error.jpg" width="30px" height="30px"/>
						<%=errorMessage%></h2></div>
						
						<%
							}
						%>
						<form action="register" method="post">
							<div>
								<label><font color="red" size="4px">*</font>用户昵称:</label> <input
									type="text" name="nickname" id="nickname" value="" />
							</div>
							<div>
								<label><font color="red" size="4px">*</font>设置密码:</label> <input
									type="password" name="password" id="password" value="" />
							</div>
							<div>
								<label><font color="red" size="4px">*</font>确认密码:</label> <input
									type="password" name="password2" id="password" value="" />
							</div>
							<div id="action">
								<input type="submit" value="注册" />
								<div class="xieyi">
									<p>使用协议</p>
									<p>个人信息保护政策</p>
									<p>关于加强网络信息保护的决定</p>
								</div>
							</div>
						</form>


					</div>


				</div>


				<div class="right">
					<h3>提示信息:</h3>
					<p>欢迎您注册我们的平台</p>
					<ul>
					<li>您注册成功的昵称名,将作为</li>
					<li>您以后唯一的登录标识,用户</li>
					<li>名不可少于四个字符,密码尽</li>
					<li>可能长,至少六位字符，谢谢。</li>
					</ul>
					
					
					<a href="login.jsp">已有帐号?直接登录»</a>
				</div>


			</div>

			<div class="bottom">产权所有，翻版必究</div>

		</div>

	</center>









</body>
</html>