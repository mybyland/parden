<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.util.List"%>
<%@page import="com.byland.bylfc.dao.UsersDao"%>
<%@page import="com.byland.bylfc.entity.Users"%>
<%@page import="javax.sql.DataSource"%>
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
		DataSource ds=(DataSource)application.getAttribute("DS");
		Users u=(Users)session.getAttribute("others_info");
		List<Users> followerlist=UsersDao.followerList(ds,u.getId());
		if(followerlist.size()!=0){
		for(Users follower:followerlist){
	%>
		<div>
			<div>
				<a href="find?nickname=<%=follower.getNickname()%>"><b><%=follower.getNickname()%></b></a>
			</div>
		</div>
	<%
		}
		}else{
	%>
		<div><h2>当前好友数</h2></div>
	<%		
		}
	%>

</body>
</html>