package com.univ;

import javax.persistence.Entity;


@Entity
public class Car extends Vehicule{
	
	private int numberOfSeats;
	
	
	public Car() {
		super();
	}
	public Car(int numberOfSeats) {
		super();
		this.numberOfSeats = numberOfSeats;
	}
	
	public int numberOfSeats() {
		return numberOfSeats;
	}
	public void setnumberOfSeats(int numberOfSeats) {
		this.numberOfSeats = numberOfSeats;
	}			
}