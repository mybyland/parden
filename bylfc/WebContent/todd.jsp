<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>批发市场_农产品信息交互平台</title>
<script type="text/javascript">


	
	</script>
<style type="text/css">
* {margin:0px; 
padding:0px; 
} 
body{

}

#top,#nav{width:auto;
margin:2px auto;} 
#top{height:80px; 
font-size:38px;
font-style:inherit;
font-weight:bolder;
padding-top:36px;
text-align:center;
background-color:#ddd;
background-image: url("images/bgd2.jpg");
} 
#nav2{height:50px; 
padding-left:500px;
background-color:#fc0;} 
#mid{height:300px;
text-align: center;

} 




#righta{
margin-right:4px;
width: 80px;
height: 210px;
background-color: #66CC00;
float: right;
margin-top: 40px

}

#right{height:965px;
padding-left:200px;
text-align:center;
background-color:#ccc;
background-image: url("images/bgd5.jpg");
} 
.content{width:98px; 
height:148px; 
background-color:#c00; 
border:1px solid #999; 
float:left;} 
#footer{height:40px; 

margin-bottom:2px;
margin-top:600px;

width:100%;background:#009933;color:#FFFFFF; font-family:黑体;
 text-align:center; font-size:13px; font-weight:bold;

} 
#footer a,span{
border-left:#CCCCCC 1px solid; display:inline-block;
 height:40px; line-height:40px; padding:0px 10px; margin-left:-8px;} 

}
#footer a:link,a:visited,a:active{ text-decoration:none; color:#FFFFFF;} 
#footer a:hover { background:#FFDA2F;}


#container{
	margin-left:auto;
	margin-right:auto;
	width: 1002px;
	height: 1000px;
}
#nav{width:100%;background:#008000;color:#FFFFFF; font-family:黑体;
 text-align:center; font-size:13px; font-weight:bold;} 
#nav a,span {border-left:#CCCCCC 1px solid; display:inline-block;
 height:40px; line-height:40px; padding:0px 10px; margin-left:-8px;} 
#nav a:link,a:visited,a:active{ text-decoration:none; color:#FFFFFF;} 
#nav a:hover { background:#CCCCCC;} 

ul,li{margin:0;padding:0;list-style:none;}

#mmain{
margin-right:100px;
height: 900px;
width: 700px;
background-color: #008000; 
}



</style>
</head>
<body>



<div id="container">


<div id="top">农产品信息交互平台</div> 
<div id="nav">
<a href="index.jsp">首页</a> 
<a href="toda.jsp">今日要闻</a> 
<a href="pushnong.jsp">农产品信息</a> 
<a href="todb.jsp">市场动态</a> 
<a href="todc.jsp">分析报告</a> 
<a href="todd.jsp">批发市场</a> 
<a href="tode.jsp">在线交流</a> 
<a href="homepage.jsp">用户个人空间</a>  
<a href="foryou.jsp">客户服务</a> 
<span>&nbsp;</span> 
</div> 
<div id="mid"> 

<div id="right">
<table width="200" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="lft" style="float: left;margin-left: -200px;">
      <tr>
        <td colspan="2" class="lft_title">按地区搜索</td>
      </tr>
      <tr>
        <td colspan="2">　</td>
      </tr>
      <tr>
        <td colspan="2" class="lfttd">
        <a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=110000&recordperpage=15">北京</a> 
        <a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=120000&recordperpage=15">天津</a>   
        <a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=130000&recordperpage=15">河北</a> 
        <a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=150000&recordperpage=15">内蒙古</a> 
        	</td>
      </tr>
      <tr>
        <td colspan="2" class="lfttd">
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=140000&recordperpage=15">山西</a> 
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=370000&recordperpage=15">山东</a> 
        		</td>
      </tr>
      <tr>
        <td colspan="2">　</td>
      </tr>
      <tr>
        <td colspan="2" class="lfttd">
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=210000&recordperpage=15">辽宁</a> 
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=220000&recordperpage=15">吉林</a> 
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=230000&recordperpage=15">黑龙江</a> 
        		</td>
      </tr>
      <tr>
        <td colspan="2">　</td>
      </tr>
      <tr>
        <td colspan="2" class="lfttd">
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=310000&recordperpage=15">上海</a>   
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=320000&recordperpage=15">江苏</a>   
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=340000&recordperpage=15">安徽</a>   
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=330000&recordperpage=15">浙江</a> 
        		</td>
      </tr>
      <tr>
        <td colspan="2">　</td>
      </tr>
      <tr>
        <td colspan="2" class="lfttd">
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=410000&recordperpage=15">河南</a>   
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=420000&recordperpage=15">湖北</a>   
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=430000&recordperpage=15">湖南</a>   
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=360000&recordperpage=15">江西</a> 
        		</td>
      </tr>
      <tr>
        <td colspan="2">　</td>
      </tr>
      <tr>
        <td colspan="2" class="lfttd">
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=450000&recordperpage=15">广西</a>   
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=440000&recordperpage=15">广东</a>   
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=350000&recordperpage=15">福建</a>   
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=460000&recordperpage=15">海南</a> 
        		</td>
      </tr>
      <tr>
        <td colspan="2">　</td>
      </tr>
      <tr>
        <td colspan="2" class="lfttd">
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=650000&recordperpage=15">新疆</a>   
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=630000&recordperpage=15">青海</a>   
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=620000&recordperpage=15">甘肃</a>   
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=640000&recordperpage=15">宁夏</a>
        		</td>
      </tr>
      <tr>
        <td colspan="2" class="lfttd">
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=610000&recordperpage=15">陕西</a> 
        		</td>
      </tr>
      <tr>
        <td colspan="2">　</td>
      </tr>
      <tr>
        <td colspan="2" class="lfttd">
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=540000&recordperpage=15">西藏</a>   
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=510000&recordperpage=15">四川</a>   
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=530000&recordperpage=15">云南</a>   
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=520000&recordperpage=15">贵州</a> 
        		</td>
      </tr>
      <tr>
        <td colspan="2" class="lfttd">
        	<a href="./controller?SERVICE_ID=MARKET_INFO_LIST_SEARCH_SERVICE&newsearch=true&proCode=500000&recordperpage=15">重庆</a> 
        		</td>
      </tr>
      <tr>
        <td colspan="2">　</td>
      </tr>
      
    </table> 

<div id="mmain" >

 <h2 style="margin-left: -100px;">批发市场</h2>
<a NAME="tops"></a>
	
<table width="1000" height="200" cellpadding="0" cellspacing="0" border="0" align="center">
  <tr>
    <td width="1000" >
    	
<form name="form1" method="post">
<input type="hidden" name="recordperpage" value="15">
	<table width="1003" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
  </tr>
</table>
<table width="1003" border="0" cellpadding="0" cellspacing="0">

  <tr>
    <td width="30"></td>
    <td width="15" valign="top"></td>
    <td width="10"></td>
    <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
  
    <td align="right">
    
        <label>
      </label>&nbsp;&nbsp;</td>
    </tr>
</table>
      <table  class="rigt" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td colspan="2"></td>
        </tr>
        <tr>
          <td colspan="2"></td>
        </tr>
        <tr>
          <td height="20" colspan="2"></td>
        </tr>
        <tr>
          <td colspan="2" align="right">

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
          <td height="20" colspan="2"></td>
        </tr>
        <tr>
          <td width="424"></td>
          <td width="120"></td>
        </tr>
        
        <tr>
          <td height="25" colspan="2" align="center" valign="top">
          	<table width="90%" border="0" cellpadding="0" cellspacing="0">
         
         
         <tr>
                      <td style="WORD-BREAK: break-all" width=514 
                        align=left class="td-da0"><FONT class=shhtitle><A 
                        href="./controller?SERVICE_ID=MARKET_INFO_SEARCH_SERVICE&marketUUID=76E4F160BFCE936CE040A8C020017257">北京京丰岳各庄批发市场</A> 
                        </FONT><BR>
                        主营特色：蔬菜、水果、水产、海鲜、肉类、禽蛋、调料、粮油、豆制品、熟食、服装、办公用品、酒店用品、日用百货等百余种商品。 &nbsp;市场类型： 批发市场 </td>
                      <td style="WORD-BREAK: break-all" width=188 
                        align=left class="td-da1"><FONT class=shch>所在省份： 北京市 </FONT><BR>
                        负责人：陆建华 
                      </td></tr>
                    <tr>
                      <td class=dash colSpan=3></td></tr>
		   
         
         <tr>
                      <td style="WORD-BREAK: break-all" width=514 
                        align=left class="td-da0"><FONT class=shhtitle><A 
                        href="./controller?SERVICE_ID=MARKET_INFO_SEARCH_SERVICE&marketUUID=76E4F160BFE9936CE040A8C020017257">北京顺鑫石门农副产品批发市场</A> 
                        </FONT><BR>
                        主营特色：蔬菜、水果、粮油、畜产品等各类农副产品 &nbsp;市场类型： 批发市场 </td>
                      <td style="WORD-BREAK: break-all" width=188 
                        align=left class="td-da1"><FONT class=shch>所在省份： 北京市 </FONT><BR>
                        负责人：贠振德 
                      </td></tr>
                    <tr>
                      <td class=dash colSpan=3></td></tr>
		   
         
         <tr>
                      <td style="WORD-BREAK: break-all" width=514 
                        align=left class="td-da0"><FONT class=shhtitle><A 
                        href="./controller?SERVICE_ID=MARKET_INFO_SEARCH_SERVICE&marketUUID=76E4F160BFCD936CE040A8C020017257">北京城北回龙观商品交易市场</A> 
                        </FONT><BR>
                        主营特色：蔬菜水果、粮油、肉蛋禽、调料干果、水产冻货、茶叶、烟酒饮料、厨具、酒店用品、五金日杂、百货小商品、服装鞋帽、小件家具、花鸟鱼虫、宠物用品等。 &nbsp;市场类型： 批发市场 </td>
                      <td style="WORD-BREAK: break-all" width=188 
                        align=left class="td-da1"><FONT class=shch>所在省份： 北京市 </FONT><BR>
                        负责人：刘庭江 
                      </td></tr>
                    <tr>
                      <td class=dash colSpan=3></td></tr>
		   
         
         <tr>
                      <td style="WORD-BREAK: break-all" width=514 
                        align=left class="td-da0"><FONT class=shhtitle><A 
                        href="./controller?SERVICE_ID=MARKET_INFO_SEARCH_SERVICE&marketUUID=76E4F160BFEE936CE040A8C020017257">北京锦绣大地玉泉路粮油经营有限公司</A> 
                        </FONT><BR>
                        主营特色：大米、面粉、杂粮、食用油。 &nbsp;市场类型： 批发市场 </td>
                      <td style="WORD-BREAK: break-all" width=188 
                        align=left class="td-da1"><FONT class=shch>所在省份： 北京市 </FONT><BR>
                        负责人：尹大庆 
                      </td></tr>
                    <tr>
                      <td class=dash colSpan=3></td></tr>
		   
         
         <tr>
                      <td style="WORD-BREAK: break-all" width=514 
                        align=left class="td-da0"><FONT class=shhtitle><A 
                        href="./controller?SERVICE_ID=MARKET_INFO_SEARCH_SERVICE&marketUUID=76E4F160BFE5936CE040A8C020017257">北京八里桥农产品中心批发市场有限公司</A> 
                        </FONT><BR>
                        主营特色：农副产品 &nbsp;市场类型： 批发市场 </td>
                      <td style="WORD-BREAK: break-all" width=188 
                        align=left class="td-da1"><FONT class=shch>所在省份： 北京市 </FONT><BR>
                        负责人：赵尔烈经理 
                      </td></tr>
                    <tr>
                      <td class=dash colSpan=3></td></tr>
		   
         
         <tr>
                      <td style="WORD-BREAK: break-all" width=514 
                        align=left class="td-da0"><FONT class=shhtitle><A 
                        href="./controller?SERVICE_ID=MARKET_INFO_SEARCH_SERVICE&marketUUID=76E4F160BFED936CE040A8C020017257">北京锦绣大地联合农副产品批发市场</A> 
                        </FONT><BR>
                        主营特色：蔬菜、水果、调料、肉类、海鲜水产、冻货、干果、小食品、粮油、活鱼、禽蛋、酒水、厨具百货等品种。 &nbsp;市场类型： 批发市场 </td>
                      <td style="WORD-BREAK: break-all" width=188 
                        align=left class="td-da1"><FONT class=shch>所在省份： 北京市 </FONT><BR>
                        负责人：宋威 
                      </td></tr>
                    <tr>
                      <td class=dash colSpan=3></td></tr>
		   
         
         <tr>
                      <td style="WORD-BREAK: break-all" width=514 
                        align=left class="td-da0"><FONT class=shhtitle><A 
                        href="./controller?SERVICE_ID=MARKET_INFO_SEARCH_SERVICE&marketUUID=D5BF67C30A020824000C75392B896976">北京新发地双桥农副产品批发市场有限公司</A> 
                        </FONT><BR>
                        主营特色：蔬菜、水果、禽蛋、粮油、水产、海鲜、肉类、干果调料、茶叶、酒水饮料、百货、服装、小商品、日用杂品、酒店用品等二十余大类三万余种商品。 &nbsp;市场类型： 批发市场 </td>
                      <td style="WORD-BREAK: break-all" width=188 
                        align=left class="td-da1"><FONT class=shch>所在省份： 北京市 </FONT><BR>
                        负责人：顾兆学 
                      </td></tr>
                    <tr>
                      <td class=dash colSpan=3></td></tr>
		   
         
         <tr>
                      <td style="WORD-BREAK: break-all" width=514 
                        align=left class="td-da0"><FONT class=shhtitle><A 
                        href="./controller?SERVICE_ID=MARKET_INFO_SEARCH_SERVICE&marketUUID=76E4F160BFCF936CE040A8C020017257">北京新发地农副产品批发市场信息中心</A> 
                        </FONT><BR>
                        主营特色：蔬菜、果品、肉类、粮油、水产、副食、调料、禽蛋、菌类、茶叶、种子等农副产品，是一处以蔬菜、果品、肉类批发为龙头的国家级农产品中心批发市场。 &nbsp;市场类型： 批发市场 </td>
                      <td style="WORD-BREAK: break-all" width=188 
                        align=left class="td-da1"><FONT class=shch>所在省份： 北京市 </FONT><BR>
                        负责人：张玉玺 
                      </td></tr>
                    <tr>
                      <td class=dash colSpan=3></td></tr>
		   
         
         <tr>
                      <td style="WORD-BREAK: break-all" width=514 
                        align=left class="td-da0"><FONT class=shhtitle><A 
                        href="./controller?SERVICE_ID=MARKET_INFO_SEARCH_SERVICE&marketUUID=76E4F160BFEC936CE040A8C020017257">北京水屯农副产品批发市场中心</A> 
                        </FONT><BR>
                        主营特色：蔬菜、水果、粮油、肉蛋禽、副食调料、日用百货以及建材、装饰材料、家具等一百余大类上万个品种。 &nbsp;市场类型： 批发市场 </td>
                      <td style="WORD-BREAK: break-all" width=188 
                        align=left class="td-da1"><FONT class=shch>所在省份： 北京市 </FONT><BR>
                        负责人：暂无 
                      </td></tr>
                    <tr>
                      <td class=dash colSpan=3></td></tr>
		   
         
         <tr>
                      <td style="WORD-BREAK: break-all" width=514 
                        align=left class="td-da0"><FONT class=shhtitle><A 
                        href="./controller?SERVICE_ID=MARKET_INFO_SEARCH_SERVICE&marketUUID=76E4F160C19B936CE040A8C020017257">北京日上综合商品批发市场有限公司</A> 
                        </FONT><BR>
                        主营特色：各种农副产品；服装百货；五金电器；农资农具等。 &nbsp;市场类型： 批发市场 </td>
                      <td style="WORD-BREAK: break-all" width=188 
                        align=left class="td-da1"><FONT class=shch>所在省份： 北京市 </FONT><BR>
                        负责人：李伟忠 
                      </td></tr>
                    <tr>
                      <td class=dash colSpan=3></td></tr>
		
		
          </table></td>
        </tr>
        <tr>
          <td colspan="2" align="right">

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
          <td height="20" colspan="2"></td>
        </tr>
        <tr>
          <td colspan="2" align="right"><a href="#tops"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
          <td height="10" colspan="2"></td>
        </tr>
      </table></td>
    <td width="30"></td>
  </tr>
</table>
</form>
  </td>
  </tr>
</table>

</div>

</div> 

</div> 

<div id="footer">
<a href="#">关于我们</a>
<a href="#">相关链接</a>
<a href="#">学习摘要</a>
<a href="#">联系方式</a>
</div>

</div>

</body>
</html>