package com.example.Bank.Project;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;


    @Configuration
    public class SecurityConfig {

        @Bean
        public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
            http
                    // Authorize requests using the new method
                    .authorizeHttpRequests((authz) -> authz
                            .requestMatchers("/login").permitAll()
                            .anyRequest().authenticated()
                    )
                    // Login and Logout configuration
                    .formLogin(form -> form
                            .defaultSuccessUrl("/", true)
                            .permitAll()
                    )
                    .logout(logout -> logout
                            .logoutUrl("/logout")
                            .logoutSuccessUrl("/login")
                            .permitAll()
                    );

            return http.build();

    }
}
