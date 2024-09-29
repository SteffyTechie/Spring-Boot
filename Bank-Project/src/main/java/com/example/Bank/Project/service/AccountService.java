package com.example.Bank.Project.service;

import com.example.Bank.Project.model.Account;

import com.example.Bank.Project.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class AccountService {

    @Autowired
    private AccountRepository accountRepository;

    // Add account

    public Account addAccount(String accNo, String accName, double balance, String pin) {
        Account account = new Account();
        account.setAccNo(accNo);
        account.setAccName(accName);  // Ensure this matches the field in Account
        account.setBalance(balance);
        account.setPin(pin);
        //save to the db
        return accountRepository.save(account);
    }

    // Debit amount

    public String debitAmount(String accNo, String pin, double amount) {
        // Fetch the account using the account number and pin
        Account account = accountRepository.findByAccNoAndPin(accNo, pin);

        // Check if the account exists
        if (account != null) {
            // Check if sufficient balance exists
            if (account.getBalance() >= amount) {
                account.setBalance(account.getBalance() - amount); // Debit the amount
                accountRepository.save(account); // Save the updated account
                return "Amount debited successfully."; // Return success message
            } else {
                return "Insufficient balance."; // Return insufficient balance message
            }
        } else {
            return "Invalid account or pin."; // Return invalid account message
        }
    }

    // Credit amount

    public String creditAmount(String accNo, double amount) {
        Account account = accountRepository.findByAccNo(accNo);  // Ensure this method exists in repository
        if (account != null) {
            account.setBalance(account.getBalance() + amount);
            accountRepository.save(account);
            return "Amount credited successfully";
        } else {
            return "Invalid account";
        }
    }

    // Show all accounts
    public List<Account> getAllAccounts() {

        return accountRepository.findAll();
    }
}
