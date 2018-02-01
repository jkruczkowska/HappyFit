package pl.joanna.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.joanna.entity.User;

public interface UserRepository extends JpaRepository<User, Integer>{

	User findOneByEmail(String email);
}
