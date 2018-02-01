package pl.joanna.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import pl.joanna.bean.LoginData;
import pl.joanna.bean.SessionController;
import pl.joanna.bean.SessionManager;
import pl.joanna.entity.User;
import pl.joanna.entity.UserProfile;
import pl.joanna.repository.InvestigationFormRepository;
import pl.joanna.repository.UserProfileRepository;
import pl.joanna.repository.UserRepository;

@Controller
public class UserController {
	
	@Autowired
	InvestigationFormRepository infRepo;
	
	@Autowired
	UserRepository userRepo;
	
	@Autowired
	SessionController sc;
	
	@Autowired
	UserProfileRepository userProfRepo;

	@GetMapping("/register")
	public String register(Model m, @ModelAttribute UserProfile userProfile) {
		m.addAttribute("user", new User());
		return "registration";
	}

	@PostMapping("/register")
	public String registerPost(@ModelAttribute UserProfile userProfile,@ModelAttribute User user, BindingResult bindingResult) {
		HttpSession s = SessionManager.session();
		s.setAttribute("user", user);
		if (bindingResult.hasErrors()) {
			return "redirect:/registration";
		} else {
			this.userRepo.save(user);
			return "investigationForm";
		}
	}

	@GetMapping("/login")
	public String login(Model m) {
		m.addAttribute("loginData", new LoginData());
		return "registration";
	}

	@PostMapping("/login")
	public String loginPost(@ModelAttribute LoginData loginData, Model m, RedirectAttributes ra) {
		User u = this.userRepo.findOneByEmail(loginData.getEmail());

		if (u != null && u.isPasswordCorrect(loginData.getPassword())) {
			HttpSession s = SessionManager.session();
			s.setAttribute("user", u);
			ra.addFlashAttribute("msg", "Jestes zalogowany!");
			return "userProfile";
		}

		m.addAttribute("msg", "Wprowadz poprawne dane");
		return "registration";
	}

	@GetMapping("/logout")
	public String logout(Model m) {
		m.addAttribute("loginData", new LoginData());
		HttpSession s = SessionManager.session();
		s.invalidate();

		return "redirect:/";
	}
}
