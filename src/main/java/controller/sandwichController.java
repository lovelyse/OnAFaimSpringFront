package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.TypeProduit;
import repositories.ProduitRepository;

@Controller
public class sandwichController {

	@Autowired
	ProduitRepository produitRepository;
	
	@GetMapping("/page/listSandwich")
	public ModelAndView list() {
		return new ModelAndView("/page/listSandwich", "sandwichs", produitRepository.findAllByType(TypeProduit.Sandwich));
	}

	
	@GetMapping("/page/listSandwichClient")
	public ModelAndView listSandwich() {
		return new ModelAndView("/page/listSandwichClient", "sandwichs", produitRepository.findAll()); 
	}
	
	
//	public ModelAndView add() {
//		
//	}
}
