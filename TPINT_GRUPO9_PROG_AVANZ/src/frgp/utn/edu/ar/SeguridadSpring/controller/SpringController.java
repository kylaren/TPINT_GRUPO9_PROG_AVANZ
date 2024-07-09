package frgp.utn.edu.ar.SeguridadSpring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SpringController {

	@RequestMapping("formularioLogin.html")
	public ModelAndView MostrarLogin() {
		ModelAndView mv= new ModelAndView("login");
		return mv;
	}
	
	@RequestMapping("/index.html")
	public ModelAndView showIndex() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}
	
	@RequestMapping("/Clientes.html")
	public ModelAndView mostrarClientes() {
		ModelAndView mv = new ModelAndView("Clientes");
		return mv;
	}
	
	
	@RequestMapping("/Prestamos.html")
	public ModelAndView showLoans() {
		ModelAndView mv = new ModelAndView("Prestamos");
		return mv;
	}
	
	@RequestMapping("/acceso-denegado.html")
	public ModelAndView show403Page() {
		ModelAndView mv = new ModelAndView("acceso-denegado");
		return mv;
	}
	
	@RequestMapping("/sesion-vencida.html")
	public ModelAndView sesionVencida() {
		ModelAndView mv = new ModelAndView("sesion-vencida");
		return mv;
	}
}
