package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import repositories.CompteRepository;

@Controller
public class InscriptionController {
	
	@Autowired
	CompteRepository compteRepository; 
	
	
	@GetMapping("/inscription")
	public String inscription() {
		return "inscription"; 
	}
	
	
	public save
	
	
	
	@GetMapping("/delete")
	public String delete(@RequestParam(name="id") Integer id) {
		personneRepository.deleteById(id);
		return "redirect:/personne/list"; 
	}
	
}
