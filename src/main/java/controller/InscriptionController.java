package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.Compte;
import repositories.CompteRepository;

@Controller
public class InscriptionController {
	
	@Autowired
	CompteRepository compteRepository; 
	
	
	@GetMapping("/inscription")
	public String inscription() {
		return "inscription"; 
	}
	
	
	@GetMapping("/add")
    public String add(Model model) { 
        Compte c = new Compte();
        model.addAttribute("compte",c);
        return "/index";
    }
	
	
	public String save(Compte compte,BindingResult br, Model model) {
		if(br.hasErrors()) {
			return "inscription"; 
		}
	}
	
	
	
	@GetMapping("/delete")
	public String delete(@RequestParam(name="id") Integer id) {
		compteRepository.deleteById(id);
		return "redirect:/index"; 
	}
	
}
