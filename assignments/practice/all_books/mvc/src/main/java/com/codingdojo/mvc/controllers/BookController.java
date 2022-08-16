package com.codingdojo.mvc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.codingdojo.mvc.models.Book;
import com.codingdojo.mvc.services.BookService;

@Controller
public class BookController {
	
	@Autowired
	BookService bookService;
	
	@GetMapping("/")
	public String home(Model model) {
		return "redirect:/books";
	}
	
	@GetMapping("/books/{bookId}")
	public String index( Model model, @PathVariable("bookId") Long bookId) {
		
		Book book = bookService.findBook(bookId);

		model.addAttribute( "book", book);
		
		
		
		return "show.jsp";
	}
	
	@GetMapping("/books")
	public String allBooks( Model model) {
		
		List<Book> books = bookService.allBooks();
		
		model.addAttribute( "books", books);
		
		
		return "index.jsp";
	}

	
}
