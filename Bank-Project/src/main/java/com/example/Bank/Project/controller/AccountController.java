package com.example.Bank.Project.controller;

import com.example.Bank.Project.model.Account; // Assuming you have the Account model
import com.example.Bank.Project.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AccountController {

    @Autowired
    private AccountService accountService;

    // Show form to add account

    @GetMapping("/add")
    public ModelAndView showAddAccountForm() {
        return new ModelAndView("addAccount", "account", new Account()); // returns addAccount.jsp with a new Account object
    }

    // Handle account addition using @ModelAttribute
    @PostMapping("/add")
    public ModelAndView addAccount(@ModelAttribute Account account) {
        ModelAndView mav = new ModelAndView("accountSuccess");
        mav.addObject("message","Account added Succesfully");
        //mav.addObject("account", accountService.addAccount(account.getAccNo(), account.getAccName(), account.getBalance(), account.getPin()));
        return mav;
    }

    // Show form to debit amount
    @GetMapping("/debit")
    public ModelAndView showDebitForm() {
        return new ModelAndView("debitAccount", "account", new Account()); // returns debitAccount.jsp with a new Account object
    }

    // Handle debit amount using @ModelAttribute
    @PostMapping("/debit")
    public ModelAndView debitAmount(@ModelAttribute Account account) {
        ModelAndView mav = new ModelAndView("accountSuccess");
        mav.addObject("message","Debited Succesfully");
      //  mav.addObject("account", accountService.debitAmount(account.getAccNo(), account.getPin(), account.getBalance())); // using balance as debit amount
        return mav;
    }

    // Show form to credit amount
    @GetMapping("/credit")
    public ModelAndView showCreditForm() {
        return new ModelAndView("creditAccount", "account", new Account()); // returns creditAccount.jsp with a new Account object
    }

    // Handle credit amount using @ModelAttribute
    @PostMapping("/credit")
    public ModelAndView creditAmount(@ModelAttribute Account account) {
        ModelAndView mav = new ModelAndView("accountSuccess");
        mav.addObject("message","Credited Succesfully");
       // mav.addObject("account", accountService.creditAmount(account.getAccNo(), account.getBalance())); // using balance as credit amount
        return mav;
    }

    // Show all accounts
    @GetMapping("/all")
    public ModelAndView getAllAccounts() {
        ModelAndView mav = new ModelAndView("allAccounts"); // returns allAccounts.jsp
        mav.addObject("accounts", accountService.getAllAccounts());
        return mav;
    }
}
