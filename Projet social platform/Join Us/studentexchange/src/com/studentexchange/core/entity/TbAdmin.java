package com.studentexchange.core.entity;

// Generated 2017-3-13 15:36:17 by Hibernate Tools 3.4.0.CR1

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;

/**
 * TbAdmin generated by hbm2java
 */
@Entity
@Table(name = "tb_admin", catalog = "studentexchange")
public class TbAdmin implements java.io.Serializable {

	private long baseid;
	private Date createdate;
	private String state;
	private String username;
	private String password;

	public TbAdmin() {
	}

	public TbAdmin(long baseid, Date createdate) {
		this.baseid = baseid;
		this.createdate = createdate;
	}

	public TbAdmin(long baseid, Date createdate, String state, String username, String password) {
		this.baseid = baseid;
		this.createdate = createdate;
		this.state = state;
		this.username = username;
		this.password = password;
	}

	@Id
	@Column(name = "baseid", unique = true, nullable = false)
	@GeneratedValue(generator = "admintableGenerator")
	@GenericGenerator(name = "admintableGenerator", strategy = "increment")
	public long getBaseid() {
		return this.baseid;
	}

	public void setBaseid(long baseid) {
		this.baseid = baseid;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "createdate", nullable = false, length = 19)
	public Date getCreatedate() {
		return this.createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	@Column(name = "state", length = 20)
	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Column(name = "username", length = 50)
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "password", length = 50)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}