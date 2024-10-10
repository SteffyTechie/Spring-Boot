package com.example.Bank.Project.exception;

public class InvalidAccountorPinException extends RuntimeException {
    public InvalidAccountorPinException(String message) {
        super(message);
    }
}
