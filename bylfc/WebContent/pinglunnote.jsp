<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="com.byland.bylfc.entity.Message"%>
<%@page import="com.byland.bylfc.dao.MessageDao"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="com.byland.bylfc.entity.Users"%>
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
		Users single=(Users)session.getAttribute("user_info");
		Users others=(Users)session.getAttribute("others_info");
		/* Message message=(Message)request.getAttribute("MESSAGE"); */
		String idValue=request.getParameter("id");
		int id=Integer.parseInt(idValue);
		Message message=MessageDao.getMessageById(ds,id);
		if(message!=null){
	%>
	<div>
		<h3><%=single.getNickname()%>正在评论<%=others.getNickname()%>的微博</h3>
	</div>
	<div class="note">
			<div class="nickname">
				<a href="othershome.jsp"><%=others.getNickname()%></a> 
			</div>
			<div class="content">
				<h2><%=message.getContent()%></h2>	
			</div>
			<div class="time"><%=message.getTime()%></div>
	</div>
	<%
		if(others.getNickname().equals(single.getNickname())){
	%>
		<div style="text-align:right;">
			<form action="pinglunnote" method="post">
				<textarea rows="3" cols="20" name="com_content"></textarea>
				<input type="submit" value="评论"/>
				<input type="hidden" name="message_id" value="<%=message.getId()%>"/>
				<input type="hidden" name="users_id" value="<%=single.getId()%>"/>
			</form>
		</div>
	<%
		}
	%>
	<%
		}
	%>

</body>
</html>