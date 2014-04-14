<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="com.byland.bylfc.entity.Some"%>
<%@page import="com.byland.bylfc.dao.UsersDao"%>
<%@page import="com.byland.bylfc.entity.Info"%>
<%@page import="com.byland.bylfc.dao.CommentsDao"%>
<%@page import="com.byland.bylfc.dao.MessageDao"%>
<%@page import="com.byland.bylfc.entity.Message"%>
<%@page import="java.util.List"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="com.byland.bylfc.entity.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>编辑_农产品信息交互平台</title>
<style type="text/css">
* {margin:0px; 
padding:0px; 
} 
body{

}
#top,#nav{width:auto;
margin:2px auto;} 
#top{height:80px; 
font-size:38px;
padding-top:30px;
text-align:center;
background-color:#ddd;} 
#nav2{height:50px; 
padding-left:500px;
background-color:#fc0;} 
 

 
.content{width:98px; 
height:148px; 
background-color:#c00; 
border:1px solid #999; 
float:left;} 
#content2{background-color:#f60;} 
#footer{height:40px; 

margin-bottom:2px;
margin-top:0px;

width:100%;background:#FF5F49;color:#FFFFFF; font-family:黑体;
 text-align:center; font-size:13px; font-weight:bold;

} 
#footer a,span{
border-left:#CCCCCC 1px solid; display:inline-block;
 height:40px; line-height:40px; padding:0px 10px; margin-left:-8px;} 

}
#footer a:link,a:visited,a:active{ text-decoration:none; color:#FFFFFF;} 
#footer a:hover { background:#FFDA2F;}


#container{
	margin-left:auto;
	margin-right:auto;
	width: 1002px;
	height: 1000px;
}





#nav{width:100%;background:#666666;color:#FFFFFF; font-family:黑体;
 text-align:center; font-size:13px; font-weight:bold;} 
#nav a,span {border-left:#CCCCCC 1px solid; display:inline-block;
 height:40px; line-height:40px; padding:0px 10px; margin-left:-8px;} 
#nav a:link,a:visited,a:active{ text-decoration:none; color:#FFFFFF;} 
#nav a:hover { background:#CCCCCC;} 

ul,li{margin:0;padding:0;list-style:none;}


#right{height:965px;
padding-left:200px;
text-align:center;
background-color:#ccc;} 
.content{width:98px; 
height:148px; 
background-color:#c00; 
border:1px solid #999; 
float:left;} 
#gr1{
margin-left:-100px;
width: 700px;
height:1000px;
background-color: #008080; 
}




</style>





</head>
<body>

<%
		Users u=(Users)session.getAttribute("user_info");
	%>
<div id="container">


<div id="top">农产品信息交互平台</div> 
<div id="nav">
<a href="index.jsp">首页</a> 
<a href="toda.jsp">今日要闻</a> 
<a href="pushnong.jsp">农产品信息</a> 
<a href="todb.jsp/">市场动态</a> 
<a href="todc.jsp">分析报告</a> 
<a href="todd.jsp">批发市场</a> 
<a href="tode.jsp">在线交流</a> 
<a href="homepage.jsp">用户个人空间</a>  
<a href="foryou.jsp">客户服务</a> 
<span>&nbsp;</span> 

</div> 

<div  id="right">

<div id="gr1">
<center>

		<div class="container">
			<div class="head"></div>
			
			<div class="main">
			
			
				<div class="left">
					<%
		DataSource ds=(DataSource)application.getAttribute("DS");
		/* Users u=(Users)request.getAttribute("USERS"); */
		Info info=UsersDao.singleinfo(ds,u.getId());
	%>
	<h2>修改基本信息：
		<a href="homepage.jsp" style="text-align:right;float:right;">完成</a>
	</h2>
	<form action="updateinfo" method="post">
		<div style="padding-left: 12px;">
			<label>性别:</label>
			<input type="radio" name="sex" value="男"/>男
			<input type="radio" name="sex" value="女"/>女
		</div>
		<div style="height: 1em;"></div>
		<div style="padding-left: 12px;">
			<label>地址:</label>
			<select name="address">
				<optgroup label="湖南省">
					<option value="长沙">长沙</option>
					<option value="株洲">株洲</option>
					<option value="湘潭">湘潭</option>
					<option value="衡阳">衡阳</option>
					<option value="常德">常德</option>
					<option value="岳阳">岳阳</option>
					<option value="娄底">娄底</option>
				</optgroup>
			</select>
		</div>
		<div style="height: 1em;"></div>
		<input type="hidden" name="id" value="<%=u.getId()%>"/>
		<div style="height: 1em;"></div>
		<div style="padding-left: 30px;">
			<input type="reset" value="重置"/>
			<input type="submit" value="保存修改"/>
		</div>
	</form>
					
				</div>
				<div class="right">
				
				</div>
			</div>

		</div>

	</center>




</div>


</div>






<div id="footer">
<a href="#">关于我们</a>
<a href="#">相关链接</a>
<a href="#">学习摘要</a>
<a href="#">联系方式</a>

</div>

</div>
</body>
</html>