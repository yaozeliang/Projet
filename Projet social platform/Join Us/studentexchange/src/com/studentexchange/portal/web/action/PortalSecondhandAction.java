package com.studentexchange.portal.web.action;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.Action;
import com.studentexchange.constant.GlobalConst;
import com.studentexchange.constant.InfoConst;
import com.studentexchange.core.entity.TbEventanswer;
import com.studentexchange.core.entity.TbSecondhand;
import com.studentexchange.core.entity.TbSecondhandlog;
import com.studentexchange.core.entity.TbUser;
import com.studentexchange.repository.hql.Criteria;
import com.studentexchange.repository.hql.Restrictions;
import com.studentexchange.service.repository.SecondhandRepository;
import com.studentexchange.service.repository.SecondhandlogRepository;
import com.studentexchange.web.base.action.BaseAction;

@SuppressWarnings("all")
@Component("portalSecondhandAction")
@Scope("prototype")
public class PortalSecondhandAction extends BaseAction {

	private TbSecondhand secondhand;

	private List<TbSecondhand> secondhands = new ArrayList<TbSecondhand>();

	@Autowired
	private SecondhandRepository secondhandRepository;

	private long baseid;

	private List<TbSecondhandlog> secondhandlogs = new ArrayList<TbSecondhandlog>();

	@Autowired
	private SecondhandlogRepository secondhandlogRepository;

	public String execute() {
		Criteria<TbSecondhand> c = new Criteria<TbSecondhand>();
		c.add(Restrictions.desc("createdate", null, true));
		c.add(Restrictions.eq("state", "1", true));
		secondhands = this.secondhandRepository.findAll(c);
		return Action.INPUT;
	}

	public String create() {
		return "create";
	}

	public String commit() throws Exception {

		if (secondhand == null) {
			return "create";
		}

		TbUser temp = (TbUser) this.sessionMap.get(GlobalConst.PORTAL_SESSION_ADMIN);
		if (temp == null) {
			msg=InfoConst.INFO_12;
			return "create";
		}
		secondhand.setTbUser(temp);
		secondhand.setState("1");
		this.secondhandRepository.saveAndFlush(secondhand);
		this.msg=InfoConst.INFO_29;
		return "create";
	}

	public String show() {
		this.secondhand = this.secondhandRepository.findOne(this.baseid);
		Criteria<TbSecondhandlog> c = new Criteria<TbSecondhandlog>();
		c.add(Restrictions.eq("tbSecondhand.baseid", this.baseid, true));
		secondhandlogs = this.secondhandlogRepository.findAll(c);
		return "show";
	}

	public TbSecondhand getSecondhand() {
		return secondhand;
	}

	public void setSecondhand(TbSecondhand secondhand) {
		this.secondhand = secondhand;
	}

	public List<TbSecondhand> getSecondhands() {
		return secondhands;
	}

	public void setSecondhands(List<TbSecondhand> secondhands) {
		this.secondhands = secondhands;
	}

	public long getBaseid() {
		return baseid;
	}

	public void setBaseid(long baseid) {
		this.baseid = baseid;
	}

	public List<TbSecondhandlog> getSecondhandlogs() {
		return secondhandlogs;
	}

	public void setSecondhandlogs(List<TbSecondhandlog> secondhandlogs) {
		this.secondhandlogs = secondhandlogs;
	}

}
