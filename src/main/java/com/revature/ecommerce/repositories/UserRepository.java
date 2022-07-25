package com.revature.ecommerce.repositories;

import com.revature.ecommerce.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Integer> {

    Optional<User> findByEmailAndPassword(String email, String password);

	Optional<User> findUserByEmail(String email);
}
