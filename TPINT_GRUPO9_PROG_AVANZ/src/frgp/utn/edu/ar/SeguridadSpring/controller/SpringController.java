package frgp.utn.edu.ar.SeguridadSpring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SpringController {

	@GetMapping("/")
	public String showIndex() {
		return "index";
	}
	
	@GetMapping("/Clientes")
	public String showClients() {
		return "Clientes";
	}
	
	@GetMapping("/Prestamos")
	public String showLoans() {
		return "Prestamos";
	}
	
	@GetMapping("/acceso-denegado")
	public String show403Page() {
		return "acceso-denegado";
	}
}
