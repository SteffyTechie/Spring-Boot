package com.example.Bank.Project.controller;

import com.example.Bank.Project.exception.InvalidAccountException;
import com.example.Bank.Project.exception.InvalidAccountorPinException;
import com.example.Bank.Project.model.Account; // Assuming you have the Account model
import com.example.Bank.Project.model.Transaction;
import com.example.Bank.Project.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

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
            //accountService.addAccount(account.getAccNo(), account.getAccName(), account.getBalance(), account.getPin());
            accountService.addAccount(account);
            mav.addObject("message", "Account added Succesfully");
            //mav.addObject("account", accountService.addAccount(account.getAccNo(), account.getAccName(), account.getBalance(), account.getPin()));
            return mav;

    }

    // Show form to debit amount
    @GetMapping("/debit")
    public ModelAndView showDebitForm() {
        return new ModelAndView("debitAccount", "account", new Account()); // returns debitAccount.jsp with a new Account object
    }

    // Handle debit amount using @ModelAttribute
    @PostMapping("/debitAcc")
    public ModelAndView debitAmount(@ModelAttribute Account account, @RequestParam("amount") double amount) {
        ModelAndView mav = new ModelAndView("accountSuccess");

        try {
            // Call the service method to debit the amount
            String message = accountService.debitAmount(account.getAccNo(), account.getPin(), amount);
            mav.addObject("message", message); // Success message
        } catch (InvalidAccountorPinException e) {
            // If the custom exception is thrown, set an error message and view
            mav.setViewName("errorPage"); // You can redirect to a custom error page if you have one
            mav.addObject("errorMessage", e.getMessage()); // Add the error message to the ModelAndView
        }

        return mav; // Return the ModelAndView to be rendered
    }


    // Show form to credit amount
    @GetMapping("/credit")
    public ModelAndView showCreditForm() {
        return new ModelAndView("creditAccount", "account", new Account()); // returns creditAccount.jsp with a new Account object
    }

    // Handle credit amount using @ModelAttribute
    @PostMapping("/creditAcc")
    public ModelAndView creditAmount(@ModelAttribute Account account, @RequestParam("amount") double amount) {
        ModelAndView mav = new ModelAndView("accountSuccess");

        try {
            // Call the service method to credit the amount
            String message = accountService.creditAmount(account.getAccNo(), amount);
            mav.addObject("message", message); // Success message
        } catch (InvalidAccountException e) {
            // If the custom exception is thrown, set an error message and view
            mav.addObject("errorMessage", e.getMessage()); // Add the error message to the ModelAndView
        }

        return mav; // Return the ModelAndView to be rendered
    }

    @GetMapping("/viewAccountForm")
    public ModelAndView viewAccountForm() {
        // Load the form where the user will input the account number to view
        return new ModelAndView("viewAccount");
    }

    @PostMapping("/viewAccount")
    public ModelAndView viewAccount(@RequestParam String accNo) {
        ModelAndView mav = new ModelAndView("viewAccountDetails");

        Account account = accountService.viewAccount(accNo);
        System.out.println(account);

        if (account != null) {
           mav.addObject("account", account); // Pass the account to the JSP view

            // Fetch transactions and pass them to the view
            //List<Transaction> transactions = accountService.getTransactionsByAccountNo(accNo);
            //mav.addObject("transactions", transactions);
        } else {
            mav.addObject("message", "Account not found");
        }

        return mav;
    }
    // Show all accounts
    @GetMapping("/all")
    public ModelAndView getAllAccounts() {
        ModelAndView mav = new ModelAndView("allAccounts"); // returns allAccounts.jsp
        mav.addObject("accounts", accountService.getAllAccounts());
        return mav;
    }

    @GetMapping("/welcome")
    public String welcome(@RequestParam("username") String username, Model model) {
        model.addAttribute("username", username); // Add the username to the model
        return "welcome"; // Return the view name
    }
}

