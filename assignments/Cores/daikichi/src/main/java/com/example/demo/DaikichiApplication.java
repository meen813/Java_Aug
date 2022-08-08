package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@RequestMapping("/daikichi/travel/{city}")
	public String daikichiTravel(  @PathVariable("city") String city) {
		System.out.println( "Congratulations! You will soon travel to " + city);
		return "Congratulations! You will soon travel to " + city;
	}
	
	@RequestMapping("/daikichi/lotto/{num}")
	public String userPagePathVariable(  @PathVariable("num") Integer num) {
		if(num%2 == 0) {
			System.out.println( "You will take a grand journey in the near future, but be weary of tempting offers");
			return "You will take a grand journey in the near future, but be weary of tempting offers";
		}
		System.out.println( "You have enjoyed the fruits of your labor but now is a great time to spend time with family and friends.");
		return "You have enjoyed the fruits of your labor but now is a great time to spend time with family and friends.";
	}
}
