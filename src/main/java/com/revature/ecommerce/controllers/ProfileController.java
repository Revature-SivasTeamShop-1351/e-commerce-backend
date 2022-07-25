package com.revature.ecommerce.controllers;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.revature.ecommerce.models.User;
import com.revature.ecommerce.services.ProfileService;

@RestController
@RequestMapping("/profile")
public class ProfileController {

	    @Autowired
	    ProfileService profileService;

	    private HttpSession session;

	   

	    @GetMapping("/myprofile")
	    public Optional<User> findUserByEmail(@RequestBody String email){
	    	session.getAttribute("user");
	    	return profileService.findUserByEmail(email);	    	

	    }

	    @PutMapping("/update")
	    public User editProfile(@RequestBody User user) {
	        return profileService.editProfile(user);
	    }
	    

	}

