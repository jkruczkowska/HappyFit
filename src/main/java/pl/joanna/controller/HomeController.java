package pl.joanna.controller;

import java.time.LocalDate;
import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import pl.joanna.bean.SessionController;
import pl.joanna.bean.SessionManager;
import pl.joanna.dto.InvestigationDTO;
import pl.joanna.entity.InvestigationForm;
import pl.joanna.entity.User;
import pl.joanna.entity.UserProfile;
import pl.joanna.repository.InvestigationFormRepository;
import pl.joanna.repository.UserProfileRepository;
import pl.joanna.repository.UserRepository;

@Controller
public class HomeController {

	@Autowired
	InvestigationFormRepository infRepo;
	
	@Autowired
	UserRepository userRepo;
	
	@Autowired
	SessionController sc;
	
	@Autowired
	UserProfileRepository userProfRepo;
	
	/*
	 * Strona domowa
	 */
	@GetMapping("/home")
	public String showHome() {
		return "home";
	}
	
	/*
	 * Formularz zbieerający dane do obliczeń
	 */
	@GetMapping("/add")
	public String investigationFormAdd(@ModelAttribute UserProfile userProfile) {
		return "investigationForm";
	}
	
	/*
	 * Zapisanie danych z formularza
	 */
	@PostMapping("/add")
	public String investigationForm(Model model, @ModelAttribute UserProfile userProfile) {
		double weight = (Double)userProfile.getWeight();
		model.addAttribute("weight", weight);
		double height = (Double)userProfile.getHeight()/100;
		model.addAttribute("height", height);
		int yearOfBirth = (Integer)userProfile.getYearOfBirth();
		model.addAttribute("yearOfBirth", yearOfBirth);
		int age = LocalDate.now().getYear() - yearOfBirth;
		model.addAttribute("age", age);
		char gender = userProfile.getGender().charAt(0);
		model.addAttribute("gender", gender);
		
		Double bmi = weight / Math.pow(height, 2);
		model.addAttribute("bmi", bmi);
		Double bmr = weight * 24;
		model.addAttribute(bmr);
//		Double dailyBmr = bmr * investigationForm.getActivity();
		HttpSession s = SessionManager.session();
		
		User u = (User)s.getAttribute("user");
		if (u != null) {
			userProfile.setUser(u);
			userProfile.setBmi(bmi.toString());
			userProfile.setCreated(LocalDate.now().toString());
//			userProfile.se
			userProfRepo.save(userProfile);
		}
//		infRepo.save(investigationForm);
		return "investigationResult";
	}
	
	
	/*
	 * 
	 */
	@ModelAttribute("activity")
	public Collection<String> activity() {
		return InvestigationDTO.activity();
	}
	
	@GetMapping("/searchProduct")
	public String searchProduct() {
		return "searchProduct";
	}
	
}
