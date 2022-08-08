package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class DaikichiApplication {

	public static void main(String[] args) {
		SpringApplication.run(DaikichiApplication.class, args);
	}

	
	@RequestMapping("/daikichi")
	public String welcome(){
		return "Welcome!";
	}
	
	@RequestMapping("/daikichi/today")
	public String daikichiToday(){
		return "Today you will find luck in all your endeavors!";
	}
	
	@RequestMapping("/daikichi/tomorrow")
	public String daikichiTomorrow(){
		return "Tomorrow, an opportunity will arise, so be sure to be open to new ideas!";
	}
}
