package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import model.Produit;
import model.TailleProduit;
import model.TypeProduit;
import repositories.ProduitRepository;

@Controller
public class produitController {

	@Autowired
	ProduitRepository produitRepository;
	
	public String save(Produit produit, Model model) {
		produitRepository.save(produit);
		return "redirect:/accueil"; //rediriger vers accueil admin
	}
	
	@PostMapping("/saveProduit")
	public String saveProduit(@ModelAttribute("produit") Produit produit, Model model) {
		return save(produit, model);
	}
	
	private String goEdit(Produit p, Model model) {
		model.addAttribute("produit", p);
		model.addAttribute("type", TypeProduit.values());
		model.addAttribute("taille", TailleProduit.values());
		return "admin/editProduit";
	}
	
	@GetMapping("/addProduit")
	public String addProduit(Model model) {
		return goEdit(new Produit(), model);
	}
	
//	@GetMapping("/delete")
//	public ModelAndView delete(@RequestParam(name="id") Long id) {
//		produitRepository.deleteById(id);
//		return new ModelAndView("redirect:/admin/listSandiwch");
//	}
//	
//	@GetMapping("addSandwich")
//	public ModelAndView add() {
//		return new ModelAndView("admin/addSandwich", "sandwich", new Produit());
//	}
//	
//	@PostMapping("/save")
//	public ModelAndView save(@ModelAttribute("sandwich") Produit sandwich) {
//		produitRepository.save(sandwich);
//		return new ModelAndView("redirect:/admin/listSandwich");
//	}
}
