package com.studentexchange.portal.web.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.Action;
import com.studentexchange.constant.GlobalConst;
import com.studentexchange.constant.InfoConst;
import com.studentexchange.core.entity.TbEvent;
import com.studentexchange.core.entity.TbEventanswer;
import com.studentexchange.core.entity.TbEventlog;
import com.studentexchange.core.entity.TbUser;
import com.studentexchange.repository.hql.Criteria;
import com.studentexchange.repository.hql.Restrictions;
import com.studentexchange.service.repository.EventRepository;
import com.studentexchange.service.repository.EventlogRepository;
import com.studentexchange.web.base.action.BaseAction;

@SuppressWarnings("all")
@Component("portalEventlogAction")
@Scope("prototype")
public class PortalEventlogAction extends BaseAction{
	
	private TbEventlog eventlog;
	
	@Autowired
	private EventlogRepository eventlogRepository;
	
	private long baseid;
	
	@Autowired
	private EventRepository eventRepository;
	
	
	
	public String execute()throws Exception{
		if(this.eventlog!=null){
			this.baseid = this.eventlog.getTbEvent().getBaseid();
		}
		
		TbUser temp = (TbUser)this.sessionMap.get(GlobalConst.PORTAL_SESSION_ADMIN);
		if(temp==null){
			msg=InfoConst.INFO_12;
			return Action.SUCCESS;
		}
		
		TbEvent event = this.eventRepository.findOne(this.baseid);
		if(event.getUnenrollnum()<=0){
			this.msg = InfoConst.INFO_15;
			return Action.SUCCESS;
		}
		
		
		Criteria<TbEventlog> c = new Criteria<TbEventlog>();
		c.add(Restrictions.eq("tbEvent.baseid", this.baseid, true));
		c.add(Restrictions.eq("tbUser.baseid", temp.getBaseid(), true));
		List<TbEventlog> list = this.eventlogRepository.findAll(c);
		if(list!=null && list.size()>0){
			this.msg = InfoConst.INFO_16;
			return Action.SUCCESS;
		}
		
		eventlog.setTbUser(temp);
		this.eventlogRepository.saveAndFlush(eventlog);
		this.msg = InfoConst.INFO_17;
		event.setEnrollnum(event.getEnrollnum()+1);
		event.setUnenrollnum(event.getUnenrollnum()-1);
		this.eventRepository.saveAndFlush(event);
		return Action.SUCCESS;
	}

	public TbEventlog getEventlog() {
		return eventlog;
	}

	public void setEventlog(TbEventlog eventlog) {
		this.eventlog = eventlog;
	}

	public long getBaseid() {
		return baseid;
	}

	public void setBaseid(long baseid) {
		this.baseid = baseid;
	}
	
	

}
