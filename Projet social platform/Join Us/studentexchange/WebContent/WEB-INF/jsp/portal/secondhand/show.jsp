<%@ page language="java" contentType="text/html; charset=utf8"    pageEncoding="utf8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="/portal/common/static.jsp" />
<script type="text/javascript">
	var url;
	var editor = new UE.ui.Editor({ autoHeightEnabled:false});
	editor.render("remark");
	var msg = "<s:property value="msg"/>";
	if(msg!=''){
		alert(msg);
	}
</script>
</head>

<body id="nv_forum" class="pg_viewthread" onkeydown="if(event.keyCode==27) return false;">
<jsp:include page="/portal/common/menu.jsp" />

<div id="wp" class="wp">






<style id="diy_style" type="text/css"></style>
<div class="wp">
<!--[diy=diy1]--><div id="diy1" class="area"></div><!--[/diy]-->
</div>

<div id="ct" class="wp cl">
<div id="pgt" class="pgs mbm cl ">

<a id="newspecial" class="vk_newspecial"   href="http://localhost:8080/studentexchange/myportalsecondhand/portalsecondhand!create.action" title="发新帖"> </a>
</div>




<div id="postlist" class="pl bm">
<table cellspacing="0" cellpadding="0">
<tbody><tr>
<td class="pls ptn pbn">
<div class="hm ptn">
</div>
</td>
<td class="plc ptm pbn vwthd">

<h1 class="ts">
<span id="thread_subject"><s:property value="secondhand.name"/></span>
</h1>
</td>
</tr>
</tbody></table>


<div id="post_9956717"><table id="pid9956717" class="plhin" summary="pid9956717" cellspacing="0" cellpadding="0">
<tbody><tr>
<td class="pls" rowspan="2">
<div id="favatar9956717" class="pls favatar">
 <a name="lastpost"></a><div class="pi">
<div class="authi"><a href="" target="_blank" class="xw1"><s:property value="secondhand.tbUser.name"/></a>
</div>
</div>
<div class="p_pop blk bui card_gender_2" id="userinfo9956717" style="display: none; margin-top: -11px;">
<div class="m z">
<div id="userinfo9956717_ma"></div>
</div>

</div>
<div>
<div class="avatar" onmouseover="showauthor(this, &#39;userinfo9956717&#39;)"><a href="http://www.xuesheng.fr/space-uid-608858.html" class="avtm" target="_blank"><img src="./【新提醒】出清行李箱，小家具，生活用品，厨具，文具，衣物，书_法国学生汇_来法和在法留学生新生代社区_files/58_avatar_middle.jpg" onerror="this.onerror=null;this.src=&#39;http://uc.xuesheng.fr/images/noavatar_middle.gif&#39;"></a></div>
</div>
</div>
</td>
<td class="plc">
<div class="pi">
<div class="pti">
<div class="pdbt">
</div>
<div class="authi">

<em id="authorposton9956717">发表于<s:date name="secondhand.createdate" format="yyyy-MM-dd HH:mm" /> </em>
</div>
</div>
</div><div class="pct">
<div class="pcb">
 
<div class="typeoption">
<table summary="分类信息" cellpadding="0" cellspacing="0" class="cgtl mbm">
<tbody>
<tr>
<th>所在城市:</th>
<td><s:property value="secondhand.city"/> </td>
</tr>
<tr>
<th>价格:</th>
<td><s:property value="secondhand.price"/> 欧</td>
</tr>
<tr>
<th>手机号码:</th>
<td><s:property value="secondhand.phone"/></td>
</tr>
</tbody>
</table>
</div>
<div class="t_fsz">
<table cellspacing="0" cellpadding="0"><tbody><tr><td class="t_f" id="postmessage_9956717">
<s:property value="secondhand.content" escape="false"/>
</td></tr></tbody></table>


</div>
<div id="comment_9956717" class="cm">
</div>

<div id="post_rate_div_9956717"></div>
</div>
</div>

</td></tr>
<tr><td class="plc plm">
</td>
</tr>
<tr id="_postposition9956717"></tr>
<tr>
<td class="pls"></td>
<td class="plc" style="overflow:visible;">

</td>
</tr>
<tr class="ad">
<td class="pls">
</td>
<td class="plc">
</td>
</tr>
</tbody></table>
</div><div id="postlistreply" class="pl"><div id="" class="viewthread_table" style=""> 

<s:iterator value="secondhandlogs" id="secondhandlog">
<table id="pid9956828" class="plhin" summary="pid9956828" cellspacing="0" cellpadding="0">
<tbody><tr>
<td class="pls" rowspan="2">
<div id="favatar9956828" class="pls favatar">
<a name="newpost"></a> <div class="pi">
<div class="authi"><a href="http://www.xuesheng.fr/space-uid-608881.html" target="_blank" class="xw1"><s:property value="#secondhandlog.tbUser.name"/>
</a>
</div>
</div>
<div class="p_pop blk bui card_gender_0" id="userinfo9956828" style="display: none; margin-top: -11px;">
<div class="m z">
<div id="userinfo9956828_ma"></div>
</div>
<div class="i y">
<div>
<strong><a href="http://www.xuesheng.fr/space-uid-608881.html" target="_blank" class="xi2"><s:property value="#secondhandlog.tbUser.name"/></a></strong>

</div>




<div class="imicn">
<a href="" target="_blank" title="查看详细资料"><img src="./【新提醒】出清行李箱，小家具，生活用品，厨具，文具，衣物，书_法国学生汇_来法和在法留学生新生代社区_files/userinfo.gif" alt="查看详细资料"></a>
</div>
<div id="avatarfeed"><span id="threadsortswait"></span></div>
</div>
</div>
<div>
<div class="avatar" onmouseover="showauthor(this, &#39;userinfo9956828&#39;)"><a href="http://www.xuesheng.fr/space-uid-608881.html" class="avtm" target="_blank"><img src="./【新提醒】出清行李箱，小家具，生活用品，厨具，文具，衣物，书_法国学生汇_来法和在法留学生新生代社区_files/noavatar_middle.gif" onerror="this.onerror=null;this.src=&#39;http://uc.xuesheng.fr/images/noavatar_middle.gif&#39;"></a></div>
</div>




</div>
</td>
<td class="plc">
<div class="pi">

<div class="pti">
<div class="pdbt">
</div>
<div class="authi"></div>
</div>
</div><div class="pct"><style type="text/css">.pcb{margin-right:0}</style><div class="pcb">
<div class="t_fsz">
<table cellspacing="0" cellpadding="0"><tbody><tr><td class="t_f" id="postmessage_9956828">
<s:property value="#secondhandlog.remark" escape="false"/>

</td></tr></tbody></table>


</div>
<div id="comment_9956828" class="cm">
</div>

<div id="post_rate_div_9956828"></div>
</div>
</div>

</td></tr>
<tr><td class="plc plm">
</td>
</tr>
<tr id="_postposition9956828"></tr>
<tr>
<td class="pls"></td>
<td class="plc" style="overflow:visible;">
<div class="po hin">
<div class="pob cl">
<em>
<a class="cmmnt" href="http://www.xuesheng.fr/forum.php?mod=misc&amp;action=comment&amp;tid=3323363&amp;pid=9956828&amp;extra=&amp;page=1" onclick="showWindow(&#39;comment&#39;, this.href, &#39;get&#39;, 0)">点评</a><a class="fastre" href="http://www.xuesheng.fr/forum.php?mod=post&amp;action=reply&amp;fid=635&amp;tid=3323363&amp;repquote=9956828&amp;extra=&amp;page=1" onclick="showWindow(&#39;reply&#39;, this.href)">回复</a>
<a class="editp" href="http://www.xuesheng.fr/forum.php?mod=post&amp;action=edit&amp;fid=635&amp;tid=3323363&amp;pid=9956828&amp;page=1">编辑</a><a class="replyadd" href="http://www.xuesheng.fr/forum.php?mod=misc&amp;action=postreview&amp;do=support&amp;tid=3323363&amp;pid=9956828&amp;hash=e913ebaa" onclick="ajaxmenu(this, 3000, 1, 0, &#39;43&#39;, &#39;&#39;);return false;" onmouseover="this.title = ($(&#39;review_support_9956828&#39;).innerHTML ? $(&#39;review_support_9956828&#39;).innerHTML : 0) + &#39; 人 支持&#39;" title="0 人 支持">支持 <span id="review_support_9956828"></span></a>
<a class="replysubtract" href="http://www.xuesheng.fr/forum.php?mod=misc&amp;action=postreview&amp;do=against&amp;tid=3323363&amp;pid=9956828&amp;hash=e913ebaa" onclick="ajaxmenu(this, 3000, 1, 0, &#39;43&#39;, &#39;&#39;);return false;" onmouseover="this.title = ($(&#39;review_against_9956828&#39;).innerHTML ? $(&#39;review_against_9956828&#39;).innerHTML : 0) + &#39; 人 反对&#39;">反对 <span id="review_against_9956828"></span></a>
</em>

<p>
<a href="javascript:;" id="mgc_post_9956828" onmouseover="showMenu(this.id)" class="showmenu">使用道具</a>
</p>

<ul id="mgc_post_9956828_menu" class="p_pop mgcmn" style="display: none;">
<li><a href="http://www.xuesheng.fr/home.php?mod=magic&amp;mid=repent&amp;idtype=pid&amp;id=9956828:3323363" id="a_repent_9956828" onclick="showWindow(this.id, this.href)"><img src="./【新提醒】出清行李箱，小家具，生活用品，厨具，文具，衣物，书_法国学生汇_来法和在法留学生新生代社区_files/repent.small.gif">悔悟卡</a></li>
<li><a href="http://www.xuesheng.fr/home.php?mod=magic&amp;mid=anonymouspost&amp;idtype=pid&amp;id=9956828:3323363" id="a_anonymouspost_9956828" onclick="showWindow(this.id, this.href)"><img src="./【新提醒】出清行李箱，小家具，生活用品，厨具，文具，衣物，书_法国学生汇_来法和在法留学生新生代社区_files/anonymouspost.small.gif">匿名卡</a></li><li>
</li></ul>
<script type="text/javascript" reload="1">checkmgcmn('post_9956828')</script>
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
</s:iterator>


</div><div id="post_new" class="" style="display: none;"></div></div>
</div>

<div id="f_pst" class="pl bm bmw">
<form method="post" autocomplete="off" id="fastpostform" action="<%=request.getContextPath()%>/mysecondhandlog/secondhandlog.action" onsubmit="return fastpostvalidate(this)" target="">
<input type="hidden" name="secondhandlog.tbSecondhand.baseid" value="<s:property value="baseid"/>"></input>
 

<table cellspacing="0" cellpadding="0">
<tbody><tr>
<td class="pls">
<div class="avatar avtm"><img src="./【新提醒】出清行李箱，小家具，生活用品，厨具，文具，衣物，书_法国学生汇_来法和在法留学生新生代社区_files/81_avatar_middle.jpg" onerror="this.onerror=null;this.src=&#39;http://uc.xuesheng.fr/images/noavatar_middle.gif&#39;"></div></td>
<td class="plc">

<span id="fastpostreturn" class=""></span>


<div class="cl">
<script id="remark" name="secondhandlog.remark"  type="text/plain" style="width:750px;height:200px;"></script>
</div>
<div id="seccheck_fastpost"></div>


<input type="hidden" name="posttime" id="posttime" value="1489463561">
<div class="upfl">
<table cellpadding="0" cellspacing="0" border="0" id="attach_tblheader" style="display: none;">
<tbody><tr>
<td>点击附件文件名添加到帖子内容中</td>
<td class="atds">描述</td>
<td class="attc"></td>
</tr>
</tbody></table>
<div class="fieldset flash" id="attachlist"></div>

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


</div>
 
     





 
			
			</body></html>