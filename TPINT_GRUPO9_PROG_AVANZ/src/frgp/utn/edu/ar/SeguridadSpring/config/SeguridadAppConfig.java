package frgp.utn.edu.ar.SeguridadSpring.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

@Configuration
@EnableWebSecurity
public class SeguridadAppConfig extends WebSecurityConfigurerAdapter {

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
    
    @Bean
    public AuthenticationSuccessHandler authenticationSuccessHandler() {
        return (request, response, authentication) -> {
        	String contextPath = request.getContextPath();
            if (authentication != null && authentication.getAuthorities() != null) {
                for (GrantedAuthority authority : authentication.getAuthorities()) {
                    if (authority.getAuthority().equals("ROLE_administrador")) {
                        response.sendRedirect(contextPath + "/Clientes");
                        return;
                    } else if (authority.getAuthority().equals("ROLE_cliente")) {
                        response.sendRedirect(contextPath + "/Prestamos");
                        return;
                    }
                }
            }
            response.sendRedirect(contextPath + "/");
        };
    }

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
        PasswordEncoder encoder = passwordEncoder();
        UserBuilder usuarios = User.builder().passwordEncoder(encoder::encode);

		auth.inMemoryAuthentication()
		.withUser(usuarios.username("admin").password("admin").roles("usuario","administrador"))
		.withUser(usuarios.username("usuario").password("123").roles("usuario", "cliente"));
	
		
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.authorizeRequests()
		.antMatchers("/").hasRole("usuario")
		.antMatchers("/Clientes").hasRole("administrador")
		.antMatchers("/Prestamos").hasRole("cliente")
		.and().formLogin()
		.loginPage("/formularioLogin")
		.loginProcessingUrl("/autenticacionUsuario")
        .successHandler(authenticationSuccessHandler())
		.permitAll()
		.and().logout()
        .logoutSuccessUrl("/formularioLogin?logout=true") // A�adir un par�metro de mensaje // P�gina a la que redirige despu�s de cerrar sesi�n
	    .invalidateHttpSession(true) // Invalidar la sesi�n HTTP al cerrar sesi�n
	    .deleteCookies("JSESSIONID") // Eliminar cookies relacionadas con la sesi�n si las hay
		.and().exceptionHandling().accessDeniedPage("/acceso-denegado")
        .and().sessionManagement()
        .sessionCreationPolicy(SessionCreationPolicy.IF_REQUIRED)
        .invalidSessionUrl("/sesion-vencida")
        .maximumSessions(1)
        .expiredUrl("/sesion-vencida");
        
	}
}
