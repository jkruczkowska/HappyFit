package pl.joanna.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.joanna.entity.UserProfile;

public interface UserProfileRepository extends JpaRepository<UserProfile, Integer> {

}
