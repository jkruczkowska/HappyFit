package pl.joanna.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import pl.joanna.entity.KcalTab;

public interface KcalTabRepository extends JpaRepository<KcalTab, Integer>{

	@Query("select k from KcalTab k where k.name like :name")
	List<KcalTab> findProductByName(@Param("name") String name);
	
}
