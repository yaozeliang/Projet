package com.studentexchange.commom.web.interceptor;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
import com.studentexchange.constant.GlobalConst;
import com.studentexchange.core.entity.TbUser;

public class PortalLoginInterceptor extends MethodFilterInterceptor {

	private static final long serialVersionUID = 1L;

	@Override
	protected String doIntercept(ActionInvocation ai) throws Exception {

		// 定义ActionContext 用来获取session ,request, response对象
		// 以下是在普通类中获取HttpServletRequest和HttpServletResponse的方法
		ActionContext actionContext = ActionContext.getContext();
		//HttpServletRequest request = (HttpServletRequest) actionContext.get(ServletActionContext.HTTP_REQUEST);
		//HttpServletResponse response = (HttpServletResponse) actionContext.get(ServletActionContext.HTTP_RESPONSE);
		//String path = request.getContextPath();
		//String basePath = request.getScheme() + "://" + request.getServerName()+ ":" + request.getServerPort() + path + "/";

		// 获取session，检查用户是否已经登录，注意此处的return null;很主要，防止页面多次访问
		TbUser user = (TbUser) actionContext.getSession().get(GlobalConst.PORTAL_SESSION_ADMIN);
		if (user == null) {
			// return "login" 如果没有用户登录则转向此页面，basePath用来防止路径出错
			//response.sendRedirect(basePath + "index.jsp");
			return "portalLogin";
		}
		return ai.invoke();
	}

}