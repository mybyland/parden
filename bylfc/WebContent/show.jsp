<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="com.byland.bylfc.entity.Note"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<style type="text/css">
.note {
	background-color: #eeeeee;
	width: 60%;
	margin-top: 20px;
}
</style>
</head>
<body>


	<%
		int size = (Integer) request.getAttribute("SIZE");
		int pageSize = (Integer) request.getAttribute("PAGE_SIZE");
		List<Note> onePage = (List<Note>) request.getAttribute("ONE_PAGE");

		for (Note n : onePage) {
	%>
	<div class="note">
		<div class="contents"><%=n.getContent()%></div>
		<div class="authors"><%=n.getAuthor()%>@<%=n.getTime()%></div>
	</div>
	<%
		}

		for (int i = 0; i < size; i++) {
	%>
	<a href="note?start=<%=i * pageSize + 1%>"><%=i + 1%></a>
	<%
		}
	%>


</body>
</html>