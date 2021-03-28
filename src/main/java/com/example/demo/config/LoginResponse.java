package com.example.demo.config;

import lombok.Data;

import javax.validation.constraints.NotBlank;

@Data
public class LoginResponse {
    private String jwt;

    public LoginResponse(String jwt) {
        this.jwt = jwt;
    }
}
