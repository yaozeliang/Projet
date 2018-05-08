<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>	
<%
	String basePath = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎系统管理平台</title>
<jsp:include  page="/cms/common.jsp"/>
<script language="javascript">
	
	$(function() {
		$('.loginbox').css({
			'position' : 'absolute',
			'left' : ($(window).width() - 692) / 2
		});
		$(window).resize(function() {
			$('.loginbox').css({
				'position' : 'absolute',
				'left' : ($(window).width() - 692) / 2
			});
		})
	});

	function check() {
		var name = $('#name').val();
		var password = $('#password').val();
		
		if (name == '') 
		{
			alert('请输入登录账号');
			return false;
		}

		if (password == '') 
		{
			alert('请输入登录密码');
			return false;
		}
		$('#fm').submit();
	}

</script>

</head>

<body style="background-color: #1c77ac; background-image: url(<%=basePath %>/cms/images/light.png); background-repeat: no-repeat; background-position: center top; overflow: hidden;">
	<div id="mainBody">
		<div id="cloud1" class="cloud"></div>
		<div id="cloud2" class="cloud"></div>
	</div>

	<div class="logintop">
		<span>欢迎进入系统管理平台</span>
		<!--  
		<ul>
         	<li><a href="javascript:void(0);">回首页</a></li>
         	<li><a href="javascript:void(0);">帮助</a></li>
        	<li><a href="javascript:void(0);">关于</a></li>
    	</ul> 
    	-->   
	</div>

	<form action="<%=basePath %>/myAdminLogin/adminlogin.action" id="fm" name="fm" method="post">
		<div class="loginbody">
		   <span class="systemlogo"><img src="<%=request.getContextPath() %>/cms/images/loginlogo.png" alt=""  height="71" width="281"/></span>   
			<div class="loginbox">
				<ul>
					<li>
					   <input name="admin.username" type="text" class="loginuser" id="name" value="" placeholder="登录账号"/>
					</li>
					<li>
					   <input name="admin.password" type="password" class="loginpwd" id="password" value="" placeholder="登录密码"/>
					 </li>
					<li>
					  <input name="" type="button" class="loginbtn" value="登录"	onclick="check();" />
					    <!--  
					   <label><input name="" type="checkbox" value="" checked="checked" />记住密码</label>
					   <label><a href="javascript:void(0);">忘记密码？</a></label>
					   -->
					</li>
				</ul>
			</div>
		</div>
	</form>
	<input name="msg" value="<s:property value='msg'/>" id="msg" type="hidden"/>
</body>
</html>
