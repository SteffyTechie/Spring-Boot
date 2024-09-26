package com.example.Bank.Project.controller;

import com.example.Bank.Project.model.Account;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
    @GetMapping("/")
    public String showAddAccountForm() {

        return "welcome";
    }
  @GetMapping("/addaccount")
   public String addAccount(){
        return "addAccount";
    }

}
