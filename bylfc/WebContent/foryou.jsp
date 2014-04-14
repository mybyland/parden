<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>客户服务_农产品信息交互平台</title>
<script type="text/javascript">
var number=5; //定义条目数

function LMYC() {
var lbmc;
    for (i=1;i<=number;i++) {
        lbmc = eval('LM' + i);
        lbmc.style.display = 'none';
    }
}
 
function ShowFLT(i) {
    lbmc = eval('LM' + i);
    if (lbmc.style.display == 'none') {
        LMYC();
        lbmc.style.display = '';
    }
    else {
        lbmc.style.display = 'none';
    }
}
</script>


<style type="text/css">
body { text-align:center; 
background-image: url("images/bgn.jpg");
}
td { font-size: 12px; line-height:160% }
.dotline { background-image:url(images/dot_line.gif); background-repeat: repeat-x; background-position: bottom; }
</style>
</head>
<body>
<table width="600" border="0" cellspacing="2" cellpadding="0">
  <tr>
    <td width="56" height="40" align="right" class="dotline"><img src="images/ico_q.gif" width="47" height="29"></td>
    <td width="544" height="40" class="dotline"><a onClick=javascript:ShowFLT(1) href="javascript:void(null)">1.为什么要设置用户登陆？</a></td>
  </tr>
  <tr id=LM1 style="DISPLAY: none">
    <td height="30" align="right" bgcolor="#f5f9ed"><img src="images/ico_a.gif" width="14" height="14" hspace="5"></td>
    <td height="30" bgcolor="#f5f9ed">这是为了方便用户交流，能够提供信息交互</td>
  </tr>
  <tr>
    <td height="40" align="right" class="dotline"><img src="images/ico_q.gif" width="47" height="29"></td>
    <td height="40" class="dotline"><a onClick=javascript:ShowFLT(2) href="javascript:void(null)">2.什么是水产健康养殖?
</a></td>
  </tr>
  <tr id=LM2 style="DISPLAY: none">
    <td height="30" align="right" bgcolor="#f5f9ed"><img src="images/ico_a.gif" width="14" height="14" hspace="5"></td>
    <td height="30" bgcolor="#f5f9ed"><p> 水产健康养殖应该是根据养殖品种的生态和生活习性建造适宜养殖的场所，选择和投放品质好、体格健壮、生长快、抗病力强的优质苗种，并采用合理的养殖模式、养殖密度，通过科学管理、科学投喂优质饲料、科学用药防治疾病和科学管理，促进养殖品种无污染、无残毒、健康、快速生长的一种养殖方式。
 </p></td>
  </tr>
  <tr>
    <td height="40" align="right" class="dotline"><img src="images/ico_q.gif" width="47" height="29"></td>
    <td height="40" class="dotline"><a onClick=javascript:ShowFLT(3) href="javascript:void(null)">3.影响健康养殖方面的污染主要是哪些?
</a></td>
  </tr>
  <tr id=LM3 style="DISPLAY: none">
    <td height="30" align="right" bgcolor="#f5f9ed"><img src="images/ico_a.gif" width="14" height="14" hspace="5"></td>
    <td height="30" bgcolor="#f5f9ed"> 养殖方面的污染主要是工业废水、生活污水、农业废水、化肥、鱼药、养殖有机质等的污染。</td>
  </tr>
  <tr>
    <td height="40" align="right" class="dotline"><img src="images/ico_q.gif" width="47" height="29"></td>
    <td height="40" class="dotline"><a onClick=javascript:ShowFLT(4) href="javascript:void(null)">4.什么样的场所是适宜健康养殖的场所?
</a></td>
  </tr>
  <tr id=LM4 style="DISPLAY: none">
    <td height="30" align="right" bgcolor="#f5f9ed"><img src="images/ico_a.gif" width="14" height="14" hspace="5"></td>
    <td height="30" bgcolor="#f5f9ed">  (1)地势平坦、避风向阳。

    (2)水源充足，水位、水质符合养殖品种的要求，四周无污染源。

    (3)道路畅通、电力充足。

    (4)鱼池保水性能强，进、排水设施全。
</td>
  </tr>
  <tr>
    <td height="40" align="right" class="dotline"><img src="images/ico_q.gif" width="47" height="29"></td>
    <td height="40" class="dotline"><a onClick=javascript:ShowFLT(5) href="javascript:void(null)">5.常规鱼类的健康养殖有哪些要点?
</a></td>
  </tr>
  <tr id=LM5 style="DISPLAY: none">
    <td height="30" align="right" bgcolor="#f5f9ed"><img src="images/ico_a.gif" width="14" height="14" hspace="5"></td>
    <td height="30" bgcolor="#f5f9ed">(1)修整池塘，清除污泥，完善进、排水设施，改善池塘环境。

    (2)实现井、泵、渠、增氧机械配套，完善机械设施。

    (3)投放优质苗种，控制合理密度，实现模式化养殖。

    (4)科学调控水位，水质，增加水体的氧化功能和自净能力；  

    (5)在病害防治上，坚持以防为主，防治结合的方针，正确诊断，科学用药。

    (6)选择优质饲料，进行科学喂养，促使养殖品种健康、快速生长。
</td>
  </tr>
</table>

<div style="width:550px;margin:20px auto;">
<p><strong><a href="index.jsp">农产品信息交互平台</a></strong> </p>

</div>
	
</body>
</html>