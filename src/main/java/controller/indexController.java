package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class indexController {

	@GetMapping("/index2")
	public String index() {
		return "index2";
	}
}
