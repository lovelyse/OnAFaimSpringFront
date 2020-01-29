package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import repositories.ProduitRepository;
import org.springframework.web.bind.annotation.GetMapping;

import model.TypeProduit;

@Controller
public class ViennoiserieController {

	@Autowired
	ProduitRepository produitRepository;
	
	
	
	@GetMapping("client/viennoiserie")
	public String indexClient() {
		return "client/viennoiserie";
	}
	
	@GetMapping("admin/listViennoiserie")
	public String indexAdmin() {
		return "admin/listViennoiserie";
	}
	
	
	/*@GetMapping("admin/listViennoiserie")
	public String listAdmin(Model model) {
		model.addAttribute("viennoiserie", produitRepository.findAllByType(TypeProduit.Viennoiserie));
		return "admin/listViennoiserie";
	}*/
	
}
