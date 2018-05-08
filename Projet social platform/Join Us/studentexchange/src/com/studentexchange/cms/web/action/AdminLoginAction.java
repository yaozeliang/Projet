package com.studentexchange.cms.web.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.Action;
import com.studentexchange.constant.GlobalConst;
import com.studentexchange.constant.InfoConst;
import com.studentexchange.core.entity.TbAdmin;
import com.studentexchange.util.MD5Util;
import com.studentexchange.web.base.action.BaseAction;

@SuppressWarnings("all")
@Component("adminLoginAction")
@Scope("prototype")
public class AdminLoginAction extends BaseAction {
	private TbAdmin admin;

	public String execute() {

		TbAdmin temp = (TbAdmin) this.sessionMap.get(GlobalConst.CMS_SESSION_ADMIN);
		if (temp != null) {
			return Action.SUCCESS;
		}

		if (admin == null) {
			return Action.INPUT;
		}

		List<TbAdmin> admins = this.getBaseService().find("from " + TbAdmin.class.getSimpleName() + " where  username='" + admin.getUsername() + "'");

		if (admins == null || admins.size() == 0) {
			this.msg = InfoConst.INFO_04;
			return Action.INPUT;
		}

		temp = admins.get(0);

		if (admin.getPassword() != null && MD5Util.MD5(admin.getPassword()).equals(temp.getPassword())) {

			this.sessionMap.put(GlobalConst.CMS_SESSION_ADMIN, temp);
			return Action.SUCCESS;
		} else {
			this.msg = InfoConst.INFO_06;
			return Action.INPUT;
		}
	}

	public TbAdmin getAdmin() {
		return admin;
	}

	public void setAdmin(TbAdmin admin) {
		this.admin = admin;
	}

}
