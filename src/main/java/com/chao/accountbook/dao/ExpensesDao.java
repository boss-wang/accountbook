package com.chao.accountbook.dao;

import com.chao.accountbook.entity.Expenses;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ExpensesDao
{
    List<Expenses> getExpensesList(@Param("month") String month, @Param("type") String type);

    void addExpenses(@Param("expenses") Expenses expenses);

    void updateExpenses(@Param("expenses") Expenses expenses);

    void deleteExpenses(@Param("id") String id);

    List<Expenses> getExpensesListOverView();

    List<String> getMonthList();

    List<String> getPayMethodList();
}
