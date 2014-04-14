<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="com.byland.bylfc.dao.UsersDao"%>
<%@page import="com.byland.bylfc.entity.Comments"%>
<%@page import="com.byland.bylfc.entity.Message"%>
<%@page import="java.util.List"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="com.byland.bylfc.dao.MessageDao"%>
<%@page import="com.byland.bylfc.dao.CommentsDao"%>
<%@page import="com.byland.bylfc.entity.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>用户信息展示</title>
</head>
<body>


<%
		Users u=(Users)session.getAttribute("user_info");
	%>
<%
		DataSource ds=(DataSource)application.getAttribute("DS");
		
//		List<Message> list=MessageDao.showsinglemessage(ds,u.getId());
		List<Message> list=MessageDao.showAllmessage(ds, u.getId());
		if(list.size()!=0){
		for(Message li:list){
			List<Comments> commentslist=CommentsDao.showcomments(ds,li.getId());
	%>
		<div class="note">
			<div class="nickname">
				<a href="singleinfo.jsp"><%=li.getAuthor()%></a> 
			</div>
			<div class="area">
				<h2><%=li.getContent()%></h2>	
			</div>
			<div class="time">
			<div style=" float: left ;"><%=li.getTime()%></div>
			<div style="text-align:right; float: right;">
				<a href="love?id=<%=li.getId()%>">赞(<%=MessageDao.loveNum(ds,li.getId())%>)</a>
				<a href="commentslist.jsp?message_id=<%=li.getId()%>">评论(<%=CommentsDao.commentsNum(ds,li.getId())%>)</a>
				<!--  <a href="deletenote?id=<%=li.getId()%>">删除</a> -->
			</div>
			</div>
			------------------------------------------
		</div>
	<% 
		if(commentslist.size()!=0){
		for(Comments comments:commentslist){
	%>	
		<div class="comments">
			<div class="com_comtent">
				<h4><%=comments.getCom_content()%></h4> 
			</div>
			<div class="com_time">
				<h5><%=comments.getCom_time()%>@<a><%=comments.getCom_author()%></a></h5>	
			</div>
			<div style="text-align:right">
				<a href="delcomments?id=<%=comments.getId()%>">删除</a>
			</div>
		</div>
		--------------------------------------------------------------
	<% 
			}
		}else{
	%>
		
	<%
		}
	%>
		
	<%
			}
		}else{
	%>		
		<h2>当前无消息记录,<a href="homepage.jsp">现在去发表</a></h2>
	<%
		}
	%>

</body>
</html>