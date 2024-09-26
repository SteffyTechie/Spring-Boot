package com.example.Bank.Project.repository;


import com.example.Bank.Project.model.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AccountRepository extends JpaRepository<Account, Integer> {
    Account findByAccNoAndPin(String accNo, String pin);
    Account findByAccNo(String accNo);
}

