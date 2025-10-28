package com.SwiftFoodApp.SwiftFood.Model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Restaurant 
{
	public Restaurant() {}
	@Id
	@Column(name = "restaurantId")
	private String restaurantId;
	
	@Column(name = "restaurantName")
	private String restaurantName;

	public String getRestaurantId() {
		return restaurantId;
	}

	public String getRestaurantName() {
		return restaurantName;
	}

	public void setRestaurantId(String restaurantId) {
		this.restaurantId = restaurantId;
	}

	public void setRestaurantName(String restaurantName) {
		this.restaurantName = restaurantName;
	}

	@Override
	public String toString() {
		return "Restaurant [restaurantId=" + restaurantId + ", restaurantName=" + restaurantName + "]";
	}
	
	
	
}
