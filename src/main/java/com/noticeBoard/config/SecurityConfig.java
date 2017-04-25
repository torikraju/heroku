package com.noticeBoard.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.thymeleaf.extras.springsecurity4.dialect.SpringSecurityDialect;

@Configuration
@EnableGlobalMethodSecurity(securedEnabled=true)
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
	private UserDetailsService userDetailsService;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http
			.formLogin()
			.loginPage("/login").defaultSuccessUrl("/")
			.and()
			.logout().logoutSuccessUrl("/")
			.and()
			.authorizeRequests()
			.antMatchers("/").permitAll()
			.antMatchers("/profile","/profile/**","/changePassword","/changePhoto","/updateProfile").authenticated()
			.antMatchers("/postNotice","/updateNotice/**","/deleteNotice/**","/yourNotice").authenticated()
			.antMatchers("/allNotice").permitAll()
			.antMatchers("/individualNotice/**").permitAll()
			.antMatchers("/contactUs").permitAll()
			.antMatchers("/chat", "/mywebsocket/**", "/topic/**","/app/**").authenticated()
			.antMatchers("/userManage","/AdminAction/**","/noticeManage").hasAnyAuthority("ROLE_ADMIN,ROLE_SYSTEMADMIN")
			.antMatchers("/adminManage","/SystemAdminAction/**","/createAdmin").hasAuthority("ROLE_SYSTEMADMIN")
			.antMatchers("/mail","/individualMail/**").hasAnyAuthority("ROLE_ADMIN,ROLE_SYSTEMADMIN")
			.antMatchers("/bootstrap/**","/pic/**","/webjars/**","/getProfilePic/**").permitAll()
			.antMatchers("/login","/registration").not().authenticated()
			.anyRequest().denyAll()
			.and().rememberMe();
		
	}
	
	@Bean
	public SpringSecurityDialect springSecurityDialect() {
		SpringSecurityDialect dialect = new SpringSecurityDialect();
		return dialect;
	}
	
	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(bCryptPasswordEncoder());
	}

}
