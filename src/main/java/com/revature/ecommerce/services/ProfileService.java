package com.revature.ecommerce.services;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.revature.ecommerce.models.User;
import com.revature.ecommerce.repositories.UserRepository;



@Service
public class ProfileService {

    private final UserRepository userRepository;

    public ProfileService(UserRepository userRepository) {
        this.userRepository=userRepository;
    }


    public Optional<User> findUserByEmail(String email) {
		return userRepository.findUserByEmail(email);
        
    }
   
    public User editProfile(User user) {
        return userRepository.save(user);
    }

	}