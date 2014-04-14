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
<title>Insert title here</title>
</head>
<body>

	<h2>推荐添加</h2>
	<%
		Users u=(Users)session.getAttribute("user_info");
	%>
				<%
				
				DataSource ds=(DataSource)application.getAttribute("DS");
		List<Users> alllist=UsersDao.usersList(ds,u.getId());
		//Set<Users> friendslist=UsersDao.recommendfriends(ds,u.getId());
		//List<Users> followinglist=UsersDao.followingList(ds,u.getId());
		if(alllist.size()!=0){
		for(Users users:alllist){
	%>
		<div>
	
			<h3>
				<a href="find?nickname=<%=users.getNickname()%>" style="text-decoration: none; text-align: left;"><%=users.getNickname()%></a>
				
				<a href="addfollowing.jsp?id=<%=users.getId()%>">加好友</a>
			</h3>
		</div>
	<%
		}
		}else{
	%>
		<h3>当前无推荐好友</h3>
	<%
		}
	%>
		
</body>
</html>