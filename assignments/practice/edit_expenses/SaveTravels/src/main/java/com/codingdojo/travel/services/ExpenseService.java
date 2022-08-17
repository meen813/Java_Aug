package com.codingdojo.travel.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.travel.models.Expense;
import com.codingdojo.travel.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	private final ExpenseRepository expenseRepository;
	
	public ExpenseService( ExpenseRepository expenseRepositroy ) {
		this.expenseRepository = expenseRepositroy;
	}
	
	public List<Expense> allExpenses(){
		return expenseRepository.findAll();
	}
	
	public Expense createExpense( Expense e) {
		return expenseRepository.save(e);
	}

	public Expense findExpense( Long id) {
		Optional<Expense> optionalExpense = expenseRepository.findById(id);
		if(optionalExpense.isPresent()) {
			return optionalExpense.get();
		}else {
			return null;
		}
	}
}
