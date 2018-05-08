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
import com.studentexchange.core.entity.TbEvent;
import com.studentexchange.repository.hql.Criteria;
import com.studentexchange.repository.hql.Restrictions;
import com.studentexchange.service.repository.EventRepository;
import com.studentexchange.util.MD5Util;
import com.studentexchange.web.base.action.BaseAction;

@SuppressWarnings("all")
@Component("cmsEventAction")
@Scope("prototype")
public class CmsEventAction extends BaseAction{
	private TbEvent event;

	private long baseid;

	private List<TbEvent> events = new ArrayList<TbEvent>();

	@Autowired
	private EventRepository eventRepository;

	public String execute()
	{
		Criteria<TbEvent> c = new Criteria<TbEvent>();
		

		int currentPage = pager.getCurrentPage();// 当前页数
		int pageSize = pager.getEveryPage();
		Pageable pageable = new PageRequest(currentPage, pageSize);
		c.add(Restrictions.desc("createdate", null, true));
		c.add(Restrictions.eq("state", "1", true));
		Page<TbEvent> page = this.eventRepository.findAll(c, pageable);
		events = page.getContent();
		pager.setTotalCount((int) page.getTotalElements());

		return Action.INPUT;
	}

	public String manager()
	{
		if ("edit".equals(this.op))
		{
			
			this.event = this.eventRepository.findOne(this.baseid);
		}

		return Action.SUCCESS;
	}

	public String commit() throws Exception
	{
		if ("add".equals(this.op))
		{
			this.msg = InfoConst.INFO_10;
			event.setCreatedate(new Date());
			this.getBaseService().create(event);
		}
		else if ("edit".equals(op))
		{
			this.msg= InfoConst.INFO_11;
			this.getBaseService().save(event);
		}else if("delete".equals(op)){
			this.getBaseService().update("update from  TbEvent set state='0'  where baseid=" + this.baseid,null);
			this.msg =  InfoConst.INFO_01;
			return this.execute();
		}
		return this.execute();
	}

	public TbEvent getEvent() {
		return event;
	}

	public void setEvent(TbEvent event) {
		this.event = event;
	}

	public long getBaseid() {
		return baseid;
	}

	public void setBaseid(long baseid) {
		this.baseid = baseid;
	}

	public List<TbEvent> getEvents() {
		return events;
	}

	public void setEvents(List<TbEvent> events) {
		this.events = events;
	}
	
	

}
