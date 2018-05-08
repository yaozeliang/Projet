<%@ page language="java" contentType="text/html; charset=utf8"    pageEncoding="utf8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="/portal/common/static.jsp" />
</head>


<body id="nv_forum" class="pg_forumdisplay" onkeydown="if(event.keyCode==27) return false;">
<jsp:include page="/portal/common/menu.jsp" />

<div id="wp" class="wp">

<div id="pt" class="bm cl">
<div class="z">
<a href="http://www.xuesheng.fr/" class="nvhm" title="首页">法国学生汇</a><em>»</em><a href="http://www.xuesheng.fr/forum.php">论坛</a> <em>›</em> <a href="http://www.xuesheng.fr/forum.php?gid=1">学生汇</a><em>›</em> <a href="http://www.xuesheng.fr/forum-635-1.html">甩二手</a></div>
</div><div class="wp">
<!--[diy=diy1]--><div id="diy1" class="area"></div><!--[/diy]-->
</div>
<div class="boardnav">
<div id="ct" class="wp cl">

<div class="mn">






<div id="pgt" class="bm bw0 pgs cl">
<a href="<%=request.getContextPath()%>/myportalsecondhand/portalsecondhand!create.action" id="newspecial" class="vk_newspecial"  title="发新帖"></a></div>

<div id="threadlist" class="tl bm bmw" style="position: relative;">                                                                                                                  <div>
    
</div>
<div class="bm_c">
<table summary="forum_635" cellspacing="0" cellpadding="0" id="threadlisttableid">
<tbody id="separatorline" class="emptb"><tr><td class="icn"></td><th></th><td class="by"></td><td class="num"></td><td class="by"></td></tr></tbody>
<s:iterator value="secondhands" id="secondhand">
<tbody id="normalthread_3323363">
<tr>
<td class="icn">
<a href="<%=request.getContextPath()%>/myportalsecondhand/portalsecondhand!show.action?baseid=<s:property value="#secondhand.baseid"/>"><img src="<%=request.getContextPath()%>/portal/images/folder_common.gif"/></a>
</td>
<th class="common">
 
<a href="<%=request.getContextPath()%>/myportalsecondhand/portalsecondhand!show.action?baseid=<s:property value="#secondhand.baseid"/>"><s:property value="#secondhand.name"/></a>
<p>
	 
	<em>所在城市：</em><s:property value="#secondhand.city"/>   <em>价格:</em><s:property value="#secondhand.price"/> 欧</p></th>

</tr>
</tbody>

</s:iterator>

</table>

</div>
</div>






<div class="bm bw0 pgs cl">
  <a href="<%=request.getContextPath()%>/myportalsecondhand/portalsecondhand!create.action" id="newspecialtmp"  title="发新帖" class="vk_newspecial"></a> 
</div>

</div>

</div>
</div>



</div>
			
			
</body></html>