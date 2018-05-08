package com.studentexchange.cms.web.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.Action;
import com.studentexchange.constant.InfoConst;
import com.studentexchange.core.entity.TbAdmin;
import com.studentexchange.repository.hql.Criteria;
import com.studentexchange.repository.hql.Restrictions;
import com.studentexchange.service.repository.AdminRepository;
import com.studentexchange.util.MD5Util;
import com.studentexchange.web.base.action.BaseAction;

@SuppressWarnings("all")
@Component("adminAction")
@Scope("prototype")
public class AdminAction extends BaseAction
{
	private TbAdmin admin;

	private long baseid;

	private List<TbAdmin> admins = new ArrayList<TbAdmin>();

	@Autowired
	private AdminRepository adminRepository;

	public String execute()
	{
		Criteria<TbAdmin> c = new Criteria<TbAdmin>();
		/*Criterion[] criterions = new Criterion[2];
		criterions[0] = Restrictions.eq("state", "0", true);// 禁用
		criterions[1] = Restrictions.eq("state", "1", true);// 启用
		c.add(Restrictions.or(criterions));*/

		int currentPage = pager.getCurrentPage();// 当前页数
		int pageSize = pager.getEveryPage();
		Pageable pageable = new PageRequest(currentPage, pageSize);
		c.add(Restrictions.desc("createdate", null, true));
		Page<TbAdmin> page = this.adminRepository.findAll(c, pageable);
		admins = page.getContent();
		pager.setTotalCount((int) page.getTotalElements());

		return Action.INPUT;
	}

	public String manager()
	{
		if ("edit".equals(this.op))
		{
			
			this.admin = this.adminRepository.findOne(this.baseid);
		}

		return Action.SUCCESS;
	}

	
	public String commit() throws Exception
	{
		if ("add".equals(this.op))
		{
			admins = this.getBaseService().find("from TbAdmin where username='" + admin.getUsername() + "'");
			if (admins != null && admins.size() > 0)
			{
				this.msg = InfoConst.INFO_03;
				return Action.SUCCESS;
			}
			this.msg = InfoConst.INFO_10;
			admin.setCreatedate(new Date());
			admin.setPassword(MD5Util.MD5(admin.getPassword()));
			this.getBaseService().create(admin);
		}
		else if ("edit".equals(op))
		{
			admins = this.getBaseService().find("from TbAdmin where username='" + admin.getUsername() + "' and baseid<>" + admin.getBaseid());
			if (admins != null && admins.size() > 0)
			{
				this.baseid = admin.getBaseid();
				this.msg =  InfoConst.INFO_03;
				return Action.SUCCESS;
			}
			this.msg= InfoConst.INFO_11;
			admin.setPassword(MD5Util.MD5(admin.getPassword()));
			this.getBaseService().save(admin);
		}else if("delete".equals(op)){
			this.getBaseService().update("delete from TbAdmin  where baseid=" + this.baseid,null);
			this.msg =  InfoConst.INFO_01;
			return this.execute();
		}
		return this.execute();
	}

	public TbAdmin getAdmin() {
		return admin;
	}

	public void setAdmin(TbAdmin admin) {
		this.admin = admin;
	}

	public long getBaseid() {
		return baseid;
	}

	public void setBaseid(long baseid) {
		this.baseid = baseid;
	}

	public List<TbAdmin> getAdmins() {
		return admins;
	}

	public void setAdmins(List<TbAdmin> admins) {
		this.admins = admins;
	}

}
