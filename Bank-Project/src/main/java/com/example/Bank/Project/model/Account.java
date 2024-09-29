package com.example.Bank.Project.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
@Entity
public class Account {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String accNo;
    private String accName;  // Add this field for account name
    private String pin;
    private double balance;


}
