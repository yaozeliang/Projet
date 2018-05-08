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
import com.studentexchange.core.entity.TbUser;
import com.studentexchange.repository.hql.Criteria;
import com.studentexchange.repository.hql.Restrictions;
import com.studentexchange.service.repository.UserRepository;
import com.studentexchange.util.MD5Util;
import com.studentexchange.web.base.action.BaseAction;

@SuppressWarnings("all")
@Component("cmsUserAction")
@Scope("prototype")
public class CmsUserAction extends BaseAction {
	private TbUser user;

	private long baseid;

	private List<TbUser> users = new ArrayList<TbUser>();

	@Autowired
	private UserRepository userRepository;

	public String execute() {
		Criteria<TbUser> c = new Criteria<TbUser>();

		int currentPage = pager.getCurrentPage();// 当前页数
		int pageSize = pager.getEveryPage();
		Pageable pageable = new PageRequest(currentPage, pageSize);
		c.add(Restrictions.desc("createdate", null, true));
		Page<TbUser> page = this.userRepository.findAll(c, pageable);
		users = page.getContent();
		pager.setTotalCount((int) page.getTotalElements());

		return Action.INPUT;
	}

	public String manager() {
		if ("edit".equals(this.op)) {

			this.user = this.userRepository.findOne(this.baseid);
		}

		return Action.SUCCESS;
	}

	public String commit() throws Exception {
		if ("add".equals(this.op)) {
			this.msg = InfoConst.INFO_10;
			user.setCreatedate(new Date());
			this.getBaseService().create(user);
		} else if ("edit".equals(op)) {
			this.msg = InfoConst.INFO_11;
			this.getBaseService().save(user);
		} else if ("delete".equals(op)) {
			this.getBaseService().update("delete from TbUser  where baseid=" + this.baseid, null);
			this.msg = InfoConst.INFO_01;
			return this.execute();
		}
		return this.execute();
	}

	public TbUser getUser() {
		return user;
	}

	public void setUser(TbUser user) {
		this.user = user;
	}

	public long getBaseid() {
		return baseid;
	}

	public void setBaseid(long baseid) {
		this.baseid = baseid;
	}

	public List<TbUser> getUsers() {
		return users;
	}

	public void setUsers(List<TbUser> users) {
		this.users = users;
	}

}
