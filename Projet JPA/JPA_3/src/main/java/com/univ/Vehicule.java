package com.univ;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;


@Entity
public class Vehicule {
	
	@Id
	protected int plateNumber;
	private Collection<Rent> rents;
	
	public Vehicule() {
		super();
	}
	
	public Vehicule(int plateNumber) {
		super();
		this.plateNumber = plateNumber;
	}
	
	
	public int getplateNumber() {
		return plateNumber;
	}
	public void setplateNumber(int plateNumber) {
		this.plateNumber = plateNumber;
	}	
	
	@OneToMany(mappedBy="vehicule")
	public Collection<Rent> getRent(){
		return rents;
	}
	
	public void setRent(Collection<Rent> rents){
		this.rents = rents;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + plateNumber;
		result = prime * result + ((rents == null) ? 0 : rents.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Vehicule other = (Vehicule) obj;
		if (plateNumber != other.plateNumber)
			return false;
		if (rents == null) {
			if (other.rents != null)
				return false;
		} else if (!rents.equals(other.rents))
			return false;
		return true;
	}
}
