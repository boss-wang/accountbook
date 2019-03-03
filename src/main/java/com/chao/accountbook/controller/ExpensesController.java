package com.chao.accountbook.controller;

import com.chao.accountbook.entity.Expenses;
import com.chao.accountbook.service.ExpensesService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
public class ExpensesController
{
    @Resource
    private ExpensesService expensesService;

    @GetMapping("/expenses")
    public List<Expenses> getExpenses(String month,String type)
    {
        List<Expenses> expensesList = expensesService.getExpensesList(month, type);

        return expensesList;
    }

    @PostMapping("/expenses")
    public void addExpenses(Expenses expenses)
    {
        expensesService.addExpenses(expenses);
    }

    @PutMapping("/expenses")
    public void updateExpenses(Expenses expenses)
    {
        expensesService.updateExpenses(expenses);
    }

    @DeleteMapping("/expenses")
    public void deleteExpenses(String id)
    {
        expensesService.deleteExpenses(id);
    }

    @GetMapping("/expenses/overview")
    public List<Expenses> getExpensesOverView()
    {
        List<Expenses> expensesList = expensesService.getExpensesListOverView();

        return expensesList;
    }
}
