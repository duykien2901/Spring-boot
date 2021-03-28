package com.example.demo.config;

import lombok.Data;

@Data
public class RandomStuff {
    private String message;

    public  RandomStuff(String message) {
        this.message = message;
    }
}
