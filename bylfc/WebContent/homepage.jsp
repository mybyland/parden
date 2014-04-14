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
<title>个人中心_农产品信息交互平台</title>

<script type="text/javascript">

function Function2() {
	var n = document.getElementById("sp").innerHTML;
	n = parseInt(n) - 1;

	document.getElementById("sp").innerText = n;
}

	function clearText(e) {
			e.value = "";

		}
		function showHint(e, hint) {
			if (e.value.length == 0) {
				e.value = hint;
			}

		}
	function scrollAD() {
		document.getElementById("ad").style.top = document.body.scrollTop  +"px";
	}
	window.onscroll = scrollAD;
	
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
padding-top:30px;
text-align:center;
background-color:#ddd;
background-image: url("images/bgd2.jpg");
} 
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
margin-top:-40px;

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


#right{height:965px;
text-align:center;
background-color:#ccc;
background-image: url("images/bgd5.jpg");
} 
.content{width:98px; 
height:148px; 
background-color:#c00; 
border:1px solid #999; 
float:left;

} 



#gr1{
margin-left:100px;
width: 700px;
background-color: #008080; 
overflow: auto;
}
#gr2{
font-size: 20px;
font-style: inherit;
float: right;
margin-top: 0px;
}
#gr3{
font-size: 20px;
font-style: inherit;
float: left;
margin-top: 0px;
margin-left: 200px;

}

#gr4{
text-align: center;
	height: 400px;
	padding-left:20px;
	float: left;
	overflow: auto;
}

#gr5{
width: 800px;
height: 200px;
text-align: center;
background-color: #6699FF;
margin-left: 50px;
margin-top: 50px;
float: left;
}

#gr6{

width: 600px;
background-color: white;
 height:300px;
overflow: scroll;
margin-left: 50px;
border: 1px solid;

}





.note{
	width:90%;
	margin-left: auto;
	margin-right: auto;
	background-color: #FAFAFA;
	padding:1em;
	margin-bottom: 1em;
	border-bottom:outset  2px;
}


.nickname {
text-align:left;

padding-left: 35px;

}
.nickname a {
text-decoration: 
}

.area {
text-align:left;

padding-left: 100px;

}

.time {
text-align:left;
background-color:yellow;
padding-left: 35px;
margin-bottom: 30px;
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
<a href="todb.jsp">市场动态</a> 
<a href="todc.jsp">分析报告</a> 
<a href="todd.jsp">批发市场</a> 
<a href="tode.jsp">在线交流</a> 
<a href="homepage.jsp">用户个人空间</a>  
<a href="foryou.jsp">客户服务</a> 
<span>&nbsp;</span> 

</div> 

<div  id="right">
<div id="gr1">
<h4>欢迎光临：<a href="#" style="font-size: 20px;color: red;"><%=u.getNickname()%></a>的个人中心</h4>
<div id="gr2">
<div id="gr3"><div style="font-size:15px">
				<form action="find" method="post">
					<input type="text" name="soso" value="搜索用户" onfocus="clearText(this)"
				onblur="showHint(this,'搜索用户')"/>
					<input type="submit" value="soso"/>
				</form>
			</div></div>
			
			<a href="exit"> 退出</a>
			
			<%
			DataSource ds=(DataSource)application.getAttribute("DS");
			Info info=UsersDao.singleinfo(ds,u.getId());
			Some some=UsersDao.showusers(ds,u.getId());
		%>
			<div id="gr5">
			<!-- <h2 align="left" style="margin-top: 2px;">个人信息展示：</h2> -->
			<label style="font-size:1.2em; color: yellow;"><%=u.getNickname()%><a href="myinfo.jsp">个人资料</a></label>
			<%
					String sex,address;
					if(info!=null&&info.getSex()!=null){
						sex=info.getSex();
					}else{
						sex="暂未填写";
					}
					if(info!=null&&info.getAddress()!=null){
						address=info.getAddress();
					}else{
						address="暂未填写";
					}
				%>
				<hr noshade="noshade"/>
				<ol>
				<li> 性别:<%=sex%> </li>
				<li> 地址:<%=address%> </li>
  				<li> 我添加的用户：(<%=some.getFollowing()%>) </li>
  				<li> 添加我的用户：(<%=some.getFollower()%>) </li>
  				<li> 发布的信息(<%=some.getMessage()%>) </li>
  				<li></li>
  				<li></li>
  				<li></li>
  				<li></li>
				</ol>
				<table style="margin-left: 200px;padding-left:  20px;"><tr><th><a href="singlemessage.jsp">所有消息</a></th><th><a href="followinglist.jsp">我添加的用户</a></th><th><a href="followerlist.jsp">添加我的用户</a></th><th><a href="mypage.jsp">推荐的用户</a></th></tr></table>
			</div>
		</div>
			
			
			
				<div id="gr4">
			<h2 align="left" style="margin-top: 10px">供求发布平台：</h2>
			<form class="" action="sendmessage" method="post">
			<div style="text-align: right;padding-right: 25px">请简单描述产品需求或者提供方式并将字数保持在<span id="sp">300</span>字</div>
				
				<textarea rows="6" cols="80" id="area" name="content"
				onkeydown="Function2()"></textarea>
				
				<div align="right" style="padding-right: 40px;padding-top: 15px"> <input type="submit" value="产品信息发布"/></div>
				<input type="hidden" name="id" value="<%=u.getId()%>"/>
			</form>
			
			
			
			</div>
			<!--  -->
			<div id="gr6">
			<% List<Message> list=MessageDao.showsinglemessage(ds, u.getId());
			if(list.size()!=0){
			for(Message li:list){
			%>
			<div class="note">
				<div class="nickname">
				<a href="find?nickname=<%=li.getAuthor()%>"><%=li.getAuthor()%></a> 
				</div>
				<div class="area">
				<h2><%=li.getContent()%></h2>	
				</div>
				
				<div class="time">
				
				<div style="float: left;"><%=li.getTime()%> <font color="#2828FF" size="2px">来自平台</font> </div>
				
				<div style="text-align:right;float: right; ">
				<a>好评(<%=MessageDao.loveNum(ds,li.getId())%>)</a>
				<a>评论(<%=CommentsDao.commentsNum(ds,li.getId())%>)</a>
				<a href="deletenote?id=<%=li.getId()%>">删除</a>
				</div>
				
				</div>
				
			</div>
			
			
			<%}
			} else{%>
			<h2>当前无记录</h2>
			<% }%>
			
			</div>
			</div>
			
			
			
			
		
		
			
			


<div id="footer">
<a href="#">关于我们</a>
<a href="#">相关链接</a>
<a href="#">学习摘要</a>
<a href="#">联系方式</a>

</div>

</div>



</div>


</body>
</html>