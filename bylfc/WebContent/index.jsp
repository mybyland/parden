<?xml version="1.0" encoding="UTF-8" ?>

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
<title>农产品信息交互平台</title>
<script type="text/javascript">
function Function2() {
	var n = document.getElementById("sp").innerHTML;
	n = parseInt(n) - 1;

	document.getElementById("sp").innerText = n;
}
	
	
	
	


	function clearText(e) {
			e.value = "";

		}

		function showHint(e, hint) {
			if (e.value.length == 0) {
				e.value = hint;
			}

		}


	
	
	function scrollAD() {
		document.getElementById("ad").style.top = document.body.scrollTop  +"px";
	}
	window.onscroll = scrollAD;






/*
 * 
 */
var myFocus={
	$:function(id){return document.getElementById(id);},
	$$:function(tag,obj){return (typeof obj=='object'?obj:this.$(obj)).getElementsByTagName(tag);},
	$li:function(obj,n){return this.$$('li',this.$$('ul',obj)[n]);},
	linear:function(t,b,c,d){return c*t/d + b;},
	easeIn:function(t,b,c,d){return c*(t/=d)*t*t*t + b;},
	easeOut:function(t,b,c,d){return -c*((t=t/d-1)*t*t*t - 1) + b;},
	easeInOut:function(t,b,c,d){return ((t/=d/2) < 1)?(c/2*t*t*t*t + b):(-c/2*((t-=2)*t*t*t - 2) + b);},
	style:function(obj,style){return (+[1,])?window.getComputedStyle(obj,null)[style]:obj.currentStyle[style];},//getStyle简化版
	opa:function(obj,v){//取得或设置对象透明度,默认100
		if(v!=undefined) {v=v>100?100:(v<0?0:v); obj.style.filter = "alpha(opacity=" + v + ")"; obj.style.opacity = (v / 100);}
		else return (!+[1,])?((obj.filters.alpha)?obj.filters.alpha.opacity:100):((obj.style.opacity)?obj.style.opacity*100:100);
	},
	animate:function(obj,prop,val,spd,type,fn){
		var opa=prop=='opacity'?true:false;
		if(opa&&obj.style.display=='none'){obj.style.display='';this.opa(obj,0);}
		var t=0,b=opa?this.opa(obj):parseInt(this.style(obj,prop)),c=val-b,d=spd||50,st=type||'easeOut',m=c>0?'ceil':'floor';
		if(obj[prop+'Timer']) clearInterval(obj[prop+'Timer']);
		obj[prop+'Timer']=setInterval(function(){
			if(opa&&t<d){myFocus.opa(obj,Math[m](myFocus[st](++t,b,c,d)));}
			else if(!opa&&t<d){obj.style[prop]=Math[m](myFocus[st](++t,b,c,d))+'px';}
			else {if(opa&&val==0){obj.style.display='none';}clearInterval(obj[prop+'Timer']);fn&&fn.call(obj);}
		},10);return this;
	},
	fadeIn:function(obj,speed,fn){this.animate(obj,'opacity',100,speed==undefined?20:speed,'linear',fn);return this;},
	fadeOut:function(obj,speed,fn){this.animate(obj,'opacity',0,speed==undefined?20:speed,'linear',fn);return this;},
	slide:function(obj,params,speed,easing,fn){for(var p in params) this.animate(obj,p,params[p],speed,easing,fn);return this;},
	stop:function(obj){//停止所有运动函数
		var animate=['left','right','top','bottom','width','height','opacity'];
		for(var i=0;i<animate.length;i++) if(obj[animate[i]+'Timer']) clearInterval(obj[animate[i]+'Timer']);
		return this;
	},
	initCSS:function(p){
		var css=[],oStyle = document.createElement('style');oStyle.type='text/css';
		if(p.width){css.push('.'+p.style+' *{margin:0;padding:0;border:0;list-style:none;}.'+p.style+'{position:relative;width:'+p.width+'px;height:'+p.height+'px;overflow:hidden;font:12px/1.5 Verdana,Geneva,sans-serif;background:#fff;}.'+p.style+' .loading{position:absolute;z-index:9999;width:100%;height:100%;color:#666;text-align:center;padding-top:'+0.3*p.height+'px;background:#fff url(http://nethd.zhongsou.com/wtimg/i_41956/28236-loading.gif) center '+0.4*p.height+'px no-repeat;}.'+p.style+' .pic,.'+p.style+' .pic *{width:'+p.width+'px;height:'+p.height+'px;}.'+p.style+' .txt li,.'+p.style+' .txt li span,.'+p.style+' .txt-bg{width:'+p.width+'px;height:'+p.txtHeight+'px;line-height:'+p.txtHeight+'px;overflow:hidden;}');}
		if(oStyle.styleSheet){oStyle.styleSheet.cssText=css.join('');} else {oStyle.innerHTML=css.join('');}
		var oHead = this.$$('head',document)[0];oHead.insertBefore(oStyle,oHead.firstChild);
	},
	setting:function(par){
		if(window.attachEvent){(function(){try{myFocus.$(par.id).className=par.style;myFocus.initCSS(par);}catch(e){setTimeout(arguments.callee,0);}})();window.attachEvent('onload',function(){myFocus[par.style](par);});}		else{document.addEventListener("DOMContentLoaded",function(){myFocus.$(par.id).className=par.style;myFocus.initCSS(par);},false);window.addEventListener('load',function(){myFocus[par.style](par);},false);}
	},
	addList:function(obj,cla){//生成HMTL,cla为生成列表的class,其中封装有:cla='txt'(生成alt文字),cla='num'(生成按钮数字),cla='thumb'(生成小图)
		var s=[],n=this.$li(obj,0).length,num=cla.length;
		for(var j=0;j<num;j++){
			s.push('<ul class='+cla[j]+'>');
			for(var i=0;i<n;i++){s.push('<li>'+(cla[j]=='num'?('<a>'+(i+1)+'</a>'):(cla[j]=='txt'?this.$li(obj,0)[i].innerHTML.replace(/\>(.|\n|\r)*?(\<\/a\>)/i,'>'+(this.$$('img',obj)[i]?this.$$('img',obj)[i].alt:'')+'</a>'):(cla[j]=='thumb'?'<img src='+(this.$$('img',obj)[i].getAttribute("thumb")||this.$$('img',obj)[i].src)+' />':'')))+'<span></span></li>');};
			s.push('</ul>');
		}; obj.innerHTML+=s.join('');
	},
	switchMF:function(fn1,fn2,auto){
		return "box.removeChild(this.$$('div',box)[0]);var run=function(idx){("+fn1+")();if (index == n - 1) index = -1;var next = idx != undefined ? idx: index + 1;("+fn2+")();index=next;};run(index);if("+auto+"!==false) var auto=setInterval(function(){run()},t);box.onmouseover=function(){if(auto) clearInterval(auto);};box.onmouseout=function(){if(auto) auto=setInterval(function(){run()},t);}";
	},
	bind:function(arrStr,type,delay){
		return "for (var j=0;j<n;j++){"+arrStr+"[j].index=j;if("+type+"=='click'){"+arrStr+"[j].onmouseover=function(){if(this.className!='current') this.className='hover'};"+arrStr+"[j].onmouseout=function(){if(this.className=='hover') this.className=''};"+arrStr+"[j].onclick=function(){if(this.index!=index) run(this.index)};}else if("+type+"=='mouseover'){"+arrStr+"[j].onmouseover=function(){var self=this;if("+delay+"==0){if(!self.className) run(self.index)}else "+arrStr+".d=setTimeout(function(){if(!self.className) run(self.index)},"+(delay==undefined?100:delay)+")};"+arrStr+"[j].onmouseout=function(){clearTimeout("+arrStr+".d)};}else{alert('myFocus 不支持这样的事件 \"'+"+type+"+'\"');break;}}";
	},
	extend:function(fnObj){for(var p in fnObj) this[p]=fnObj[p];}
};

myFocus.extend({
	mF_classicHC:function(par){
		var box=this.$(par.id);//定义焦点图盒子
		this.addList(box,['txt','num-bg','num']);//添加ul列表
		var pic=this.$li(box,0),txt=this.$li(box,1),num=this.$li(box,3);//定义焦点图元素
		var index=0,n=pic.length,t=par.time*1000;//运行时相关参数
		//CSS
		var txtH=par.txtHeight;
		box.style.width=par.width+2+'px';box.style.height=par.height+txtH+2+'px';
		this.$$('ul',box)[2].style.bottom=this.$$('ul',box)[3].style.bottom=txtH+1+'px';
		for(var i=0;i<n;i++){
			pic[i].style.display='none';txt[i].style.display='none';
			txt[i].style.top=par.height+2+'px';txt[i].style.width=par.width+2+'px';
		}
		//PLAY
		eval(this.switchMF(function(){
			pic[index].style.display='none';
			txt[index].style.display='none';
			num[index].className='';
		},function(){
			myFocus.fadeIn(pic[next]);
			txt[next].style.display='';
			num[next].className='current';
		}));
		eval(this.bind('num','par.trigger',par.delay));
	}
});
myFocus.setting({
	style:'mF_classicHC',//风格样式
	id:'myFocus',//焦点图ID
	trigger:'click',//按钮切换模式：'click'(点击触发)/'mouseover'(悬停触发,默认有0.1秒延迟，可以自行添加参数'delay:毫秒'设置)
	time:4,//切换图片的时间间隔，单位秒
	txtHeight:26,//文字层高，26为推荐，0为隐藏
	width:380,//宽(大图)，注意:整个焦点图的宽等于或大于图片宽
	height:246//高(大图)，注意同上
});

<!-- -->
function jsScrollbar (o, s, a, ev) {
	var self = this;
	
	this.reset = function () {
		//Arguments that were passed
		this._parent = o;
		this._src    = s;
		this.auto    = a ? a : false;
		this.eventHandler = ev ? ev : function () {;};
		//Component Objects
		this._up   = this._findComponent("Scrollbar-Up", this._parent);
		this._down = this._findComponent("Scrollbar-Down", this._parent);
		this._yTrack  = this._findComponent("Scrollbar-Track", this._parent);
		this._yHandle = this._findComponent("Scrollbar-Handle", this._yTrack);
		//Height and position properties
		this._trackTop = findOffsetTop(this._yTrack);
		this._trackHeight  = this._yTrack.offsetHeight;
		this._handleHeight = this._yHandle.offsetHeight;
		this._x = 0;
		this._y = 0;
		//Misc. variables
		this._scrollDist  = 5;
		this._scrollTimer = null;
		this._selectFunc  = null;
		this._grabPoint   = null;
		this._tempTarget  = null;
		this._tempDistX   = 0;
		this._tempDistY   = 0;
		this._disabled    = false;
		this._ratio = (this._src.totalHeight - this._src.viewableHeight)/(this._trackHeight - this._handleHeight);
		
		this._yHandle.ondragstart  = function () {return false;};
		this._yHandle.onmousedown = function () {return false;};
		this._addEvent(this._src.content, "mousewheel", this._scrollbarWheel);
		this._removeEvent(this._parent, "mousedown", this._scrollbarClick);
		this._addEvent(this._parent, "mousedown", this._scrollbarClick);
		
		this._src.reset();
		with (this._yHandle.style) {
			top  = "0px";
			left = "0px";
		}
		this._moveContent();
		
		if (this._src.totalHeight < this._src.viewableHeight) {
			this._disabled = true;
			this._yHandle.style.visibility = "hidden";
			if (this.auto) this._parent.style.visibility = "hidden";
		} else {
			this._disabled = false;
			this._yHandle.style.visibility = "visible";
			this._parent.style.visibility  = "visible";
		}
	};
	this._addEvent = function (o, t, f) {
		if (o.addEventListener) o.addEventListener(t, f, false);
		else if (o.attachEvent) o.attachEvent('on'+ t, f);
		else o['on'+ t] = f;
	};
	this._removeEvent = function (o, t, f) {
		if (o.removeEventListener) o.removeEventListener(t, f, false);
		else if (o.detachEvent) o.detachEvent('on'+ t, f);
		else o['on'+ t] = null;
	};
	this._findComponent = function (c, o) {
		var kids = o.childNodes;
		for (var i = 0; i < kids.length; i++) {
			if (kids[i].className && kids[i].className == c) {
				return kids[i];
			};
		};
	};
	//Thank you, Quirksmode
	function findOffsetTop (o) {
		var t = 0;
		if (o.offsetParent) {
			while (o.offsetParent) {
				t += o.offsetTop;
				o  = o.offsetParent;
			};
		}
		return t;
	};
	this._scrollbarClick = function (e) {
		if (self._disabled) return false;
		
		e = e ? e : event;
		if (!e.target) e.target = e.srcElement;
		
		if (e.target.className.indexOf("Scrollbar-Up") > -1) self._scrollUp(e);
		else if (e.target.className.indexOf("Scrollbar-Down") > -1) self._scrollDown(e);
		else if (e.target.className.indexOf("Scrollbar-Track") > -1) self._scrollTrack(e);
		else if (e.target.className.indexOf("Scrollbar-Handle") > -1) self._scrollHandle(e);
		
		self._tempTarget = e.target;
		self._selectFunc = document.onselectstart;
		document.onselectstart = function () {return false;};
		
		self.eventHandler(e.target, "mousedown");
		self._addEvent(document, "mouseup", self._stopScroll, false);
		
		return false;
	};
	this._scrollbarDrag = function (e) {
		e = e ? e : event;
		var t = parseInt(self._yHandle.style.top);
		var v = e.clientY + document.body.scrollTop - self._trackTop;
		with (self._yHandle.style) {
			if (v >= self._trackHeight - self._handleHeight + self._grabPoint)
				top = self._trackHeight - self._handleHeight +"px";
			else if (v <= self._grabPoint) top = "0px";
			else top = v - self._grabPoint +"px";
			self._y = parseInt(top);
		}
		
		self._moveContent();
	};
	this._scrollbarWheel = function (e) {
		e = e ? e : event;
		var dir = 0;
		if (e.wheelDelta >= 120) dir = -1;
		if (e.wheelDelta <= -120) dir = 1;
		
		self.scrollBy(0, dir * 20);
		e.returnValue = false;
	};
	this._startScroll = function (x, y) {
		this._tempDistX = x;
		this._tempDistY = y;
		this._scrollTimer = window.setInterval(function () {
			self.scrollBy(self._tempDistX, self._tempDistY); 
		}, 40);
	};
	this._stopScroll = function () {
		self._removeEvent(document, "mousemove", self._scrollbarDrag, false);
		self._removeEvent(document, "mouseup", self._stopScroll, false);
		
		if (self._selectFunc) document.onselectstart = self._selectFunc;
		else document.onselectstart = function () { return true; };
		
		if (self._scrollTimer) window.clearInterval(self._scrollTimer);
		self.eventHandler (self._tempTarget, "mouseup");
	};
	this._scrollUp = function (e) {this._startScroll(0, -this._scrollDist);};
	this._scrollDown = function (e) {this._startScroll(0, this._scrollDist);};
	this._scrollTrack = function (e) {
		var curY = e.clientY + document.body.scrollTop;
		this._scroll(0, curY - this._trackTop - this._handleHeight/2);
	};
	this._scrollHandle = function (e) {
		var curY = e.clientY + document.body.scrollTop;
		this._grabPoint = curY - findOffsetTop(this._yHandle);
		this._addEvent(document, "mousemove", this._scrollbarDrag, false);
	};
	this._scroll = function (x, y) {
		if (y > this._trackHeight - this._handleHeight) 
			y = this._trackHeight - this._handleHeight;
		if (y < 0) y = 0;
		
		this._yHandle.style.top = y +"px";
		this._y = y;
		
		this._moveContent();
	};
	this._moveContent = function () {
		this._src.scrollTo(0, Math.round(this._y * this._ratio));
	};
	
	this.scrollBy = function (x, y) {
		this._scroll(0, (-this._src._y + y)/this._ratio);
	};
	this.scrollTo = function (x, y) {
		this._scroll(0, y/this._ratio);
	};
	this.swapContent = function (o, w, h) {
		this._removeEvent(this._src.content, "mousewheel", this._scrollbarWheel, false);
		this._src.swapContent(o, w, h);
		this.reset();
	};
	
	this.reset();
};

//Written by Nathan Faubion: http://n-son.com
//Use this or edit how you want, just give me
//some credit!

function jsScroller (o, w, h) {
	var self = this;
	var list = o.getElementsByTagName("div");
	for (var i = 0; i < list.length; i++) {
		if (list[i].className.indexOf("Scroller-Container") > -1) {
			o = list[i];
		};
	}
	
	//Private methods
	this._setPos = function (x, y) {
		if (x < this.viewableWidth - this.totalWidth) 
			x = this.viewableWidth - this.totalWidth;
		if (x > 0) x = 0;
		if (y < this.viewableHeight - this.totalHeight) 
			y = this.viewableHeight - this.totalHeight;
		if (y > 0) y = 0;
		this._x = x;
		this._y = y;
		with (o.style) {
			left = this._x +"px";
			top  = this._y +"px";
		}
	};
	
	//Public Methods
	this.reset = function () {
		this.content = o;
		this.totalHeight = o.offsetHeight;
		this.totalWidth	 = o.offsetWidth;
		this._x = 0;
		this._y = 0;
		with (o.style) {
			left = "0px";
			top  = "0px";
		}
	};
	this.scrollBy = function (x, y) {
		this._setPos(this._x + x, this._y + y);
	};
	this.scrollTo = function (x, y) {
		this._setPos(-x, -y);
	};
	this.stopScroll = function () {
		if (this.scrollTimer) window.clearInterval(this.scrollTimer);
	};
	this.startScroll = function (x, y) {
		this.stopScroll();
		this.scrollTimer = window.setInterval(
			function(){ self.scrollBy(x, y); }, 40);
	};
	this.swapContent = function (c, w, h) {
		o = c;
		var list = o.getElementsByTagName("div");
		for (var i = 0; i < list.length; i++) {
			if (list[i].className.indexOf("Scroller-Container") > -1) {
				o = list[i];
			};
		}
		if (w) this.viewableWidth  = w;
		if (h) this.viewableHeight = h;
		this.reset();
	};
	
	//variables
	this.content = o;
	this.viewableWidth  = w;
	this.viewableHeight = h;
	this.totalWidth	 = o.offsetWidth;
	this.totalHeight = o.offsetHeight;
	this.scrollTimer = null;
	this.reset();
};

var scroller  = null;
var scrollbar = null;

window.onload = function () {
  scroller  = new jsScroller(document.getElementById("News"), 400, 180);
  scrollbar = new jsScrollbar (document.getElementById("Scrollbar-Container"), scroller, true, scrollbarEvent);
};

function scrollbarEvent (o, type) {
	if (type == "mousedown") {
		if (o.className == "Scrollbar-Track") o.style.backgroundColor = "#E3E3E3";
		else o.style.backgroundColor = "#BBB";
	} else {
		if (o.className == "Scrollbar-Track") o.style.backgroundColor = "#EEE";
		else o.style.backgroundColor = "#CCC";
	}
}

function swapIt(o) {
	o.blur();
	if (o.className == "current") return false;
  
	var list = document.getElementById("Navigation").getElementsByTagName("a");
	for (var i = 0; i < list.length; i++) {
		if (list[i].className == "current") {
			list[i].className = "";
			document.getElementById(list[i].title).y = -scroller._y;
		}
		if (list[i].title == o.title) o.className = "current";
	}
  
	list = document.getElementById("Container").childNodes;
	for (var i = 0; i < list.length; i++) {
		if (list[i].tagName == "DIV") list[i].style.display = "none";
	}
  
	var top = document.getElementById(o.title);
	top.style.display = "block";
	scrollbar.swapContent(top);
	if (top.y) scrollbar.scrollTo(0, top.y);
  
	return false;
}

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

#leftA {
	margin-left: 20px;
	width: 160px;
	height: 800px;
	background-color: green;
	float: left;
	margin-top: 20px
}

#left {
	width: 150px;
	height: 110px;
	border: 1px solid #999;
	float: left;
	background-color: #66CC00;
	margin-top: 60px;
}

#leftb {
	width: 150px;
	height: 110px;
	border: 1px solid #999;
	float: left;
	background-color: #66CC00;
	margin-top: 60px;
}

#leftc {
	width: 150px;
	height: 110px;
	border: 1px solid #999;
	float: left;
	background-color: #66CC00;
	margin-top: 60px;
}

#lefta {
	width: 160px;
	margin-left: 0px;
	height: 90px;
	border: 1px solid #999;
	float: left;
	background-color: #66CC00;
	margin-top: 60px;
}

#rightA {
	margin-right: 5px;
	width: 90px;
	height: 800px;
	background-color: green;
	float: right;
	margin-top: 20px
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

#content2 {
	background-color: #f60;
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

#d {
	float: inherit;
	text-align: center;
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

#aa1 {
	height: 273px;
	width: 300px;
	float: right;
	border: 1px solid;
	margin-right: 10px;
	background-color: #669933;
}

#aa2 {
	height: 300px;
	width: 650px;
	margin-left: 20px;
	background-color: #669933;
	float: left;
	margin-top: 300px;
	overflow: auto;
}

<!--
幻灯片部分-->.mF_classicHC .pic {
	border: 1px solid #666;
	overflow: hidden;
}

.mF_classicHC .pic li {
	position: absolute;
	left: 1px;
	top: 1px;
}

.mF_classicHC .txt li {
	position: absolute;
	left: 0;
	background: #dedede;
	overflow: hidden;
}

.mF_classicHC .txt li a {
	display: block;
	color: #333;
	text-align: center;
	font-size: 12px;
	font-weight: bold;
	text-decoration: none;
} /*文字样式*/
.mF_classicHC .num,.mF_classicHC .num-bg {
	height: 19px;
	position: absolute;
	z-index: 3;
	right: 0;
	bottom: 31px;
	color: #fff;
} /*按钮样式*/
.mF_classicHC .num-bg {
	width: 100%;
	background: url(images/bg.png) right bottom no-repeat;
	_height: 16px;
	_background: 0;
	_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='images/bg.png',
		sizingMethod='scale');
}

.mF_classicHC .num-bg li {
	position: absolute;
}

.mF_classicHC .num li {
	float: left;
	width: 26px;
	height: 16px;
	line-height: 16px;
	padding-top: 3px;
	text-align: center;
	cursor: pointer;
	position: relative;
}

.mF_classicHC .num li span {
	position: absolute;
	top: 3px;
	left: 0;
	width: 1px;
	height: 16px;
	overflow: hidden;
	background: #DADADA;
}

.mF_classicHC .num li.current,.mF_classicHC .num li.hover {
	background: url(bd.gif) left top no-repeat;
} /*当前/悬停按钮样式*/
.mF_classicHC .num li.hover {
	background-position: right bottom;
}

<!--
幻灯片部分--><!--box-->.Scroller-Container {
	border: 1px solid;
	position: absolute;
	top: 0px;
	left: 0px;
	color: black;
}

.Scrollbar-Up {
	position: absolute;
	width: 10px;
	height: 10px;
	background-color: #669933;
	top: 450px;
	right: -555px;
	font-size: 0px;
}

.Scrollbar-Track {
	width: 10px;
	height: 160px;
	position: absolute;
	top: 470px;
	right: -555px;
	background-color: #669933;
}

.Scrollbar-Handle {
	position: absolute;
	width: 10px;
	height: 30px;
	background-color: #669933;
}

.Scrollbar-Down {
	position: absolute;
	top: 640px;
	right: -555px;
	width: 10px;
	height: 10px;
	background-color: #669933;
	font-size: 0px;
}

#Scrollbar-Container {
	position: absolute;
	border: 1px solid;
	top: 50px;
	left: 460px;
}

#Container {
	position: absolute;
	top: 500px;
	left: 400px;
	width: 600px;
	height: 200px;
	background-color: #669933;
	border: 1px solid;
}

#News,#About,#Extra {
	position: absolute;
	top: 10px;
	overflow: hidden;
	width: 400px;
	height: 180px;
	display: none;
}

#News {
	display: block;
}

p {
	margin: 0;
	padding: 0px 20px 10px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 11px;
	text-indent: 20px;
	color: #777;
}

#Navigation {
	position: absolute;
	top: 480px;
	left: 400px;
}

#Navigation a {
	margin: 5px 2px 0 0;
	padding: 0 5px;
	height: 50px;
	background-color: #669933;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 15px;
	color: #AAA;
	text-decoration: none;
	display: block;
	float: left;
	letter-spacing: 1px;
}

#Navigation a:hover {
	margin-top: 0px;
	height: 25px;
	background-color: #669933;
}

#Navigation a.current {
	margin-top: 0px;
	height: 25px;
	background-color: #CCCCCC;
	color: black;
}
</style>



</head>
<body>

	<%
		Users u = (Users) session.getAttribute("user_info");
	%>
	<div id="container">


		<div id="top">农产品信息交互平台</div>
		<div id="nav">
			<a href="index.jsp">首页</a> <a href="toda.jsp">今日要闻</a> <a
				href="pushnong.jsp">农产品信息</a> <a href="todb.jsp">市场动态</a> <a
				href="todc.jsp">分析报告</a> <a href="todd.jsp">批发市场</a> <a
				href="tode.jsp">在线交流</a> <a href="login.jsp">用户个人空间</a> <a
				href="foryou.jsp">客户服务</a> <span>&nbsp;</span>




		</div>
		<div id="mid">

			<div id="leftA">
				<div id="left">
					<ul class="ul">

						<li>已有账号：</li>
						<li><a href="login.jsp">登陆>></a></li>
						<li>还没有注册？</li>
						<li><a href="register.jsp">马上注册>></a></li>

					</ul>

				</div>

				<div id="lefta">
					<img src="images/bgn3.jpg" alt="" width="160px;" />

				</div>
				<div id="left">
					<img src="images/bgn4.jpg" alt="" width="160px;" />
				</div>
				<div id="left">
					<img src="images/bgn5.jpg" alt="" width="160px;" />
				</div>
				<div id="left">
					<img src="images/bgn6.jpg" alt="" width="160px;" />
				</div>
			</div>



			<div id="rightA">
				<div id="righta" style="padding-top: 20px; padding-bottom: 20px;">
					<!-- 淀粉市场平稳续市，需求难以给力国内玉米淀粉市场僵持中继续前行。原料玉米整体走稳，继续走高动力略显不足玉米已显疲态.
 -->
					<table>
						<tr>
							<a href="http://www.b2bagri.com.cn/news/show.php?itemid=116270">1.兰州猪肉价格连续下跌
								养殖企业每头亏损500元</a>
							<th></th>
						</tr>
						<tr>
							<th><a
								href="http://www.b2bagri.com.cn/news/show.php?itemid=116265">2.光明乳业去年净利4.06亿
									莫斯利安营收增1倍</a></th>
						</tr>
					</table>

				</div>
				<div id="righta" style="padding-top: 20px;">
					<!-- 马铃薯淀粉市场观望气氛依然较浓，西北地区淀粉企业开工投产，原料充足，淀粉企业按需收购以控制成本，下游随用随采。
 -->
					<table>
						<tr>
							<a href="http://www.b2bagri.com.cn/news/show.php?itemid=116268">
								1.警惕：罗非鱼饲料大盗之狸猫换太子</a>
							<th></th>
						</tr>
						<tr>
							<th><a
								href="http://www.b2bagri.com.cn/news/show.php?itemid=116252">2.杭州城内各大农贸市场鸡蛋价格明显上涨</a>
							</th>
						</tr>
					</table>


				</div>
				<div id="righta" style="padding-top: 20px;">
					<table>
						<tr>
							<th><a
								href="http://www.b2bagri.com.cn/news/show.php?itemid=116242">
									1.食用油价格再跳水 降幅在10％左右</a></th>
						</tr>


						<tr>
							<th><a
								href="http://www.b2bagri.com.cn/news/show.php?itemid=116241">2.海南查出玉米棉花转基因作物，农业厅依法销毁</a>
							</th>
						</tr>
					</table>


				</div>

			</div>


			<div id="right">

				<div id="mmain">
					<div id="myFocus" style="float: left;">
						<div class="loading">
							<span>请稍候...</span>
						</div>
						<!--载入画面-->
						<ul class="pic">
							<!--内容列表-->
							<li><a href="#"><img src="images/dt1.jpg" thumb=""
									alt="河南万邦国际农产品物流城，啥都有！" text="" /></a></li>
							<li><a href="#"><img src="images/dt2.jpg" thumb=""
									alt="凌家塘市场举行银企三方专家对接会" text="" /></a></li>
							<li><a href="#"><img src="images/dt3.jpg" thumb=""
									alt="兰州，储备菜上市首日部分市场情况" text="" /></a></li>
							<li><a href="#"><img src="images/dt4.jpg" thumb=""
									alt="早熟柑填补柑橘空缺上市" /></a></li>
						</ul>
					</div>
					<%
						
					%>
					<div id="aa1" style="display: inline;">
						<h3 style="padding: 30px;">今日特色</h3>
						<table
							style="margin-left: 30px; mapadding-top: 10px; margin-bottom: 10px; text-decoration: underline;">
							<tr style="margin-top: 10px;">
								<th><a href="fira.jsp">本周各类农产品行情简讯</a></th>
							</tr>
							<tr style="margin: 10px;">
								<th><a href="firb.jsp">荆州：市场肉价持续回落</a></th>
							</tr>
							<tr>
								<th><a href="firc.jsp">全国农产品批发价格指数比昨天升</a></th>
							</tr>
							<tr>
								<th><a href="fird.jsp">粮油肉禽价稳 蔬菜价格小涨</a></th>
							</tr>
							<tr>
								<th><a href="fire.jsp">鲜活农产品市场总体运行平稳</a></th>
							</tr>
						</table>




					</div>
					<div id="Navigation">


						<a href="#" onclick="return swapIt(this)" title="News"
							class="current">蔬菜信息</a> <a href="#"
							onclick="return swapIt(this)" title="About">肉类信息</a> <a href="#"
							onclick="return swapIt(this)" title="Extra">瓜果信息</a>
					</div>
					<div id="Container">
						<div id="News">
							<div class="Scroller-Container" style="font-size: 5em;">
								<div
									style="float: left; height: 300px; width: 200px; margin-left: 5px; background-image: url('images/sc1.jpg'); padding-left: 30px; font-size: 5em;">


								</div>
								<div style="margin-left: 50px; font-size: 15em; ">
									<p style="font-size: 14px;color: black; margin-left: 10px;">蔬菜，是指可以做菜、烹饪成为食品的，除了粮食以外的其他植物（多属于草本植物）。</p>
									<p style="font-size: 14px;color: black;">蔬菜是人们日常饮食中必不可少的食物之一。蔬菜可提供人体所必需的多种维生素和矿物质。据国际粮农组织1990年统计，人体必需的维生素C的90%、维生素A的60%来自蔬菜。</p>
									<p style="font-size: 14px;color: black;">此外，蔬菜中还有多种多样的植物化学物质，是人们公认的对健康有效的成分，如：类胡萝卜素、二丙烯化合物、甲基硫化合物等。目前果蔬中的营养素可以有效预防慢性、退行性疾病的多种物质正在被人们研究发现。</p>
								</div>
							</div>
						</div>
						<div id="About">
							<div class="Scroller-Container">
								<div
									style="float: left; height: 300px; width: 200px; margin-left: 5px; background-image: url('images/sc3.jpg');">

								</div>
								<p style="font-size: 14px;color: black;">古文字的“肉”字，像一块带肋骨的牲肉，其本义即指动物的肌肉，如羊肉、猪肉等；</p>
								<p style="font-size: 14px;color: black;">由动物的肌肉又引申为指植物（如蔬菜瓜果等）去皮去核而中间可食的部分。</p>
							</div>
						</div>
						<div id="Extra">
							<div class="Scroller-Container">
								<div
									style="float: left; height: 300px; width: 200px; margin-left: 5px; background-image: url('images/sc2.jpg');">
								</div>
								<p style="font-size: 14px;color: black;">瓜果，瓜与果，亦泛指水果。</p>
								<p style="font-size: 14px;color: black;">引证解释瓜与果。亦泛指果品。</p>
								<p style="font-size: 14px;color: black;">唐 杜甫 《牵牛织女》诗：“蛛丝小人态，曲缀瓜果中。”</p>
							</div>
						</div>

					</div>
					<div id="Scrollbar-Container">
						<div class="Scrollbar-Up"></div>
						<div class="Scrollbar-Down"></div>
						<div class="Scrollbar-Track">
							<div class="Scrollbar-Handle"></div>
						</div>
					</div>
					<div id="aa2">

						<img src="images/aq.jpg" alt=""
							style="margin-left: 5px; float: left; width: 270px; margin-top: 15px;" />
						<div style="margin-left: 30px; margin-top: 30px;">
							<h3>食品安全的含义有三个层次：</h3>
							第一层 食品数量安全：即一个国家或地区能够生产民族基本生存所需的膳食需要。要求人们既能买得到又能买得起生存生活所需要的基本食品。
							第二层

							食品质量安全：指提供的食品在营养，卫生方面满足和保障人群的健康需要，食品质量安全涉及食物的污染、是否有毒，添加剂是否违规超标、标签是否规范等问题，需要在食品受到污染界限之前采取措施，预防食品的污染和遭遇主要危害因素侵袭。
							第三层 食品可持续安全：这是从发展角度要求食品的获取需要注重生态环境的良好保护和资源利用的可持续。
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