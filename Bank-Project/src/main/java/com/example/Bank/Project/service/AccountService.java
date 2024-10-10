package com.example.Bank.Project.service;

import com.example.Bank.Project.exception.InvalidAccountException;
import com.example.Bank.Project.exception.InvalidAccountorPinException;
import com.example.Bank.Project.model.Account;

import com.example.Bank.Project.model.Transaction;
import com.example.Bank.Project.repository.AccountRepository;
import com.example.Bank.Project.repository.TransactionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class AccountService {

    @Autowired
    private AccountRepository accountRepository;

    @Autowired
    private TransactionRepository transactionRepository;

    // Add account

//    public Account addAccount(String accNo, String accName, double balance, String pin) {
//        Account account = new Account();
//        account.setAccNo(accNo);
//        account.setAccName(accName);  // Ensure this matches the field in Account
//        account.setBalance(balance);
//        account.setPin(pin);
//        //save to the db
//        return accountRepository.save(account);
//
//
//    }
public Account addAccount(Account account) {
    return accountRepository.save(account);
}
    // Debit amount

    public String debitAmount(String accNo, String pin, double amount) {
        // Fetch the account using the account number and pin
        Account account = accountRepository.findByAccNoAndPin(accNo, pin);

        // Check if the account exists
        if (account == null) {
            // Throw custom exception for invalid account or pin
            throw new InvalidAccountorPinException("Invalid account number or pin.");
        }

        // Check if sufficient balance exists
        if (account.getBalance() < amount) {
            return "Insufficient balance."; // Return insufficient balance message
        }

        // Debit the amount
        account.setBalance(account.getBalance() - amount);
        accountRepository.save(account); // Save the updated account
        Transaction transaction = new Transaction();
        transaction.setAccount(account);  // Link the transaction with the account
        transaction.setAmount(amount);    // Set the debited amount
        transaction.setType("debit");     // Set the transaction type as "debit"
        transaction.setTransactionDate(LocalDateTime.now());  // Set the current date/time
        transactionRepository.save(transaction);  // Save the transaction
        return "Amount debited successfully."; // Return success message
    }

    // Credit amount

    public String  creditAmount(String accNo, double amount) {
        Account account = accountRepository.findByAccNo(accNo);  // Use this method from repository
        if (account == null) {
            throw new InvalidAccountException("Invalid account number: " + accNo);
        }
        account.setBalance(account.getBalance() + amount);
        accountRepository.save(account);
        Transaction transaction = new Transaction();
        transaction.setAccount(account);  // Link the transaction with the account
        transaction.setAmount(amount);    // Set the debited amount
        transaction.setType("credit");     // Set the transaction type as "debit"
        transaction.setTransactionDate(LocalDateTime.now());  // Set the current date/time
        transactionRepository.save(transaction);  // Save the transaction
        return "Amount credited successfully";
    }
    //view account
    public Account viewAccount(String accNo) {
        return accountRepository.findByAccNo(accNo);

    }
    public List<Transaction> getTransactionsByAccountNo(String accNo) {
        return transactionRepository.findByAccountAccNo(accNo);
    }
    // Show all accounts
    public List<Account> getAllAccounts() {
        return accountRepository.findAll();
    }
}
