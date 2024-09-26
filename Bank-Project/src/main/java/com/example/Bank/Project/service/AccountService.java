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
        account.setAccName(accName);
        account.setBalance(balance);
        account.setPin(pin);
        return accountRepository.save(account);
    }

    // Debit amount

    public String debitAmount(String accNo, String pin, double amount) {
        Account account = accountRepository.findByAccNoAndPin(accNo, pin);
        if (account != null) {
            if (account.getBalance() >= amount) {
                account.setBalance(account.getBalance() - amount);
                accountRepository.save(account);
                return "Amount debited successfully";
            } else {
                return "Insufficient balance";
            }
        } else {
            return "Invalid account or pin";
        }
    }

    // Credit amount

    public String creditAmount(String accNo, double amount) {
        Account account = accountRepository.findByAccNo(accNo);
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
