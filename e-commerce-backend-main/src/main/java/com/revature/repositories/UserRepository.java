package com.revature.repositories;

import com.revature.models.User;
import org.springframework.data.jpa.repository.JpaRepository;


import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Integer> {

    Optional<User> findByEmailAndPassword(String email, String password);

	static User findUserByEmail(String userEmail) {
		return null;
	}
	
    
    public User findByEmail(String email); 
     
    public static User findByResetPasswordToken(String token) {
		
		return null;
	}
}

