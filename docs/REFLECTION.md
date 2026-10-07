# Reflection: Individual Assignment III

## Firstly, What I Learned About GOTO

GOTO jumps to a labeled statement only inside the same block.

**Some rules:** GOTO cannot jump **into** a nested block, IF, or loop but only **out** of them.

Taking a look in task **A3**, I broke this rule on purpose and got the error. 
I fixed it by moving the label outside the IF block.

In task **A4**, I rewrote the classifier using `IF / ELSIF / ELSE` which was shorter and clearer, which showed me why developers avoid GOTO.

## 2. What I Learned About Functions

A function is a block that always has to return **one value**.

Functions I built:

| Function | Purpose |
|----------|---------|
| `fn_annual_salary` | Monthly salary × 12 |
| `fn_years_of_service` | Years worked using `MONTHS_BETWEEN` |
| `fn_calculate_tax` | Progressive tax calculation |
| `fn_dept_name` | Department name for an employee |
| `fn_validate_payroll` | Combined validator using the others |

`fn_validate_payroll` was the most interesting, because it **called other functions inside itself** and returned one clear result.


## 3. Challenges I Faced

1. **No Oracle SQL Developer** → used **Oracle Live SQL** in the browser.
2. **PLS-00375 error** → learned the "no jumping into blocks" rule.
3. **NO_DATA_FOUND** → added `EXCEPTION` blocks returning `0` or `'Unknown'`.
4. **Functions in SQL** → learned they must not modify data.


## 4. How and which AI I Used 

I used Deepseek to explain GOTO rules, structure the code, and help draft documentation.  
I tested every script myself in oracle live sql.


## 5. Conclusion

This assignment taught me:

- How GOTO works and why it should be rare.
- How to write reusable PL/SQL functions with error handling.
- How to use functions inside SQL.
- How to organize a project on GitHub.

I now feel more confident writing PL/SQL functions.

