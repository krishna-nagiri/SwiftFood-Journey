package com.SwiftFoodApp.SwiftFood.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.SwiftFoodApp.SwiftFood.Model.Customer;

public interface CustomerRepo extends JpaRepository<Customer,String>
{

}
