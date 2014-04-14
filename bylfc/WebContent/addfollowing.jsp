<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="com.byland.bylfc.dao.FollowDao"%>
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
		Users u=(Users)session.getAttribute("user_info");
		String idValue=request.getParameter("id");
		int following_id=Integer.parseInt(idValue);
	
		FollowDao.addfollowing(ds,u.getId(),following_id);
		response.sendRedirect("followinglist.jsp");
	%>
</body>
</html>