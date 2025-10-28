package com.SwiftFoodApp.SwiftFood.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.SwiftFoodApp.SwiftFood.Model.Restaurant;

public interface RestaurantRepo extends JpaRepository<Restaurant,String>
{

}
