package com.example.Bank.Project.config;

import com.example.Bank.Project.service.JWTService;
import com.example.Bank.Project.service.MyUserDetailsService;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

@Component
public class JwtFilter  extends OncePerRequestFilter {
@Autowired
   private JWTService jwtService;

@Autowired
ApplicationContext context;
    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        //Beared [token] eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJsaW5jeSIsImlhdCI6MTcyODAyMTU5OCwiZXhwIjoxNzI4MDIxNzA2fQ.A_jktKFEjnyRYS0l8DjoYCoJvPNnIOw9udLX-gKMbKI
        // actually want to get this from the client side

        String authHeader = request.getHeader("Authorization");
        String token = null;
        String username = null;

        if (authHeader !=null && authHeader.startsWith("Bearer")){
            //fetching the token
            token = authHeader.substring(7);
            username =jwtService.extractUserName(token);
        }
        if(username != null && SecurityContextHolder.getContext().getAuthentication() == null){

            UserDetails userDetails = context.getBean(MyUserDetailsService.class).loadUserByUsername(username);
            if(jwtService.validateToken(token,userDetails)){
                UsernamePasswordAuthenticationToken authToken =
                        new UsernamePasswordAuthenticationToken(userDetails ,null, userDetails.getAuthorities());
                authToken.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
                SecurityContextHolder.getContext().setAuthentication(authToken);// adding token to the chain

            }
        }
        filterChain.doFilter(request,response);


    }
}
