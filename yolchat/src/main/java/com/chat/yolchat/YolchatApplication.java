package com.chat.yolchat;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
//@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
@SpringBootApplication
public class YolchatApplication {

	@RequestMapping("/")
	String home()
	{
		System.out.println("테스트");
		return "Hello World!";
	}

	public static void main(String[] args) {
		SpringApplication.run(YolchatApplication.class, args);
	}

}
