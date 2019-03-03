package com.chao.accountbook.service;

import com.chao.accountbook.dao.ExpensesDao;
import com.chao.accountbook.entity.Expenses;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.UUID;

@Service
public class ExpensesService
{
    @Resource
    private ExpensesDao expensesDao;

    public List<Expenses> getExpensesList(String month, String type)
    {
        List<Expenses> expensesList = expensesDao.getExpensesList(month, type);

        return expensesList;
    }

    public void addExpenses(Expenses expenses)
    {
        String id = UUID.randomUUID().toString().replace("-", "");

        expenses.setId(id);

        expensesDao.addExpenses(expenses);
    }

    public void updateExpenses(Expenses expenses)
    {
        expensesDao.updateExpenses(expenses);
    }

    public void deleteExpenses(String id)
    {
        expensesDao.deleteExpenses(id);
    }

    public List<Expenses> getExpensesListOverView()
    {
        List<Expenses> expensesListOverView = expensesDao.getExpensesListOverView();

        return expensesListOverView;
    }
}
