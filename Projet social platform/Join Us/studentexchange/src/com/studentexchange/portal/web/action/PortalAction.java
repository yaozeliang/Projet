package com.studentexchange.portal.web.action;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.Action;
import com.studentexchange.core.entity.TbEvent;
import com.studentexchange.repository.hql.Criteria;
import com.studentexchange.repository.hql.Restrictions;
import com.studentexchange.service.repository.EventRepository;
import com.studentexchange.web.base.action.BaseAction;

@SuppressWarnings("all")
@Component("portalAction")
@Scope("prototype")
public class PortalAction extends BaseAction{
	
	private List<TbEvent> events  = new ArrayList<TbEvent>();
	
	private String testid;
	
	
	@Autowired
	private EventRepository eventRepository;
	
	public String execute(){
		Pageable pageable = new PageRequest(0, 5);
		Criteria<TbEvent> c = new Criteria<TbEvent>();
		c.add(Restrictions.desc("createdate", null, true));
		c.add(Restrictions.eq("state", "1", true));
		Page<TbEvent> pages = this.eventRepository.findAll(c,pageable);
		if(pages!=null){
			events = pages.getContent();
		}
		
		System.out.println(testid);
		
		return Action.INPUT;
	}

	public List<TbEvent> getEvents() {
		return events;
	}

	public void setEvents(List<TbEvent> events) {
		this.events = events;
	}

	public String getTestid() {
		return testid;
	}

	public void setTestid(String testid) {
		this.testid = testid;
	}
	
	

}
