<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="com.byland.bylfc.dao.CommentsDao"%>
<%@page import="java.util.List"%>
<%@page import="com.byland.bylfc.entity.Message"%>
<%@page import="com.byland.bylfc.entity.Users"%>
<%@page import="com.byland.bylfc.dao.MessageDao"%>
<%@page import="javax.sql.DataSource"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<style type="text/css">
.note{
	width:70%;
	margin-left: auto;
	margin-right: auto;
	background-color: #eeeeee;
	padding:1em;
	margin-bottom: 1em;
}
</style>
</head>
<body>
<%
		DataSource ds=(DataSource)application.getAttribute("DS");
		Users u=(Users)session.getAttribute("others_info");
		List<Message> list=MessageDao.showsinglemessage(ds,u.getId());
		if(list.size()!=0){
		for(Message li:list){
	%>
		<div class="note">
			<div class="nickname">
				<a href="find?nickname=<%=li.getAuthor()%>"><%=li.getAuthor()%></a> 
			</div>
			<div class="content">
				<h2><%=li.getContent()%></h2>	
			</div>
			<div class="time"><%=li.getTime()%></div>
			<div style="text-align:right">
				<a href="love?id=<%=li.getId()%>">赞(<%=MessageDao.loveNum(ds,li.getId())%>)</a>
				<a href="commentslist.jsp?message_id=<%=li.getId()%>">评论(<%=CommentsDao.commentsNum(ds,li.getId())%>)</a>
			</div>
		</div>
	<%
			}
		}else{
	%>		
		<h2>当前无消息记录</h2>
	<%
		}
	%>
</body>
</html>