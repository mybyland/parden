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
<%
		Users u=(Users)session.getAttribute("user_info");
	%>


	<%
	DataSource ds=(DataSource)application.getAttribute("DS");
		/* String idValue=request.getParameter("id");
		int id=Integer.parseInt(idValue); */
		List<Users> followinglist=UsersDao.followingList(ds,u.getId());
		if(followinglist.size()!=0){
		for(Users users:followinglist){
	%>	
		<div>
			<h3>
				<a href="find?nickname=<%=users.getNickname()%>">
				<%=users.getNickname()%></a>


				<a href="delfollowing.jsp?id=<%=users.getId()%>">取消添加</a>
			</h3>
		</div>
	<% 
		}
		}else{
	%>
			<div><h2>当前没有添加好友</h2></div>
	<%
		}
	%>
</body>
</html>