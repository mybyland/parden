<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="com.byland.bylfc.entity.Note"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>在线交流_农产品信息交互平台</title>
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
* {margin:0px; 
padding:0px; 
} 
body{

}

#top,#nav{width:auto;
margin:2px auto;} 
#top{height:80px; 
font-size:38px;
font-style:inherit;
font-weight:bolder;
padding-top:36px;
text-align:center;
background-color:#ddd;
background-image: url("images/bgd2.jpg");
} 
#nav2{height:50px; 
padding-left:500px;
background-color:#fc0;} 
#mid{height:300px;
text-align: center;

} 




#righta{
margin-right:4px;
width: 80px;
height: 210px;
background-color: #66CC00;
float: right;
margin-top: 40px

}

#right{height:965px;
padding-left:200px;
text-align:center;
background-color:#ccc;
background-image: url("images/bgd5.jpg");
} 
.content{width:98px; 
height:148px; 
background-color:#c00; 
border:1px solid #999; 
float:left;} 
#footer{height:40px; 

margin-bottom:2px;
margin-top:600px;

width:100%;background:#009933;color:#FFFFFF; font-family:黑体;
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
#nav{width:100%;background:#008000;color:#FFFFFF; font-family:黑体;
 text-align:center; font-size:13px; font-weight:bold;} 
#nav a,span {border-left:#CCCCCC 1px solid; display:inline-block;
 height:40px; line-height:40px; padding:0px 10px; margin-left:-8px;} 
#nav a:link,a:visited,a:active{ text-decoration:none; color:#FFFFFF;} 
#nav a:hover { background:#CCCCCC;} 

ul,li{margin:0;padding:0;list-style:none;}

#mmain{
margin-right:100px;
height: 900px;
width: 700px;
background-color: #008080; 
}


.note {
	background-color: #eeeeee;
	width: 60%;
	margin-top: 20px;
}
</style>
</head>
<body>


<div id="container">


<div id="top">农产品信息交互平台</div> 
<div id="nav">
<a href="index.jsp">首页</a> 
<a href="toda.jsp">今日要闻</a> 
<a href="pushnong.jsp">农产品信息</a> 
<a href="todb.jsp">市场动态</a> 
<a href="todc.jsp">分析报告</a> 
<a href="todd.jsp">批发市场</a> 
<a href="tode.jsp">在线交流</a> 
<a href="homepage.jsp">用户个人空间</a>  
<a href="foryou.jsp">客户服务</a> 
<span>&nbsp;</span> 
</div> 
<div id="mid"> 

<div id="right"> 

<div id="mmain" style="padding-top: 10px;">
<h2 style="margin-top: 50px;">在线交流</h2>

  <form action="talk" method="post"> 
    <textarea rows="10" cols="50" name="aa" style="margin-top: 10px; float: right;" ><%=application.getAttribute("message") %></textarea><br>
    <textarea rows="10" cols="20" name="message"  style="margin-top: -10px;"  onfocus="clearText(this)"
				onblur="showHint(this,'请输入用内容')" >请输入内容</textarea><br>
    
    <input type="text" name="username" value="请输入用户名" onfocus="clearText(this)"
				onblur="showHint(this,'请输入用户名')" style="margin-left: 45px;margin-top: 5px;"/>
   
   <input  type="submit" value="发送 "/>
   </form> 



<h2 style="margin-top: 200px;">留言板</h2>

<form action="note" method="post" style="margin-top: 100px;">
		<div><label>姓名</label><input name="author" type="text" /></div>
		<div><label>消息内容</label><textarea name="content" rows="5" cols="50"></textarea></div>
		<div><input type="submit" value="发布" /></div>
	</form>



</div>

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