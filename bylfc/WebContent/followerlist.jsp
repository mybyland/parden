<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="com.byland.bylfc.dao.UsersDao"%>
<%@page import="com.byland.bylfc.entity.Users"%>
<%@page import="java.util.List"%>
<%@page import="javax.sql.DataSource"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>移除好友</title>
</head>
<body>
<%
		DataSource ds=(DataSource)application.getAttribute("DS");
		/* String idValue=request.getParameter("id");
		int id=Integer.parseInt(idValue); */
		Users u=(Users)session.getAttribute("user_info");
		List<Users> followerlist=UsersDao.followerList(ds,u.getId());
		if(followerlist.size()!=0){
		for(Users users:followerlist){
	%>
		<div>
			<h3>
				<a href="find?nickname=<%=users.getNickname()%>"><b><%=users.getNickname()%></b></a>
				<a href="delfollower.jsp?id=<%=users.getId()%>">移除用户</a>
			</h3>
		</div>
	<%	
			}
		}else{
	%>
			<div><h2>当前无用户添加我</h2></div>
	<%
		}
	%>
</body>
</html>