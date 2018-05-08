<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
$(function(){	
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	

function logout(){
	if (confirm('确定要退出吗？')) {
		$.ajax({
	         type: "post",
	         url: "<%=basePath%>/mylogout/logout.action",
	         dataType: "json",
	         success: function(data)
	         {
	        	 parent.window.location.href="<%=basePath%>/cms/login.jsp";
			 }
			});
		} else {
			return false;
		}
	}
</script>


</head>

<body style="background:url(<%=basePath %>/cms/images/topbg.gif) repeat-x;">
    <div class="topleft">
       <img src="<%=basePath %>/cms/images/loginlogo.png" title="系统首页" />
    </div>
    <div class="topright">    
    <ul>
   <%--  <li><span><img src="images/help.png" title="帮助"  class="helpimg"/></span><a href="javascript:void(0)">帮助</a></li>
    <li><a href="javascript:void(0)">关于</a></li> --%>
    <li><a href="javascript:void(0)" onclick="logout();" target="_parent">退出</a></li>
    </ul>
     
    <div class="user">
    <span><s:property value="#session.SESSION_USER.username" /></span>
    </div>    
    </div>
</body>
</html>
