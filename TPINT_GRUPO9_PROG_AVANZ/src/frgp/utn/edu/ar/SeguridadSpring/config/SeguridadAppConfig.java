package frgp.utn.edu.ar.SeguridadSpring.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class SeguridadAppConfig extends WebSecurityConfigurerAdapter {

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
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
		.permitAll()
		.and().logout()
        .logoutSuccessUrl("/formularioLogin?logout=true") // Añadir un parámetro de mensaje // Página a la que redirige después de cerrar sesión
	    .invalidateHttpSession(true) // Invalidar la sesión HTTP al cerrar sesión
	    .deleteCookies("JSESSIONID") // Eliminar cookies relacionadas con la sesión si las hay
		.and().exceptionHandling().accessDeniedPage("/acceso-denegado")
        .and().sessionManagement()
        .sessionCreationPolicy(SessionCreationPolicy.IF_REQUIRED)
        .invalidSessionUrl("/sesion-vencida")
        .maximumSessions(1)
        .expiredUrl("/sesion-vencida");
        
	}

	
	
}
