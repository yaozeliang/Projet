<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="/portal/common/static.jsp" />

</head>


<body id="nv_forum" class="pg_post" onkeydown="if(event.keyCode==27) return false;">

<jsp:include page="/portal/common/menu.jsp" />


<div id="wp" class="wp">
<script type="text/javascript">
var msg = "<s:property value="msg"/>";
if(msg!=''){
	alert(msg);
}
var url;
var editor = new UE.ui.Editor({ autoHeightEnabled:false});
editor.render("remark");
</script>



<div id="pt" class="bm cl">
<div class="z"><a href="http://www.xuesheng.fr/" class="nvhm" title="首页">法国学生汇</a>  <em>›</em> <a href="http://www.xuesheng.fr/forum.php">论坛</a> <em>›</em> <a href="http://www.xuesheng.fr/forum.php?gid=1">学生汇</a> <em>›</em> <a href="http://www.xuesheng.fr/forum-635-1.html">甩二手</a>

 <em>›</em> 
发表帖子

</div>
</div>
<form method="post" autocomplete="off" id="postform" action="<%=request.getContextPath() %>/myportalsecondhand/portalsecondhand!commit.action" onsubmit="return validate(this)">
<div id="ct" class="ct2_a ct2_a_r wp cl">
<div class="bm bw0 cl">

<div id="draftlist_menu" style="display:none">
</div>


<div id="postbox">
<div class="pbt cl">
<input type="hidden" name="sortid" value="122">
<div class="z">
<span>

</div>
</div>

<table cellspacing="0" cellpadding="0" class="tfm">
<tbody>

<tr>
<th class="ptm pbm bbda">名称</th>
<td class="ptm pbm bbda">
<div id="select_fr_tb_prix">
<s:textfield name="secondhand.name" id="name" ></s:textfield></div>				 

</td>
<td class="ptm pbm bbda" width="180"><span id="checkfr_tb_prix"></span></td>
</tr>
	
<tr>
<th class="ptm pbm bbda">价格</th>
<td class="ptm pbm bbda">
<div id="select_fr_tb_prix">
<s:textfield name="secondhand.price" id="price" ></s:textfield>
欧</div>				 

</td>
<td class="ptm pbm bbda" width="180"><span id="checkfr_tb_prix"></span></td>
</tr>	
 <tr>
<th class="ptm pbm bbda"><span class="rq">*</span>电话号码</th>
<td class="ptm pbm bbda">
<div id="select_yp_phone">
<s:textfield name="secondhand.phone" id="phone" ></s:textfield>
</div>				 
<div class="d">
请按照格式输入手机或座机号码，不能为空。</div>
</td>
<td width="180" class="ptm pbm bbda"><span id="checkyp_phone"></span></td>
</tr>
<tr id="tr_address">
<th class="ptm pbm bbda">联系地址</th>
<td class="ptm pbm bbda">
<div id="select_yp_address">
<s:textfield name="secondhand.address" id="adress" ></s:textfield>
</div>				 
<div class="d">
请输入正确的街道名称或地址，您的广告中就会出现地图。</div>
</td>
<td width="180" class="ptm pbm bbda"><span id="checkyp_address"></span></td>
</tr>
<tr id="tr_zipcode">
<th class="ptm pbm bbda">邮政编码</th>
<td class="ptm pbm bbda" colspan="2">
<div>
<table>
<tbody>
<tr>
<td style="padding-top:0px">
<s:textfield name="secondhand.zipcode" id="zipcode" ></s:textfield>
<div id="locationtip2"></div>
</td>
<td style="width:50px">&nbsp;</td>
<td style="padding-top:0px;width:130px">
所在地区
</td>
<td style="padding-top:0px">
<s:textfield name="secondhand.city" id="city" ></s:textfield>
</td>
</tr>
</tbody>
</table>
</div>				 
<div class="d">请输入正确的街道名称或地址，您的广告中就会出现地图。</div>
</td>
</tr>
</tbody></table>
</div>
<script id="remark" name="secondhand.content"  type="text/plain" style="width:900px;height:200px;"></script>
<div class="mtm mbm pnpost">
<button type="submit" id="postsubmit" class="pn pnc" value="true" name="topicsubmit">
<span>发起活动</span>
</button>
</div>
</div></div>
</div>
</form>
</div>
</body></html>
