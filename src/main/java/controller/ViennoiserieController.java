package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import repositories.ProduitRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


import model.Produit;
import model.TypeProduit;

@Controller
public class ViennoiserieController {

	@Autowired
	ProduitRepository produitRepository;
	
	
	
	@GetMapping("/page/listViennoiserie")
	public String listAdmin(Model model) {
		model.addAttribute("produit", produitRepository.findAllByType(TypeProduit.Viennoiserie));
		return "page/listViennoiserie";
	}
	
	@GetMapping("/page/listViennoiserie/delete")
	public String delete(@RequestParam(name="id") Long id) {
		produitRepository.deleteById(id);
		return "redirect:/page/listViennoiserie";
	}
	
	@GetMapping("/page/listViennoiserie/edit")
	public String edit(@RequestParam(name="id") Long id) {
		produitRepository.deleteById(id);
		return "page/editViennoiserie";
	}
	
	private String goEdit(Produit p, Model model) {
		model.addAttribute("produit", p);
		return "personne/edit";
	}
	
}
