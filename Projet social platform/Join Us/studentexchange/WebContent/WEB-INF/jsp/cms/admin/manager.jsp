<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>		
<%
  String basePath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>

<jsp:include  page="/cms/common.jsp"/>

</head>

<body>
    <input name="msg" value="<s:property value='msg'/>" id="msg" type="hidden"/>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">账户管理</a></li>
	<li><a href="#">系统账号管理</a></li>
    </ul>
    </div>
    <div class="formbody">
    <div class="formtitle"><span>基本信息</span></div>
    <form action="<%=basePath%>/myadmin/admin!commit.action" id="fm" name="fm" method="post">
    <input type="hidden" id="op" name="op" value="<s:property value='op'/>" />
    <input type="hidden" id="baseid" name="admin.baseid" value="<s:property value='admin.baseid'/>" />
    <ul class="forminfo">
    <li><label>登录账号<b>*</b></label><input name="admin.username" value="<s:property value='admin.username'/>" id="username" type="text" class="dfinput" /></li>
    <li><label>登录密码<b>*</b></label><input name="admin.password" value="" id="password" type="password" class="dfinput" /></li>
    <li><label>&nbsp;</label>
        <s:if test="op=='add'">
 		   <input type="button" class="btn" value="添加" onclick="check();" />
	    </s:if>
	    <s:elseif test="op=='edit'">
	  	   <input type="button" class="btn" value="修改" onclick="check();" />
	    </s:elseif>
	    <input type="button"  class="btn" value="返回" onclick="history.go(-1);" />
     </li>
    </ul>
    </form>
    </div>
</body>
</html>
<script type="text/javascript">
	function check() {
		var username = $('#username').val();
		var password = $('#password').val();
		if (username == '') {
			alert('请输入登录账号');
			return false;
		}

		if (password == '') {
			alert('请输入登录密码');
			return false;
		}
		$('#fm').submit();
	}
</script>
