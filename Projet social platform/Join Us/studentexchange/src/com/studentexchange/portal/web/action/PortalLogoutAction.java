package com.studentexchange.portal.web.action;

import java.io.PrintWriter;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.Action;
import com.studentexchange.constant.GlobalConst;
import com.studentexchange.web.base.action.BaseAction;


@SuppressWarnings("all")
@Component("portalLogoutAction")
@Scope("prototype")
public class PortalLogoutAction extends BaseAction
{

	public String execute() throws Exception
	{
		this.sessionMap.remove(GlobalConst.PORTAL_SESSION_ADMIN);
		return Action.SUCCESS;
	}
}
