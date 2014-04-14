<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="com.byland.bylfc.entity.Message"%>
<%@page import="com.byland.bylfc.dao.MessageDao"%>
<%@page import="com.byland.bylfc.entity.Users"%>
<%@page import="com.byland.bylfc.dao.CommentsDao"%>
<%@page import="com.byland.bylfc.entity.Comments"%>
<%@page import="java.util.List"%>
<%@page import="javax.sql.DataSource"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<style type="text/css">
.comments{
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
		String idValue=request.getParameter("message_id");
		int messageid=Integer.parseInt(idValue); 
		/* Message message=MessageDao.getMessageById(ds,messageid); */
		List<Comments> commentslist=CommentsDao.showcomments(ds,messageid);
		if(commentslist.size()!=0){
		for(Comments comments:commentslist){
	%>
		<div class="comments">
			<div class="com_comtent">
				<h4><%=comments.getCom_content()%></h4> 
			</div>
			<div class="com_time">
				<h5><%=comments.getCom_time()%></h5>	
			</div>
			<div style="text-align:right">
				<a href="find?nickname=<%=comments.getCom_author()%>"><%=comments.getCom_author()%></a>
			</div>
		</div>
	<%
			}
		}else{
	%>
		<h3>当前无评论</h3>
	<%
		}
	%>
	<div style="text-align:right;">
		<form action="pinglunnote" method="post">
			<textarea rows="3" cols="20" name="com_content"></textarea>
			<input type="submit" value="评论"/>
			<input type="hidden" name="message_id" value="<%=messageid%>"/>
			<input type="hidden" name="users_id" value="<%=single.getId()%>"/>
		</form>
	</div>
</body>
</html>