package com.univ;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
public class Rent {
	private int id;
	private Date beginrent;
	private Date endrent;
	private Vehicule vehicule;
	private Person person;

	public Rent() {
		super();
	}
	
	public Rent(Date begin, Date end, Vehicule vehicule, Person person) {
		super();
		this.beginrent = begin;
		this.endrent = end;
		this.vehicule = vehicule;
		this.person = person;
	}
	

	@Temporal(TemporalType.DATE)
	//@Column(name = "beginrent", nullable = false, length = 10)
	public Date getBeginrent() {
		return beginrent;
	}

	public void setBeginrent(Date beginrent) {
		this.beginrent = beginrent;
	}
	@Temporal(TemporalType.DATE)
	//@Column(name = "endrent", nullable = false, length = 10)
	public Date getEndrent() {
		return endrent;
	}

	public void setEndrent(Date endrent) {
		this.endrent = endrent;
	}

	@ManyToOne(cascade=CascadeType.REMOVE)
	public Vehicule getVehicule(){
		return vehicule;
	}
	public void setVehicule(Vehicule vehicule){
		this.vehicule = vehicule;
	}

	@ManyToOne(cascade=CascadeType.REMOVE)
	public Person getPerson(){
		return person;
	}
	public void setPerson(Person person){
		this.person = person;
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
}
