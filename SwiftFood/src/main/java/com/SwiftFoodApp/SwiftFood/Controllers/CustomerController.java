package com.SwiftFoodApp.SwiftFood.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.SwiftFoodApp.SwiftFood.Model.Customer;
import com.SwiftFoodApp.SwiftFood.Repository.CustomerRepo;


@Controller
public class CustomerController 
{
	Customer customer;
	
	@Autowired 
	private CustomerRepo repo;
	
	@GetMapping("all-customers")
	public String getAllCustomers(Model m)
	{
		m.addAttribute("customers", repo.findAll());
		return "DisplayAllCustomers";
	}
	
	@PostMapping("add-customer")
	public String addCustomer(Customer customer,Model m)
	{
		Customer cust = customer;
		repo.save(cust);
		m.addAttribute("customer",customer);
		
		return "CustomerAddedSuccess";
	}
	
	@GetMapping("addCustomer")
	public String getAddCustomerPage() {
		return "AddNewCustomer";
	}
}
