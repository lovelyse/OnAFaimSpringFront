package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import model.TypeProduit;
import repositories.ProduitRepository;

@Controller
public class ClientController {

	@Autowired
	ProduitRepository produitRepository;

	
	@GetMapping("/page/listSandwichClient")
	public ModelAndView listSandwich() {
		return new ModelAndView("/page/listSandwichClient", "sandwichs", produitRepository.findAllByType(TypeProduit.Sandwich)); 
	}
	
	
	@GetMapping("/page/listViennoiserieClient")
	public ModelAndView listViennoiserie() {
		return new ModelAndView("/page/listViennoiserieClient", "viennoiseries", produitRepository.findAllByType(TypeProduit.Viennoiserie)); 
	}
	
	
	@GetMapping("/page/listBoissonClient")
	public ModelAndView listBoisson() {
		return new ModelAndView("/page/listBoissonClient", "boissons", produitRepository.findAllByType(TypeProduit.Boissons)); 
	}
	
	
	@GetMapping("/page/listGateauClient")
	public ModelAndView listGateau() {
		return new ModelAndView("/page/listGateauClient", "gateaux", produitRepository.findAllByType(TypeProduit.Gateau)); 
	}

	
	
}
