package com.mdamle.model;

public class IntegerId extends Id {
	private Integer id;
	
	
	/*-------------------------------------------------------------------------------*/
	
	public IntegerId(Number id) {
		setId(id);
	}

	
	/*-------------------------------------------------------------------------------*/
	//getters and setters
	
	@Override
	public Number getId() {
		return id;
	}

	@Override
	public void setId(Number id) {
		this.id = id.intValue();
	}

}
