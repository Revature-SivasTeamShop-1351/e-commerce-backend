package com.revature.ecommerce.controllers;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.revature.ecommerce.models.User;
import com.revature.ecommerce.repositories.UserRepository;
import com.revature.ecommerce.services.ProfileService;

@RestController
@RequestMapping("/api/users")
@CrossOrigin(origins = {"http://localhost:4200", "http://localhost:3600"})
public class ProfileManagerController {

	    @Autowired
	    ProfileService profileService;
	    UserRepository userRepository;
	    User user;

	    private HttpSession session;

	   

	    @GetMapping("/{id}")
	    public ResponseEntity<User> getTutorialById(@PathVariable("id") int id) {
	    	session.getAttribute("user");
	    	
;			Optional<User> userData = userRepository.findById(id);
			
			if (userData.isPresent()) {
				return new ResponseEntity<>(userData.get(), HttpStatus.OK);
			} else {
				return new ResponseEntity<>(HttpStatus.NOT_FOUND);
			}
		}
	    //public Optional<User> findUserById(@PathVariable int id){
	    	//session.getAttribute("user");
	    	//return profileService.findUserById(id);	    	

	    //}

	    
	    //public User editProfile(@RequestBody User user) {
	        //return profileService.editProfile(user);
	    //}
	    @PutMapping("/update/{id}")
	    public ResponseEntity<User> updateUser(@PathVariable("id") int id, @RequestBody User user) {
	    	 session.getAttribute("user");
			Optional<User> userData = userRepository.findById(id);

			if (userData.isPresent()) {
				User _user = userData.get();
				_user.setFirstName(user.getFirstName());
				_user.setLastName(user.getLastName());
				_user.setEmail(user.getEmail());
				return new ResponseEntity<>(userRepository.save(_user), HttpStatus.OK);
			} else {
				return new ResponseEntity<>(HttpStatus.NOT_FOUND);
			}
		}
	    

	}

