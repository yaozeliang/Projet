package com.studentexchange.portal.web.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.Action;
import com.studentexchange.constant.InfoConst;
import com.studentexchange.core.entity.TbUser;
import com.studentexchange.repository.hql.Criteria;
import com.studentexchange.repository.hql.Restrictions;
import com.studentexchange.service.repository.UserRepository;
import com.studentexchange.web.base.action.BaseAction;

@SuppressWarnings("all")
@Component("portalRegAction")
@Scope("prototype")
public class PortalRegAction  extends BaseAction{
	
	@Autowired
	private UserRepository userRepository;
	
	private TbUser user;
	
	private String repassword;
	
	public String execute()
	{
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
		
		if(!StringUtils.equals(user.getPassword(), this.repassword)){
			this.msg=InfoConst.INFO_21;
			return Action.INPUT;
		}
		
		if(StringUtils.isEmpty(user.getName())){
			this.msg=InfoConst.INFO_22;
			return Action.INPUT;
		}
		
		if(user.getAge()<=0){
			this.msg=InfoConst.INFO_23;
			return Action.INPUT;
		}
		
		if(StringUtils.isEmpty(user.getAddress())){
			this.msg=InfoConst.INFO_24;
			return Action.INPUT;
		}
		
		if(StringUtils.isEmpty(user.getPhone())){
			this.msg=InfoConst.INFO_25;
			return Action.INPUT;
		}
		
		if(StringUtils.isEmpty(user.getEmail())){
			this.msg=InfoConst.INFO_26;
			return Action.INPUT;
		}
		
		Criteria<TbUser> c = new Criteria<TbUser>();
		c.add(Restrictions.eq("username", user.getUsername(), true));
		List<TbUser> list = this.userRepository.findAll(c);
		if(list!=null && list.size()>0){
			this.msg=InfoConst.INFO_27;
			return Action.INPUT;
		}
		
		this.userRepository.save(user);
		this.msg=InfoConst.INFO_28;
		
		return Action.INPUT;
		
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

}
