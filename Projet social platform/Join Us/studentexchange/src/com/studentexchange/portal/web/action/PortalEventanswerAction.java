package com.studentexchange.portal.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.Action;
import com.studentexchange.constant.GlobalConst;
import com.studentexchange.constant.InfoConst;
import com.studentexchange.core.entity.TbEventanswer;
import com.studentexchange.core.entity.TbUser;
import com.studentexchange.service.repository.EventanswerRepository;
import com.studentexchange.web.base.action.BaseAction;

@SuppressWarnings("all")
@Component("portalEventanswerAction")
@Scope("prototype")
public class PortalEventanswerAction  extends BaseAction{
	
	
	private TbEventanswer eventanswer;
	
	@Autowired
	private EventanswerRepository eventanswerRepository;
	
	private long baseid;
	
	public String execute(){
		if(this.eventanswer!=null){
			this.baseid = this.eventanswer.getTbEvent().getBaseid();
		}
		TbUser temp = (TbUser)this.sessionMap.get(GlobalConst.PORTAL_SESSION_ADMIN);
		if(temp==null){
			msg=InfoConst.INFO_12;
			return Action.SUCCESS;
		}
		eventanswer.setTbUser(temp);
		this.eventanswerRepository.saveAndFlush(eventanswer);
		this.msg =InfoConst.INFO_14;
		return Action.SUCCESS;
		
	}

	public TbEventanswer getEventanswer() {
		return eventanswer;
	}

	public void setEventanswer(TbEventanswer eventanswer) {
		this.eventanswer = eventanswer;
	}

	public long getBaseid() {
		return baseid;
	}

	public void setBaseid(long baseid) {
		this.baseid = baseid;
	}
}
