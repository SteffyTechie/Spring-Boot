package com.example.Bank.Project.repository;


import com.example.Bank.Project.model.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AccountRepository extends JpaRepository<Account, Integer> {
    // Method to find account by account number
    Account findByAccNo(String accNo); // find account by accNo

    // Method to find account by account number and pin (used in debit operation)
    Account findByAccNoAndPin(String accNo, String pin);
}

