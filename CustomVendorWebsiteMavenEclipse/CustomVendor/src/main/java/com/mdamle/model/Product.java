// ? should this be abstract?

// id : let it be a 64 bit int
package com.mdamle.model;

public class Product {
	private enum Unit {
		WEIGHT, PIECE
	}
	private Id id;
	private String name;
	private double unitPrice;
	private double unitWeight;
	private Unit unit;
	
	
	/*-------------------------------------------------------------------------------*/
	//constructors
	
	/*-------------------------------------------------------------------------------*/
	//getters & setters
	
	public Id getId() {
		return id;
	}
	
	public void setId(Id id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public double getUnitPrice() {
		return unitPrice;
	}
	
	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
	
	public double getUnitWeight() {
		return unitWeight;
	}
	
	public void setUnitWeight(double unitWeight) {
		this.unitWeight = unitWeight;
	}
	
	public Unit getUnit() {
		return unit;
	}
	
	public void setUnit(Unit unit) {
		this.unit = unit;
	}
}
