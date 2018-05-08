package com.univ;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Person {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private Collection<Rent> rent;
	
	public Person() {

		this.name = "NULL";
	}
	
	public Person(String name) {
		
		this.name = name;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@OneToMany(mappedBy="person")
	public Collection<Rent> getRent(){
		return rent;
	}
	
	public void setRent(Collection<Rent> rent){
		this.rent = rent;
	}
}
