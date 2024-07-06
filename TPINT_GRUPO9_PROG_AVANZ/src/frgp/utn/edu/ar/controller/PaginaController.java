package frgp.utn.edu.ar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PaginaController {
	
	
	@RequestMapping("redireccionar.html")
	public ModelAndView eventoRedireccionar(@RequestParam("page") String page) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName(page);
		return mv;
	}
}
