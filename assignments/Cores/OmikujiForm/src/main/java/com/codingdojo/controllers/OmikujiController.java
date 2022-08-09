package com.codingdojo.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class OmikujiController {
	
	@RequestMapping ( value = "/omikuji")
	public String index() {
		
		return "index.jsp";
	}
	
	@RequestMapping( value = "/formProcess", method=RequestMethod.POST)
	public String processForm(HttpSession session,
			RedirectAttributes redirectAttributes,
			@RequestParam( value = "number") Integer number,
			@RequestParam( value = "city") String city,
			@RequestParam( value = "person") String person,
			@RequestParam( value = "hobby") String hobby,
			@RequestParam( value = "type") String type,
			@RequestParam( value = "somethingNice") String somethingNice) {
		
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("type", type);
		session.setAttribute("somethingNice", somethingNice);
		
		
		return "redirect:/show";
	}
	
	@RequestMapping("/show")
	public String show(HttpSession session, Model model) {
		Integer number = (Integer) session.getAttribute("number");
		String city = (String) session.getAttribute("city");
		String person = (String) session.getAttribute("person");
		String hobby = (String) session.getAttribute("hobby");
		String type = (String) session.getAttribute("type");
		String somethingNice = (String) session.getAttribute("somethingNice");
		
		model.addAttribute("number", number);
		model.addAttribute("city", city);
		model.addAttribute("person", person);
		model.addAttribute("hobby", hobby);
		model.addAttribute("type", type);
		model.addAttribute("somethingNice", somethingNice);
		
		
		
		
		return "show.jsp";
		
	}
}
