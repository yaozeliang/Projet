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
<script type="text/javascript">

 
 function edit()
 {
	 window.location.href="<%=request.getContextPath()%>/myaboutMe/aboutMe!manager.action";
 }
</script>
</HEAD>
<BODY>
<input name="msg" value="<s:property value='msg'/>" id="msg" type="hidden"/>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
		    <li><a href="#">首页</a></li>
			<li><a href="#">账户管理</a></li>
			<li><a href="#">个人信息管理</a></li>
		</ul>
	</div>

	<div class="rightinfo">
		<table class="tablelist">
			<thead>
				<tr>
					<th>登录账号</th>
					<th>登录密码</th>
					 <th>操作</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><s:property value="admin.username"/></td>
					<td><s:property value="admin.password"/></td>
					<td>
					   <a href="javascript:void(0)" class="tablelink" onclick="edit()">修改</a>
					</td>
				</tr>
			</tbody>
		</table>

</BODY>
</HTML>


