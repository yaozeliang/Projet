package com.studentexchange.portal.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.Action;
import com.studentexchange.constant.GlobalConst;
import com.studentexchange.constant.InfoConst;
import com.studentexchange.core.entity.TbSecondhandlog;
import com.studentexchange.core.entity.TbUser;
import com.studentexchange.service.repository.SecondhandlogRepository;
import com.studentexchange.web.base.action.BaseAction;

@SuppressWarnings("all")
@Component("portalSecondhandlogAction")
@Scope("prototype")
public class PortalSecondhandlogAction  extends BaseAction{
	
	
	private TbSecondhandlog secondhandlog;
	
	@Autowired
	private SecondhandlogRepository secondhandlogRepository;
	
	private long baseid;
	
	public String execute(){
		if(this.secondhandlog!=null){
			this.baseid = this.secondhandlog.getTbSecondhand().getBaseid();
		}
		TbUser temp = (TbUser)this.sessionMap.get(GlobalConst.PORTAL_SESSION_ADMIN);
		if(temp==null){
			msg=InfoConst.INFO_12;
			return Action.SUCCESS;
		}
		secondhandlog.setTbUser(temp);
		this.secondhandlogRepository.saveAndFlush(secondhandlog);
		this.msg =InfoConst.INFO_14;
		return Action.SUCCESS;
	}

	public TbSecondhandlog getSecondhandlog() {
		return secondhandlog;
	}



	public void setSecondhandlog(TbSecondhandlog secondhandlog) {
		this.secondhandlog = secondhandlog;
	}



	public long getBaseid() {
		return baseid;
	}

	public void setBaseid(long baseid) {
		this.baseid = baseid;
	}
}
