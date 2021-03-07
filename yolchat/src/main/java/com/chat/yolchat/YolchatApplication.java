package com.chat.yolchat;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
@RestController
@SpringBootApplication
// 하위에 있는걸 스프링이 component 스캔한다
// 그다음 등록한다.
// 싹다
// 하지만 Reposity는 component 하위에 있어서 component대상이기 때문에
// Reposityory도 component 스캔이 되어 등록
public class YolchatApplication {

    @RequestMapping("/")
    public String hello() {
        return "hello";
    }

    public static void main(String[] args) {
        SpringApplication.run(YolchatApplication.class, args);
    }

}