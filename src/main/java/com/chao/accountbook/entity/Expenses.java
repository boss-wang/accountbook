package com.chao.accountbook.entity;

import lombok.Data;

@Data
public class Expenses
{
    private String id;

    private String month;

    private float amount;

    private String type;

    private String username;

}
