# PL/SQL Assignment III

**Course:** INSY 8311 – Database Development with PL/SQL  
**Instructor:** Eric Maniraguha    
**Student:** Ishimwe Jessica  
**Student ID:** 20251SEN222  
**Date:** October 7, 2026  


## Overview

This repository contains my individual assignment on **PL/SQL GOTO statements** and **stored functions**.  
It covers how GOTO works, when it is illegal, how to avoid it, and how to build reusable PL/SQL functions that can be used inside SQL queries.

---

## Repository Structure
```
plsql-goto-functions-20251SEN222-Jessica/
├── README.md
├── .gitignore
├── 00_setup/
│   └── create_tables.sql          (creates tables and inserts sample data)
├── 01_goto/
│   ├── A1_number_classifier.sql
│   ├── A2_salary_review.sql
│   ├── A3_illegal_goto.sql
│   └── A4_rewrite_no_goto.sql
├── 02_functions/
│   ├── B1_fn_annual_salary.sql
│   ├── B2_fn_years_of_service.sql
│   ├── B3_fn_calculate_tax.sql
│   ├── B4_fn_dept_name.sql
│   └── C1_fn_validate_payroll.sql
├── 03_tests/
│   ├── B5_functions_in_select.sql
│   ├── test_functions.sql
│   └── test_validate_payroll.sql
├── screenshots/                   (output images for each task)
└── docs/
    └── REFLECTION.md
```

## What This Assignment Covers

- Using **GOTO** statements and understanding their rules.  
- Identifying an **illegal GOTO** and how to fix it.  
- Rewriting GOTO logic using structured **IF/ELSIF** statements.  
- Creating **stored functions** that return a single value.  
- Using functions inside **SQL SELECT, WHERE, and ORDER BY** clauses.  
- Handling errors with **EXCEPTION blocks**.  
- Building a **combined payroll validator** function.  

## Tools Used

- **Oracle Live SQL** – for running and testing all PL/SQL code  
- **VS Code** – for writing and saving the `.sql` files  
- **GitHub** – for version control and submission  


