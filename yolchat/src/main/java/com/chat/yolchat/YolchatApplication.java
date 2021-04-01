package com.chat.yolchat;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
@RestController
@SpringBootApplication
public class YolchatApplication {

    @RequestMapping("/")
    public String hello() {
        return "hello";
    }

    public static void main(String[] args) {
        SpringApplication.run(YolchatApplication.class, args);
    }

}