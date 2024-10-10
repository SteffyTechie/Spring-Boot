package com.example.Bank.Project.controller;

import com.example.Bank.Project.model.Account;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
    @GetMapping("/login")
    public String showAddAccountForm() {
        return "login";
    }

//    @GetMapping("/home")
//    public String welcome() {
//        return "welcome";
//    }

    @GetMapping("/home")
    public String welcome(HttpSession session, Model model) {
        // Retrieve the username from the session
        String username = (String) session.getAttribute("username");

        // If username exists in session, add it to the model
        if (username != null) {
            model.addAttribute("username", username);
        } else {
            model.addAttribute("username", "Guest"); // Fallback for users not logged in
        }

        return "welcome";  // Return the "welcome" view
    }


    @GetMapping("/logout")
    public String logout() {
        // logout logic
        return "login"; // returns the logout JSP
    }

}



