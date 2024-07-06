package frgp.utn.edu.ar.SeguridadSpring.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages="frgp.utn.edu.ar.SeguridadSpring")
public class App {

	@Bean
	public ViewResolver viewResolver() {
		
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		
		// Setea ruta a las vistas
		viewResolver.setPrefix("/WEB-INF/vistas/");
		
		// Setea sufijo de las vistas
		viewResolver.setSuffix(".jsp");
		
		return viewResolver;
	}
	
}
