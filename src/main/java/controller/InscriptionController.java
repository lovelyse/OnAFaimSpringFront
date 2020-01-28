package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import model.Compte;
import repositories.CompteRepository;

@Controller
public class InscriptionController {
	
	@Autowired
	CompteRepository compteRepository; 
	
	
	@GetMapping("/inscription")
	public String inscription(Model model) {
		return "inscription"; 
	}
	
	
	@GetMapping("/add")
    public String add(@RequestParam(name="id") Integer id, Model model) { 
        Compte c = new Compte();
        model.addAttribute("compte",c);
        return "/index";
    }
	
	
	public String save(@ModelAttribute("compte") Compte compte, Model model) {
		model.addAttribute("compte", c);
		return save (compte, model); 
	}
	
	
	
	@GetMapping("/delete")
	public String delete(@RequestParam(name="id") Integer id) {
		compteRepository.deleteById(id);
		return "redirect:/index"; 
	}
	
}
