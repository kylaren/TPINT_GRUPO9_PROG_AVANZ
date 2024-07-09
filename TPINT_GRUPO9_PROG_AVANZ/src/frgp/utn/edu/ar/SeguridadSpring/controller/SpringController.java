package frgp.utn.edu.ar.SeguridadSpring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SpringController {

	@RequestMapping("formularioLogin.html")
	public ModelAndView MostrarLogin() {
		return new ModelAndView("login");
	}
	
	@RequestMapping("/index.html")
	public ModelAndView showIndex() {
		return new ModelAndView("index");
	}
	
	@RequestMapping("/Clientes.html")
	public ModelAndView mostrarClientes() {
		return new ModelAndView("Clientes");
	}
		
	@RequestMapping("/Prestamos.html")
	public ModelAndView showLoans() {
		return new ModelAndView("Prestamos");
	}
	
	@RequestMapping("/acceso-denegado.html")
	public ModelAndView show403Page() {
		return new ModelAndView("acceso-denegado");
	}
	
	@RequestMapping("/sesion-vencida.html")
	public ModelAndView sesionVencida() {
		return new ModelAndView("sesion-vencida");
	}
}
