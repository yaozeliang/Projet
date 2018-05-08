package com.studentexchange.portal.web.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.Action;
import com.studentexchange.constant.GlobalConst;
import com.studentexchange.constant.InfoConst;
import com.studentexchange.core.entity.TbUser;
import com.studentexchange.repository.hql.Criteria;
import com.studentexchange.repository.hql.Restrictions;
import com.studentexchange.service.repository.UserRepository;
import com.studentexchange.web.base.action.BaseAction;

@SuppressWarnings("all")
@Component("portalLoginAction")
@Scope("prototype")
public class PortalLoginAction  extends BaseAction{
	
	@Autowired
	private UserRepository userRepository;
	
	private TbUser user;
	
	private String repassword;
	
	private String testid="1";
	
	public String execute()
	{
		
		TbUser temp = (TbUser)this.sessionMap.get(GlobalConst.PORTAL_SESSION_ADMIN);
		if(temp!=null){
			return Action.SUCCESS;
		}
		
		if(user==null){
			return Action.INPUT;
		}
		
		if(StringUtils.isEmpty(user.getUsername())){
			this.msg=InfoConst.INFO_18;
			return Action.INPUT;
		}
		
		if(StringUtils.isEmpty(user.getPassword())){
			this.msg=InfoConst.INFO_19;
			return Action.INPUT;
		}
		
		Criteria<TbUser> c = new Criteria<TbUser>();
		c.add(Restrictions.eq("username", user.getUsername(), true));
		List<TbUser> list = this.userRepository.findAll(c);
		if(list==null || list.size()==0){
			this.msg=InfoConst.INFO_04;;
			return Action.INPUT;
		}
		
		c.add(Restrictions.eq("password", user.getPassword(), true));
		list = this.userRepository.findAll(c);
		if(list==null|| list.size()==0){
			this.msg=InfoConst.INFO_20;
			return Action.INPUT;
		}
		
		this.sessionMap.put(GlobalConst.PORTAL_SESSION_ADMIN, list.get(0));
		
		return Action.SUCCESS;
		
	}

	public TbUser getUser() {
		return user;
	}

	public void setUser(TbUser user) {
		this.user = user;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public String getTestid() {
		return testid;
	}

	public void setTestid(String testid) {
		this.testid = testid;
	}
}
