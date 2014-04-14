<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="com.byland.bylfc.dao.PinkmanDao"%>
<%@page import="com.byland.bylfc.entity.Pinkman"%>
<%@page import="com.byland.bylfc.entity.Some"%>
<%@page import="com.byland.bylfc.dao.UsersDao"%>
<%@page import="com.byland.bylfc.entity.Info"%>
<%@page import="com.byland.bylfc.dao.CommentsDao"%>
<%@page import="com.byland.bylfc.dao.MessageDao"%>
<%@page import="com.byland.bylfc.entity.Message"%>
<%@page import="java.util.List"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="com.byland.bylfc.entity.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>农产品信息_农产品信息交互平台</title>
<script type="text/javascript">
	
</script>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

body {
	
}

#top,#nav {
	width: auto;
	margin: 2px auto;
}

#top {
	height: 80px;
	font-size: 38px;
	font-style: inherit;
	font-weight: bolder;
	padding-top: 36px;
	text-align: center;
	background-color: #ddd;
	background-image: url("images/bgd2.jpg");
}

#nav2 {
	height: 50px;
	padding-left: 500px;
	background-color: #fc0;
}

#mid {
	height: 300px;
	text-align: center;
}

#righta {
	margin-right: 4px;
	width: 80px;
	height: 210px;
	background-color: #66CC00;
	float: right;
	margin-top: 40px
}

#right {
	height: 965px;
	padding-left: 200px;
	text-align: center;
	background-color: #ccc;
	background-image: url("images/bgd5.jpg");
}

.content {
	width: 98px;
	height: 148px;
	background-color: #c00;
	border: 1px solid #999;
	float: left;
}

#footer {
	height: 40px;
	margin-bottom: 2px;
	margin-top: 600px;
	width: 100%;
	background: #009933;
	color: #FFFFFF;
	font-family: 黑体;
	text-align: center;
	font-size: 13px;
	font-weight: bold;
}

#footer a,span {
	border-left: #CCCCCC 1px solid;
	display: inline-block;
	height: 40px;
	line-height: 40px;
	padding: 0px 10px;
	margin-left: -8px;
}

}
#footer a:link,a:visited,a:active {
	text-decoration: none;
	color: #FFFFFF;
}

#footer a:hover {
	background: #FFDA2F;
}

#container {
	margin-left: auto;
	margin-right: auto;
	width: 1002px;
	height: 1000px;
}

#nav {
	width: 100%;
	background: #008000;
	color: #FFFFFF;
	font-family: 黑体;
	text-align: center;
	font-size: 13px;
	font-weight: bold;
}

#nav a,span {
	border-left: #CCCCCC 1px solid;
	display: inline-block;
	height: 40px;
	line-height: 40px;
	padding: 0px 10px;
	margin-left: -8px;
}

#nav a:link,a:visited,a:active {
	text-decoration: none;
	color: #FFFFFF;
}

#nav a:hover {
	background: #CCCCCC;
}

ul,li {
	margin: 0;
	padding: 0;
	list-style: none;
}

#mmain {
	margin-right: 100px;
	height: 900px;
	width: 700px;
	background-color: #008000;
}

#push1 {
	width: 600px;
	height: 300px;
	background-color: gray;
	margin-left: 50px;
	overflow: scroll;
	border: 1px solid;
	
}

#push2 {
	width: 600px;
	height: 300px;
	background-color: gray;
	margin-left: 50px;
	margin-top: 20px;
	overflow: scroll;
	border: 1px solid;
}

#push3 {
	width: 600px;
	height: 280px;
	background-color: gray;
	margin-left: 50px;
	margin-top: 20px;
	overflow: scroll;
	border: 1px solid;
}

.navi{
 width:550px;
 height:200px;

 }
.navi ul{
 list-style:none;
  }
.navi ul li{
 float:left;
 margin-left: 100px;
 margin-top: 10px;
 padding-top: 100px;
 }


</style>
</head>
<body>


	<div id="container">


		<div id="top">农产品信息交互平台</div>
		<div id="nav">
			<a href="index.jsp">首页</a> <a href="toda.jsp">今日要闻</a> <a
				href="pushnong.jsp">农产品信息</a> <a href="todb.jsp">市场动态</a> <a
				href="todc.jsp">分析报告</a> <a href="todd.jsp">批发市场</a> <a
				href="tode.jsp">留言信息</a> <a href="homepage.jsp">用户个人空间</a> <a
				href="foryou.jsp">客户服务</a> <span>&nbsp;</span>
		</div>
		<div id="mid">

			<div id="right">

				<div id="mmain">
					<div id="gr1">
						<div id="push1">
							<h2>蔬菜类</h2>
							----------------------------------------------------------------
							<a href="addGoods.jsp" style="float: right;">添加产品</a>
							<%
								DataSource ds = (DataSource) application.getAttribute("DS");
								List<Pinkman> list = (List) PinkmanDao.chaxnAll(ds);
							%>
							<%
								for (Pinkman li : list) {
							%>
								<div>
								
							
							<table style="margin-left: 200px;">
							<tr><th>农产品名称：<%=li.getPname() %></th></tr>
							<tr><th>农产品价格：<%=li.getPrice() %>元/斤</th></tr>
							<tr><th>农产品数量:<%=li.getShuliang() %>斤</th></tr>
							<tr><th>联系人：<%=li.getPeople() %></th></tr>
							<tr><th>农产品地址：<%=li.getAddress() %></th></tr>
							<tr><th>联系方式：<%=li.getPhonenb() %></th></tr>
							<tr><th>农产品发布时间：<%=li.getDatep() %></th></tr>
							</table>
							
							
								
										-------------------------------------------------------------------------------							
								</div>
							<%
								}
							%>

						</div>
						<div id="push2">
							<h2>肉类</h2>
							<a href="addGoods.jsp" style="float: right;">添加产品</a>
							<ul>
							
							<table style="margin-left: 200px;">
							<tr><th>农产品名称：猪肉</th></tr>
							<tr><th>农产品价格：18</th>元/斤</tr>
							<tr><th>农产品数量:500</th>斤</tr>
							<tr><th>联系人：王明</th></tr>
							<tr><th>农产品地址：湖北十堰</th></tr>
							<tr><th>联系方式：15299330953</th></tr>
							<tr><th>农产品发布时间：2014/04/05</th></tr>
							</table>

						--------------------------------------------------
							
							
							</ul>
							
							
							
							<ol>
								<%-- <li> 性别:<%=price%> </li> --%>

							</ol>

						</div>
						<div id="push3">
							<h2>瓜果类</h2>
							<a href="addGoods.jsp" style="float: right;">添加产品</a>
							<table style="margin-left: 200px;">
							<tr><th>农产品名称：库尔勒香梨</th></tr>
							<tr><th>农产品价格：1</th>元/斤</tr>
							<tr><th>农产品数量:1000</th>斤</tr>
							<tr><th>联系人：木合亚提</th></tr>
							<tr><th>农产品地址：新疆库尔勒</th></tr>
							<tr><th>联系方式：139020202033</th></tr>
							<tr><th>农产品发布时间：2014/04/06</th></tr>
							</table>
							-------------------------------------------
							<table style="margin-left: 200px;">
							<tr><th>农产品名称：猕猴桃</th></tr>
							<tr><th>农产品价格：1</th>元/斤</tr>
							<tr><th>农产品数量:1200</th>斤</tr>
							<tr><th>联系人：张良</th></tr>
							<tr><th>农产品地址：湖南张家界</th></tr>
							<tr><th>联系方式：15273539873</th></tr>
							<tr><th>农产品发布时间：2014/04/08</th></tr>
							</table>
							
							
						</div>




					</div>





				</div>

			</div>

		</div>

		<div id="footer">
			<a href="#">关于我们</a> <a href="#">相关链接</a> <a href="#">学习摘要</a> <a
				href="#">联系方式</a>
		</div>

	</div>

</body>
</html>