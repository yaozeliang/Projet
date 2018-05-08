<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="s" uri="/struts-tags"%>	
<%
	//String basePath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>信息管理系统</title>
<jsp:include  page="/cms/common.jsp"/>

<script type="text/javascript">
	$(function() {
		//导航切换
		$(".menuson li").click(function() {
			$(".menuson li.active").removeClass("active")
			$(this).addClass("active");
		});

		$('.title').click(function() {
			var $ul = $(this).next('ul');
			$('dd').find('ul').slideUp();
			if ($ul.is(':visible')) {
				$(this).next('ul').slideUp();
			} else {
				$(this).next('ul').slideDown();
			}
		});
	})
</script>


</head>

<body style="background: #f0f9fd;">
	<div class="lefttop">
		<span></span>管理菜单
	</div>
	<dl class="leftmenu">
	
	<dd><div class="title"><span><img src="<%=request.getContextPath()%>/cms/images/leftico05.png" /></span>用户信息管理</div>
      <ul class="menuson">
       <li><cite></cite><a href="<%=request.getContextPath()%>/mycmsuser/cmsuser.action" target="rightFrame">用户信息</a><i></i></li>
      </ul>
    </dd>
	
	<dd><div class="title"><span><img src="<%=request.getContextPath()%>/cms/images/leftico05.png" /></span>二手信息管理</div>
      <ul class="menuson">
       <li><cite></cite><a href="<%=request.getContextPath()%>/mycmssecondhand/cmssecondhand.action" target="rightFrame">二手信息</a><i></i></li>
      </ul>
    </dd>
	
	<dd><div class="title"><span><img src="<%=request.getContextPath()%>/cms/images/leftico05.png" /></span>活动信息管理</div>
      <ul class="menuson">
       <li><cite></cite><a href="<%=request.getContextPath()%>/mycmsevent/cmsevent.action" target="rightFrame">活动信息</a><i></i></li>
      </ul>
    </dd>
   
    <dd><div class="title"><span><img src="<%=request.getContextPath()%>/cms/images/leftico05.png" /></span>账户管理</div>
      <ul class="menuson">
       <li><cite></cite><a href="<%=request.getContextPath()%>/myadmin/admin.action" target="rightFrame">系统账号管理</a><i></i></li>
       <li><cite></cite><a href="<%=request.getContextPath()%>/myaboutMe/aboutMe.action" target="rightFrame">个人信息管理</a><i></i></li>
      </ul>
    </dd>
    </dl>
</body>
</html>
