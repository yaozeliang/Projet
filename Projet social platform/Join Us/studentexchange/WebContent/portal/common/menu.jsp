<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=utf8"  pageEncoding="utf8"%>
<div class="top_head wp">
	<div id="toptb" class="cl"> 
	    <div class="wp">
	        
	        <s:if test="#session.portal_session_admin!=null">
			    <div class="y"> 
			      	<a class="top_login" href="javascript:void(0)"><s:property value="#session.portal_session_admin.name"/></a>
			      	<a class="top_reg" href="<%=request.getContextPath()%>/myportallogout/portallogout.action" title="Register"> 退出</a>
			    </div>
		    </s:if>
		    <s:else>
		    	<div class="y"> 
			      	<a class="top_login" href="<%=request.getContextPath()%>/myportallogin/portallogin.action" onclick="showWindow(&#39;login&#39;, this.href);return false;" title="登录"> 登录 </a>
			      	<a class="top_reg" href="<%=request.getContextPath()%>/myportalreg/portalreg.action" title="Register"> 快速注册 </a>
			    </div>
		    </s:else>
	  	</div>
	</div>
	<div id="hd">
	 	  <div class="wp"></div>
		  <div id="nv">
		    <ul>
		         <li class="a" id="mn_portal"><a href="<%=request.getContextPath()%>/myportal/portal.action" hidefocus="true" title="Portal">首页<span>Portal</span></a></li>
		         <li id="mn_N26b6"><a href="<%=request.getContextPath()%>/myportalevent/portalevent.action" hidefocus="true">活动报名</a></li>
		         <li id="mn_N0f44"><a href="<%=request.getContextPath()%>/myportalsecondhand/portalsecondhand.action" hidefocus="true">二手信息</a></li>
		         <li id="mn_Na13e"><a href="<%=request.getContextPath() %>/portal/linkus.jsp">联系我们</a></li>
		         <li id="mn_Ne556"><a href="<%=request.getContextPath() %>/portal/aboutus.jsp">关于我们</a></li>
		          <li id="mn_Ne556"><a href="<%=request.getContextPath() %>/cms/login.jsp">后台管理</a></li>
		    </ul>
		  </div>
	 <script src="<%=request.getContextPath()%>/portal/js/nv.js" type="text/javascript"></script> 
	</div>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/portal/js/global.css" type="text/css" media="all"/> 
</div>
