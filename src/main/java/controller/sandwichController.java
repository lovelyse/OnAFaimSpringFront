package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.TypeProduit;
import repositories.ProduitRepository;

@Controller
@RequestMapping("/admin")
public class sandwichController {

	@Autowired
	ProduitRepository produitRepository;
	
	@GetMapping("/listSandwich")
	public ModelAndView list() {
		return new ModelAndView("/admin/listSandwich", "sandiwhs", produitRepository.findAllByType(TypeProduit.Sandwich));
	}

	
	
}
