package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import repositories.CompteRepository;
import repositories.DevisRepository;
import repositories.ProduitRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import model.Produit;
import model.TypeCompte;
import model.TypeProduit;

@Controller
@RequestMapping("/page")
public class ViennoiserieController { // Nom controller a changer

	@Autowired
	ProduitRepository produitRepository;
	
	@Autowired
	DevisRepository devisRepository;
	
	@Autowired
	CompteRepository compteRepository;
	
	
//------------------------------  VIENNOISERIE ------------------------------------------
	@GetMapping("/listViennoiserie")
	public String listAdmin(Model model) {
		model.addAttribute("produit", produitRepository.findAllByType(TypeProduit.Viennoiserie));
		return "page/listViennoiserie";
	}
	
	@GetMapping("/listViennoiserie/delete")
	public String delete(@RequestParam(name="id") Long id) {
		produitRepository.deleteById(id);
		return "redirect:/page/listViennoiserie";
	}
	
		
		
		
		//------------------------------  GATEAU ------------------------------------------
		@GetMapping("/listGateau")
		public String listGateau(Model model) {
			model.addAttribute("produit", produitRepository.findAllByType(TypeProduit.Gateau));
			return "page/listGateau";
		}
		
		@GetMapping("/listGateau/delete")
		public String deleteGateau(@RequestParam(name="id") Long id) {
			produitRepository.deleteById(id);
			return "redirect:/page/listGateau";
		}
		
		
		
		//------------------------------  BOISSON ------------------------------------------
		@GetMapping("/listBoisson")
		public String listBoisson(Model model) {
			model.addAttribute("produit", produitRepository.findAllByType(TypeProduit.Boissons));
			return "page/listBoisson";
		}
		
		@GetMapping("/listBoisson/delete")
		public String deleteBoisson(@RequestParam(name="id") Long id) {
			produitRepository.deleteById(id);
			return "redirect:/page/listBoisson";
		}
	
		
		
		//------------------------------  DEVIS ------------------------------------------
		@GetMapping("/listDevis")
		public String listDevis(Model model) {
			model.addAttribute("devis", devisRepository.findAll());
			return "page/listDevis";
		}
		
		@GetMapping("/listDevis/delete")
		public String deleteDevis(@RequestParam(name="id") Long id) {
			devisRepository.deleteById(id);
			return "redirect:/page/listDevis";
		}
	
	
		//------------------------------  CLIENT ------------------------------------------
		@GetMapping("/listClient")
		public String listClient(Model model) {
			model.addAttribute("compte", compteRepository.findAllByType(TypeCompte.client));
			return "page/listClient";
		}
		
		@GetMapping("/listClient/delete")
		public String deleteClient(@RequestParam(name="id") Long id) {
			compteRepository.deleteById(id);
			return "redirect:/page/listClient";
		}
	
	
	
	
	
	
	
	
	
//---------------------------------------------- DOUBLON AVEC CE QU'A FAIT LOVELYSE ----------------------------------------------	
	/*
	@GetMapping("/listViennoiserie/edit")
	public String edit(Model model) {
		Produit v=new Produit();
		model.addAttribute("viennoiserie",v);
		return "page/editViennoiserie";
	}
	
	@PostMapping("/listViennoiserie/edit")
	public String addViennoiserie(@RequestParam(name="id") Long id) {
		Produit v=new Produit();
		produitRepository.save(v);
		return "redirect:/page/listViennoiserie";
	}*/

	
	

	
}
