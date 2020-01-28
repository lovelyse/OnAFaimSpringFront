package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ViennoiserieController {

	
	@GetMapping("client/gestionViennoiserie")
	public String indexClient() {
		return "client/gestionViennoiserie";
	}
	
	@GetMapping("admin/gestionViennoiserie")
	public String indexAdmin() {
		return "admin/gestionViennoiserie";
	}
	
}
