package com.codingdojo.travel.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.codingdojo.travel.models.Expense;
import com.codingdojo.travel.services.ExpenseService;

@Controller
public class ExpenseController {
	
	@Autowired
	ExpenseService expenseService;
	
	@GetMapping("/")
	public String home() {
		return "redirect:/expenses";
	}
	
	@GetMapping("expenses/{expenseId}")
	public String index( Model model, @PathVariable("expenseId") Long expenseId) {
		
		Expense expense = expenseService.findExpense(expenseId);
		
		model.addAttribute("expense", expense);
		
		return "detail.jsp";
	}
	
	
	
	@GetMapping("/expenses")
	public String allExpenses( @ModelAttribute("expense") Expense expense, Model model ) {
		List<Expense> expenses = expenseService.allExpenses();
		model.addAttribute("expenses", expenses);
		return "index.jsp";
	}
	
	@PostMapping("/expenses")
	public String newExpense( @Valid @ModelAttribute("expense") Expense expense,
										  BindingResult result,
										  Model model) {
		if( result.hasErrors()) {
			return "index.jsp";
		}else {
			expenseService.createExpense(expense);
			return "redirect:/expenses";
		}
	}
	
	@GetMapping("/expenses/edit/{id}")
	public String edit( @PathVariable("id") Long id,
							  Model model) {
		Expense expense = expenseService.findExpense(id);
		model.addAttribute("expense", expense);
		return "edit.jsp";
	}
	@PutMapping("/process/update/expenses/{id}")
	public String update( @Valid @ModelAttribute("expense") Expense expense,
								   BindingResult result,
								   @PathVariable("id") Long id) {
		  if (result.hasErrors()) {
	            return "edit.jsp";
	        } else {
	            expenseService.createExpense(expense);
	            return "redirect:/expenses";
	        }
	}
	
	@DeleteMapping("/delete/{id}")
	public String deleteBook( @PathVariable("id") Long id ) {
		expenseService.deleteExpense(id);
		return "redirect:/expenses";
	}

}
