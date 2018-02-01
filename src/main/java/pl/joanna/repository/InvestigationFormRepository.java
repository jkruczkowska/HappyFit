package pl.joanna.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.joanna.entity.InvestigationForm;

public interface InvestigationFormRepository extends JpaRepository<InvestigationForm, Integer>{

}
