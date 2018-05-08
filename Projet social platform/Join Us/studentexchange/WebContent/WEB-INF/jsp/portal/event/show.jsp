<%@ page language="java" contentType="text/html; charset=utf8"  pageEncoding="utf8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0046)http://www.xuesheng.fr/thread-3323216-1-1.html -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="/portal/common/static.jsp" />
</head>
<body id="nv_forum" class="pg_viewthread" onkeydown="if(event.keyCode==27) return false;">
<jsp:include page="/portal/common/menu.jsp" />
 
 <script type="text/javascript">
		
		
		var msg = "<s:property value="msg"/>";
		if(msg!=''){
			alert(msg);
		}
		
		
</script>
 






<div id="wp" class="wp">
<script type="text/javascript">var fid = parseInt('768'), tid = parseInt('3323216');</script>

<script src="js/forum_viewthread.js" type="text/javascript"></script>
<script type="text/javascript">zoomstatus = parseInt(1);var imagemaxwidth = '540';var aimgcount = new Array();</script>

<style id="diy_style" type="text/css"></style>
<!--[diy=diynavtop]--><div id="diynavtop" class="area"></div><!--[/diy]-->
<div id="pt" class="bm cl">
</div>

<style id="diy_style" type="text/css"></style>
<div class="wp">
<!--[diy=diy1]--><div id="diy1" class="area"></div><!--[/diy]-->
</div>

<div id="ct" class="wp cl">
<div id="pgt" class="pgs mbm cl ">
<div class="pgt"></div>
<a id="newspecial" class="vk_newspecial" href="<%=request.getContextPath()%>/myportalevent/portalevent!create.action" title="发新帖"> </a>
</div>

<ul class="p_pop" id="newspecial_menu" style="display: none">
<li class="activity"><a href="http://www.xuesheng.fr/forum.php?mod=post&amp;action=newthread&amp;fid=768&amp;special=4">发起活动</a></li></ul>


<div id="postlist" class="pl bm">
<table cellspacing="0" cellpadding="0">
<tbody><tr>
<td class="pls ptn pbn">
</td>
<td class="plc ptm pbn vwthd">
<h1 class="ts">
<a href="http://www.xuesheng.fr/forum.php?mod=forumdisplay&amp;fid=768&amp;filter=typeid&amp;typeid=1108">[活动信息]</a>
<span id="thread_subject"><s:property value="myevent.name"/>   </span>
</h1>
</td>
</tr>
</tbody></table>


<table cellspacing="0" cellpadding="0" class="ad">
<tbody><tr>
<td class="pls">
</td>
<td class="plc">
</td>
</tr>
</tbody></table><div id="post_9956364"><table id="pid9956364" class="plhin" summary="pid9956364" cellspacing="0" cellpadding="0">
<tbody><tr>
<td class="pls" rowspan="2">
<div id="favatar9956364" class="pls favatar">
 <a name="lastpost"></a><div class="pi">
<div class="authi"><a href="http://www.xuesheng.fr/space-uid-356869.html" target="_blank" class="xw1"><s:property value="myevent.tbUser.name"/></a>
</div>
</div>
<div class="p_pop blk bui card_gender_2" id="userinfo9956364" style="display: none; margin-top: -11px;">
<div class="m z">
<div id="userinfo9956364_ma"></div>
</div>
<div class="iy">
<div>
</div>
<div class="imicn">
</div>
</div>
</div>
<div>
<div class="avatar" onmouseover="showauthor(this, &#39;userinfo9956364&#39;)"><a href="http://www.xuesheng.fr/space-uid-356869.html" class="avtm" target="_blank"><img src="js/69_avatar_middle.jpg" onerror="this.onerror=null;this.src=&#39;http://uc.xuesheng.fr/images/noavatar_middle.gif&#39;"></a></div>
</div>

</div>
</td>
<td class="plc">
<div class="pi">
<strong>
<a href="http://www.xuesheng.fr/forum.php?mod=viewthread&amp;tid=3323216&amp;fromuid=608881" title="您的朋友访问此链接后，您将获得相应的积分奖励" id="postnum9956364" onclick="setCopy(this.href, &#39;帖子地址复制成功&#39;);return false;">
楼主(1楼)</a>
</strong>
<div class="pti">
<div class="pdbt">
</div>
<div class="authi">
<em id="authorposton9956364">发表于<s:date name="myevent.createdate" format="yyyy-MM-dd HH:mm:ss" /> </em>
</div>
</div>
</div><div class="pct"><style type="text/css">.pcb{margin-right:0}</style><div class="pcb">
 
<div class="pcbs">
<script type="text/javascript">
function checkform(theform) {
if (theform.message.value.length > 200) {
alert('您的留言超过 200 个字符的限制');
theform.message.focus();
return false;
}
return true;
}
</script>

<div class="act pbm cl">
<div class="spvimg">

<a href="javascript:;"><img src="<%=request.getContextPath()%>/<s:property value="myevent.imgpath"/>" onclick="zoom(this, &#39;data/attachment/forum/201701/24/115320vjhk1jqnqpzjnhha.jpg&#39;)" width="300"></a></div>
<div class="spi">
<dl>
<dt>活动类型:</dt>
<dd><strong><s:if test="myevent.activityclass==1">聚餐派对</s:if><s:elseif test="myevent.activityclass==2">户外活动</s:elseif><s:elseif test="myevent.activityclass==3">展览沙龙</s:elseif><s:elseif test="myevent.activityclass==4">开设课程</s:elseif><s:elseif test="myevent.activityclass==5">旅游线路</s:elseif></strong></dd>
<dt>开始时间:</dt>
<dd>
<s:if test="myevent.holdenddate!=null"> 至 <s:date name="myevent.holdenddate" format="yyyy-MM-dd HH:mm"/></s:if>
</dd>
<dt>活动地点:</dt>
<dd><s:property value="myevent.address"/></dd>
<dt>每人花销:</dt>
<dd><s:property value="myevent.fee"/>元</dd>
</dl>
<dl class="nums mtw">
<dt>已报名人数:</dt>
<dd>
<em>2</em> 人
</dd>
</dl>
<dl>
<dt>报名截止:</dt>
<dd><s:date name="myevent.holdenddate" format="yyyy-MM-dd HH:mm"/></dd>
 
<dt></dt>
<dd> 
 
      
 </dd> 
   
 

 
<dt></dt>
<dd>
</dd>
</dl>
</div>
</div>

<table cellspacing="0" cellpadding="0"><tbody><tr><td class="t_f" id="postmessage_9956364">
<style>
.mx_box { min-height:350px;/* border:1px solid #ccc; */ margin:10px; font-size:12px; font-family:Verdana, Arial, Helvetica, sans-serif }
.mx_tagmenu { height:35px; line-height:28px; font-size:14px; position:relative; border-bottom:1px solid #cfcfcf }
.mx_tagmenu ul { position:absolute; left:10px; bottom:-1px; height:32px; }
ul.dpw_menu li { float:left; border:1px solid #cfcfcf; list-style:none; border-bottom:none; background:#fff; height:30px; color:#444444; line-height:31px; margin:0 5px; text-align:center; padding:0 12px; cursor:pointer }
ul.dpw_menu li.current { border:1px solid #cfcfcf; border-bottom:none; height:31px; font-weight:bold; color:#303030; line-height:32px; margin:0 }
.mx_content { padding:10px }
.mx_pic { background:url(./source/plugin/dpw_activity/image/pic.png) no-repeat -9999px -9999px; }
.mx_ijone { display: inline-block; width:113px; height:32px; line-height:32px; color:#FFF; border:none; font-size:14px; font-weight:bold; text-align:center; text-decoration:none; cursor:pointer; }
.mx_regBtn { background-position:-480px 0; }
.mx_regBtn:hover { text-decoration:none; background-position:-480px -42px; }
.mx_upBtn { margin-left:0px; background-position:-480px -84px; }
.mx_upBtn:hover { text-decoration:none; background-position:-480px -126px; }
.dpw_dd_option { font-weight:bold; color:#F60 }
#activitymap { width:500px; height:500px; border:1px solid #cfcfcf; }
a.mx_activity_vote { background:#f32615; color:#ffffff; padding:3px 5px; margin:5px; }
.spi { position:relative; }
.xi2 a { cursor:pointer; }
/* ����չʾ */
.mx_rate { margin: 0px; font-size: 12px; }
.mx_rate, .mx_ratesv, .mx_rate_big { display: inline-block; width: 60px; height: 16px; line-height: 16px; background: url(./source/plugin/dpw_activity/image/rate.png) no-repeat 0 0; cursor:pointer }
.mx_rate span, .mx_ratesv span, .mx_rate_big span { display: inline-block; background: url(./source/plugin/dpw_activity/image/rate.png) no-repeat 0 -16px; }
.mx_ratep { border-radius: 0 3px 3px 0; display: inline-block; width: 60px; height: 10px; line-height: 10px; background: url(./source/plugin/dpw_activity/image/pn_v2.png) no-repeat 0 0; }
.mx_ratep span { border-radius: 0 3px 3px 0; display: inline-block; background: url(./source/plugin/dpw_activity/image/pn_v2.png) no-repeat 0 -48px; }
.ml .mx_rate span { float: left; }
.mx_ratesv { background-position: 0 -32px; }
.mx_ratesv span { background-position: 0 -48px; }
.mx_rate_big { margin-right: 5px; width: 85px; cursor: pointer; background-position: 0 -68px; }
.mx_rate_big span { background-position: 0 -92px; }
.scored { cursor: default; }
.report { padding-left: 16px; background: url(./source/plugin/dpw_activity/image/ico_report.png) no-repeat 0 50%; }
.mx_rateline { padding: 5px 0px; width: 400px; }
.mx_rateline div { border-radius: 5px; padding: 5px 15px; border: 1px dotted #DEEFFB; margin-right: 5px; float: left; padding-top:6px; text-align: center; }
.mx_rateline div .mx_rate { text-align: left; }
.mx_rateline div p, .mx_rateline ul { margin:0 }
.floatwrap { position:relative; }
#rtimedd { line-height: 23px; border: 1px solid #999; padding: 1px 4px; border-radius: 4px; }
.t_f a { text-decoration:none }
.t_f ul li { list-style:none; }
.mxapplylist { }
.mxapplylist li { margin:3px; float:left; list-style:none; }
.mxapplylist li img { width:50px; height:50px; }
.applyargee { min-width:300px; min-height:300px; padding:10px; min-width: 300px; max-width: 400px; max-height: 400px; overflow: auto; }
.applyext{min-width:300px;  }
.applyext input{width:50px;}
.applyext td{padding:3px;}
</style>


<div class="mx_box">
  <div class="mx_tagmenu">
    <ul class="dpw_menu">
      <li class="current">活动查看</li>
      
      <li>已通过</li>
       
       
      
    </ul>
  </div>
  <div class="mx_content">
    <div class="layout" id="No0">
         <s:property value="myevent.remark" escape="false"/>
    </div>
   
 
     
 
     
     
  </div>
</div>
 
 






</td></tr></tbody></table>







</div>

</div>
</div>

</td></tr>
<tr id="_postposition9956364"></tr>
<tr>
<td class="pls"></td>
<td class="plc" style="overflow:visible;">
<div class="po hin">
<div class="pob cl">
<em>
<a class="fastre" href="http://www.xuesheng.fr/forum.php?mod=post&amp;action=reply&amp;fid=768&amp;tid=3323216&amp;reppost=9956364&amp;extra=page%3D1&amp;page=1" onclick="showWindow(&#39;reply&#39;, this.href)">回复</a>
</em>

<p>
<a href="javascript:;" id="mgc_post_9956364" onmouseover="showMenu(this.id)" class="showmenu">使用道具</a>
<a href="javascript:;" onclick="showWindow(&#39;miscreport9956364&#39;, &#39;misc.php?mod=report&amp;rtype=post&amp;rid=9956364&amp;tid=3323216&amp;fid=768&#39;, &#39;get&#39;, -1);return false;">举报</a>
</p>

<ul id="mgc_post_9956364_menu" class="p_pop mgcmn" style="display: none;">
<li><a href="http://www.xuesheng.fr/home.php?mod=magic&amp;mid=bump&amp;idtype=tid&amp;id=3323216" id="a_bump" onclick="showWindow(this.id, this.href)"><img src="js/bump.small.gif">提升卡</a></li>
<li><a href="http://www.xuesheng.fr/home.php?mod=magic&amp;mid=stick&amp;idtype=tid&amp;id=3323216" id="a_stick" onclick="showWindow(this.id, this.href)"><img src="js/stick.small.gif">置顶卡</a></li>
<li><a href="http://www.xuesheng.fr/home.php?mod=magic&amp;mid=jack&amp;idtype=tid&amp;id=3323216" id="a_jack" onclick="showWindow(this.id, this.href)"><img src="js/jack.small.gif">千斤顶</a></li>
</ul>
<script type="text/javascript" reload="1">checkmgcmn('post_9956364')</script>
</div>
</div>
</td>
</tr>
<tr class="ad">
<td class="pls">
</td>
<td class="plc">
</td>
</tr>
</tbody></table>
<script type="text/javascript" reload="1">
aimgcount[9956364] = ['2105725','2105723','2105724','2105721','2105722'];
attachimggroup(9956364);
attachimgshow(9956364);
var aimgfid = 0;
</script>
</div><div id="postlistreply" class="pl"><div id="" class="viewthread_table" style="">
 <s:iterator value="eventanswers" id="eventanswer">
<table id="pid9956807" class="plhin" summary="pid9956807" cellspacing="0" cellpadding="0">
<tbody><tr>
<td class="pls" rowspan="2">
<div id="favatar9956807" class="pls favatar">
<a name="newpost"></a> <div class="pi">
<div class="authi"><a href="http://www.xuesheng.fr/space-uid-608881.html" target="_blank" class="xw1"><s:property value="#eventanswer.tbUser.name"/></a>
</div>
</div>
<div class="p_pop blk bui card_gender_0" id="userinfo9956807" style="display: none; margin-top: -11px;">
<div class="m z">
<div id="userinfo9956807_ma"></div>
</div>
<div class="i y">
<div>


</div>

<div id="avatarfeed"><span id="threadsortswait"></span></div>
</div>
</div>
<div>
<div class="avatar" onmouseover="showauthor(this, &#39;userinfo9956807&#39;)"><a href="http://www.xuesheng.fr/space-uid-608881.html" class="avtm" target="_blank"><img src="js/81_avatar_middle.jpg" onerror="this.onerror=null;this.src=&#39;http://uc.xuesheng.fr/images/noavatar_middle.gif&#39;"></a></div>
</div>







</div>
</td>
<td class="plc">
<div class="pi">
<div class="pti">
<div class="pdbt">
</div>
<div class="authi">

</div>
</div>
</div><div class="pct"><style type="text/css">.pcb{margin-right:0}</style><div class="pcb">
<div class="pcbs">
<table cellspacing="0" cellpadding="0"><tbody><tr><td class="t_f" id="postmessage_9956807">
<s:property value="#eventanswer.remark" escape="false"/>

</td></tr></tbody></table>


</div>
<div id="comment_9956807" class="cm">
</div>

<div id="post_rate_div_9956807"></div>
</div>
</div>

</td></tr>
<tr><td class="plc plm">
</td>
</tr>
<tr id="_postposition9956807"></tr>
<tr>
<td class="pls"></td>
<td class="plc" style="overflow:visible;">
<div class="po hin">
<div class="pob cl">
<em>
<a class="cmmnt" href="http://www.xuesheng.fr/forum.php?mod=misc&amp;action=comment&amp;tid=3323216&amp;pid=9956807&amp;extra=&amp;page=1" onclick="showWindow(&#39;comment&#39;, this.href, &#39;get&#39;, 0)">点评</a><a class="fastre" href="http://www.xuesheng.fr/forum.php?mod=post&amp;action=reply&amp;fid=768&amp;tid=3323216&amp;repquote=9956807&amp;extra=&amp;page=1" onclick="showWindow(&#39;reply&#39;, this.href)">回复</a>
<a class="editp" href="http://www.xuesheng.fr/forum.php?mod=post&amp;action=edit&amp;fid=768&amp;tid=3323216&amp;pid=9956807&amp;page=1">编辑</a></em>

<p>
<a href="javascript:;" id="mgc_post_9956807" onmouseover="showMenu(this.id)" class="showmenu">使用道具</a>
</p>

<ul id="mgc_post_9956807_menu" class="p_pop mgcmn" style="display: none;">
<li><a href="http://www.xuesheng.fr/home.php?mod=magic&amp;mid=repent&amp;idtype=pid&amp;id=9956807:3323216" id="a_repent_9956807" onclick="showWindow(this.id, this.href)"><img src="js/repent.small.gif">悔悟卡</a></li>
<li><a href="http://www.xuesheng.fr/home.php?mod=magic&amp;mid=anonymouspost&amp;idtype=pid&amp;id=9956807:3323216" id="a_anonymouspost_9956807" onclick="showWindow(this.id, this.href)"><img src="js/anonymouspost.small.gif">匿名卡</a></li><li>
</li></ul>
<script type="text/javascript" reload="1">checkmgcmn('post_9956807')</script>
</div>
</div>
</td>
</tr>
<tr class="ad">
<td class="pls">
</td>
<td class="plc">
</td>
</tr>
</tbody>
</table>
</s:iterator>



</div><div id="post_new" class="" style="display: none;"></div></div>
</div>






<div class="pgs mtm mbm cl">
<span class="pgb y"><a href="http://www.xuesheng.fr/forum-768-1.html">返回列表</a></span>
<a id="newspecialtmp" class="vk_newspecial" onmouseover="$(&#39;newspecial&#39;).id = &#39;newspecialtmp&#39;;this.id = &#39;newspecial&#39;;showMenu({&#39;ctrlid&#39;:this.id})" onclick="location.href=&#39;forum.php?mod=post&amp;action=newthread&amp;fid=768&#39;;return false;" href="javascript:;" title="发新帖"> </a>
<a id="post_replytmp" class="vk_post_reply" onclick="showWindow(&#39;reply&#39;, &#39;forum.php?mod=post&amp;action=reply&amp;fid=768&amp;tid=3323216&#39;)" href="javascript:;" title="回复"> </a>
</div>

<!--[diy=diyfastposttop]--><div id="diyfastposttop" class="area"></div><!--[/diy]-->
<script type="text/javascript">
var postminchars = parseInt('10');
var postmaxchars = parseInt('30000');
var disablepostctrl = parseInt('0');
</script>

<div id="f_pst" class="pl bm bmw">
<form method="post" autocomplete="off" id="fastpostform" action="<%=request.getContextPath()%>/myportaleventanswer/eventanswer.action" onsubmit="return fastpostvalidate(this)" target="">
<input type="hidden" name="eventanswer.tbEvent.baseid" value="<s:property value="baseid"/>"></input>
 
<table cellspacing="0" cellpadding="0">
<tbody><tr>
<td class="pls">
<div class="avatar avtm"><img src="js/81_avatar_middle(1).jpg" onerror="this.onerror=null;this.src=&#39;http://uc.xuesheng.fr/images/noavatar_middle.gif&#39;"></div></td>
<td class="plc">

<span id="fastpostreturn" class=""></span>


<div class="cl">
<script id="remark" name="eventanswer.remark"  type="text/plain" style="width:750px;height:200px;"></script>
</div>


<p class="ptm pnpost">
<button type="submit" onmouseover="checkpostrule(&#39;seccheck_fastpost&#39;, &#39;ac=reply&#39;);this.onmouseover=null" name="replysubmit" id="fastpostsubmit" class="pn pnc vm" value="replysubmit" tabindex="5"><strong>发表回复</strong></button>
</p>




</td>
</tr>
</tbody></table>
</form>
</div>




</div>

<div class="wp mtn">
<!--[diy=diy3]--><div id="diy3" class="area"></div><!--[/diy]-->
</div>

<script type="text/javascript">
var url;
var editor = new UE.ui.Editor({ autoHeightEnabled:false});
editor.render("remark");
</script></div>
 
    </body></html>