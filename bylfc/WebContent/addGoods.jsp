<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<form action="pinkman" method="post" style="margin-left: 10px;float: left;">

<img src="images/java.jpg" alt="" />

<table style="float: right;">
<tr>
<th>产品名称：<input type="text" name="pname"/>元</th>
</tr>
<tr>
<th>产品价格：<input type="text" name="price"/>元</th>
</tr>
<tr>
<th>产品数量：<input type="text" name="shuliang"/>斤</th>
</tr>
<tr>
<th>产品位置：<input type="text" name="address"/></th>
</tr>
<tr>
<th>产品代理人：<input type="text" name="people"/></th>
</tr>
<tr>
<th>联系方式：<input type="text" name="phonenb"/></th>

</tr>
<tr>
<th>详细描述：<input type="text" style="height: 100px;width: 100px;" name="miaoshu"/> </th>

</tr>

</table>
<input type="submit" style="float: right;margin-left: 10px;" value="提交"/>
</form>


</body>
</html>