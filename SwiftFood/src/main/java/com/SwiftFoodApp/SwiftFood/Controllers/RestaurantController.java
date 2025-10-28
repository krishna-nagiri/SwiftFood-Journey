package com.SwiftFoodApp.SwiftFood.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.SwiftFoodApp.SwiftFood.Model.Restaurant;
import com.SwiftFoodApp.SwiftFood.Repository.RestaurantRepo;

@RestController
public class RestaurantController
{
	Restaurant restaurant;
	
	@Autowired
	private RestaurantRepo restRepo;
	
	@GetMapping("all-restaurants")
	public List<Restaurant> getAllRestaurants() 
	{
		return restRepo.findAll();
	}
	
	@PostMapping("add-restaurant")
	public void getRestaurantById(Restaurant restaurant)
	{
		restRepo.save(restaurant);
	}

	@GetMapping("find-by-id")
	public Restaurant getRestaurantById(@RequestParam("restaurantId") String restaurantId) 
	{
		return restRepo.findById(restaurantId).orElse(new Restaurant());
	}
	
	
}
