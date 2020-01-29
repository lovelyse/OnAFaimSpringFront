package controller;

import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.Produit;
import model.TailleProduit;
import model.TypeProduit;
import repositories.ProduitRepository;

@Controller
@RequestMapping("/page")
public class produitController {

	@Autowired
	ProduitRepository produitRepository;
	
	@PostMapping("/save")
	public String save(@ModelAttribute("produit")@Valid Produit produit, BindingResult br, Model model) {
		if(br.hasErrors()) {
			return "page/editProduit";
		} else {
			produitRepository.save(produit);
			return "redirect:/accueil"; //rediriger vers accueil admin
		}
	}
	
//	@PostMapping("/page/saveProduit")
//	public String saveProduit(@ModelAttribute("produit")@Valid Produit produit, BindingResult br, Model model) {
//		return save(produit, br, model);
//	}
	
	private String goEdit(Produit p, Model model) {
		model.addAttribute("produit", p);
		model.addAttribute("type", TypeProduit.values());
		model.addAttribute("taille", TailleProduit.values());
		return "page/editProduit";
	}
	
	@GetMapping("/addProduit")
	public String addProduit(Model model) {
		return goEdit(new Produit(), model);
	}
	
	//--------- A vérifier si ça fonction via les pages de Thibaut --------
	@GetMapping("/editProduit")
	public String edit(@RequestParam(name="id") Long id, Model model) {
		Optional<Produit> opt= produitRepository.findById(id); //je récupère la personne en base
		Produit p=null;
		if(opt.isPresent()) { //si elle existe je continue
			p=opt.get(); 
			return goEdit(p, model);
		} else {
			return "addProduit";
		}
		
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
