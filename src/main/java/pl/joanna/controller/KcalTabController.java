package pl.joanna.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import pl.joanna.entity.KcalTab;
import pl.joanna.repository.KcalTabRepository;

@Controller
public class KcalTabController {

	
	@Autowired
	KcalTabRepository kcalRepo;
	
	@GetMapping("/showValues")
	public String showValuesOfProducts(@ModelAttribute KcalTab kcalTab) {
		return "kcal_igShow";
	}
	
	@PostMapping("/showValues")
	public String showValuesOfProducts(@ModelAttribute KcalTab kcalTab, Model model, @PathVariable String name) {
		List<KcalTab> products = kcalRepo.findProductByName(name);
		model.addAttribute("products", products);
		return "kcal_igShow";
	}
	
}
