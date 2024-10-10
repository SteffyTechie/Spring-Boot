package com.example.Bank.Project.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Entity
@Getter
@Setter
public class Transaction {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY) // Many transactions can belong to one account
    @JoinColumn(name = "account_id", nullable = false) // Foreign key to the Account table
    private Account account;

    private double amount;

    private String type; // "credit" or "debit"

    private LocalDateTime transactionDate;


}
