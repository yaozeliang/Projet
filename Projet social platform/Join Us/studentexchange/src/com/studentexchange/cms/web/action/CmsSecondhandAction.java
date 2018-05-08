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
import com.studentexchange.core.entity.TbSecondhand;
import com.studentexchange.repository.hql.Criteria;
import com.studentexchange.repository.hql.Restrictions;
import com.studentexchange.service.repository.SecondhandRepository;
import com.studentexchange.util.MD5Util;
import com.studentexchange.web.base.action.BaseAction;

@SuppressWarnings("all")
@Component("cmsSecondhandAction")
@Scope("prototype")
public class CmsSecondhandAction extends BaseAction{
	private TbSecondhand secondhand;

	private long baseid;

	private List<TbSecondhand> secondhands = new ArrayList<TbSecondhand>();

	@Autowired
	private SecondhandRepository secondhandRepository;

	public String execute()
	{
		Criteria<TbSecondhand> c = new Criteria<TbSecondhand>();
		

		int currentPage = pager.getCurrentPage();// 当前页数
		int pageSize = pager.getEveryPage();
		Pageable pageable = new PageRequest(currentPage, pageSize);
		c.add(Restrictions.desc("createdate", null, true));
		c.add(Restrictions.eq("state", "1", true));
		Page<TbSecondhand> page = this.secondhandRepository.findAll(c, pageable);
		secondhands = page.getContent();
		pager.setTotalCount((int) page.getTotalElements());

		return Action.INPUT;
	}

	public String manager()
	{
		if ("edit".equals(this.op))
		{
			
			this.secondhand = this.secondhandRepository.findOne(this.baseid);
		}

		return Action.SUCCESS;
	}

	public String commit() throws Exception
	{
		if ("add".equals(this.op))
		{
			this.msg = InfoConst.INFO_10;
			secondhand.setCreatedate(new Date());
			this.getBaseService().create(secondhand);
		}
		else if ("edit".equals(op))
		{
			this.msg= InfoConst.INFO_11;
			this.getBaseService().save(secondhand);
		}else if("delete".equals(op)){
			this.getBaseService().update("update from TbSecondhand set state='0' where baseid=" + this.baseid,null);
			this.msg =  InfoConst.INFO_01;
			return this.execute();
		}
		return this.execute();
	}

	public TbSecondhand getSecondhand() {
		return secondhand;
	}

	public void setSecondhand(TbSecondhand secondhand) {
		this.secondhand = secondhand;
	}

	public long getBaseid() {
		return baseid;
	}

	public void setBaseid(long baseid) {
		this.baseid = baseid;
	}

	public List<TbSecondhand> getSecondhands() {
		return secondhands;
	}

	public void setSecondhands(List<TbSecondhand> secondhands) {
		this.secondhands = secondhands;
	}
}
