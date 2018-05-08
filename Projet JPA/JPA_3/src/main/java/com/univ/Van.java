package com.univ;

import javax.persistence.Entity;


@Entity
public class Van  extends Vehicule{
	
	private int maxWeight;
	
	public Van() {
		super();
	}
	public Van(int maxWeight) {
		super();
		this.maxWeight = maxWeight;
	}
	
	public int getmaxWeight() {
		return maxWeight;
	}
	public void setmaxWeight(int maxWeight) {
		this.maxWeight = maxWeight;
	}		

}