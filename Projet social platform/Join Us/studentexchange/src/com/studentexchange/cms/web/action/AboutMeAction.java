package com.studentexchange.cms.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.Action;
import com.studentexchange.constant.GlobalConst;
import com.studentexchange.constant.InfoConst;
import com.studentexchange.core.entity.TbAdmin;
import com.studentexchange.core.entity.TbUser;
import com.studentexchange.service.repository.AdminRepository;
import com.studentexchange.util.MD5Util;
import com.studentexchange.web.base.action.BaseAction;

@SuppressWarnings("all")
@Component("aboutMeAction")
@Scope("prototype")
public class AboutMeAction extends BaseAction
{

	private TbAdmin admin;

	private String password;

	@Autowired
	private AdminRepository adminRepository;

	public String execute()
	{
		admin = (TbAdmin) this.sessionMap.get(GlobalConst.CMS_SESSION_ADMIN);
		admin =this.adminRepository.findOne(admin.getBaseid());
		return Action.INPUT;
	}

	public String manager()
	{
		return Action.SUCCESS;
	}

	public String commit() throws Exception
	{
		if (this.password == null || "".equals(this.password.trim()))
		{
			this.msg = InfoConst.INFO_07;
			return Action.SUCCESS;
		}
		else
		{
			admin = (TbAdmin) this.sessionMap.get(GlobalConst.CMS_SESSION_ADMIN);
			TbAdmin temp =this.adminRepository.findOne(admin.getBaseid());
			temp.setPassword(MD5Util.MD5(this.password));
			temp = this.adminRepository.saveAndFlush(temp);
			this.sessionMap.remove(GlobalConst.CMS_SESSION_ADMIN);// 清楚旧回话信息 修改了密码
			this.sessionMap.put(GlobalConst.CMS_SESSION_ADMIN, temp);
			this.msg= InfoConst.INFO_11;
		}
		return this.execute();
	}

	public TbAdmin getAdmin() {
		return admin;
	}

	public void setAdmin(TbAdmin admin) {
		this.admin = admin;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
