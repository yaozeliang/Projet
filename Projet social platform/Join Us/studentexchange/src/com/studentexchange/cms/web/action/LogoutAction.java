package com.studentexchange.cms.web.action;

import java.io.PrintWriter;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.studentexchange.constant.GlobalConst;
import com.studentexchange.web.base.action.BaseAction;


@SuppressWarnings("all")
@Component("logoutAction")
@Scope("prototype")
public class LogoutAction extends BaseAction
{

	public String execute() throws Exception
	{
		try
		{
			this.sessionMap.remove(GlobalConst.CMS_SESSION_ADMIN);
			ObjectMapper mapper = new ObjectMapper();
			String json = mapper.writeValueAsString("success");
			System.out.println(json);
			this.response.setContentType("application/json");
			this.response.setCharacterEncoding("UTF-8");
			this.response.setHeader("Cache-Control", "no-cache");
			PrintWriter printWriter = this.response.getWriter();
			printWriter.print(json);
			printWriter.flush();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	

}
