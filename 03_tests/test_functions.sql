SET SERVEROUTPUT ON
BEGIN
  DBMS_OUTPUT.PUT_LINE('Annual(250000) = ' || annual_salary(250000)); 
  DBMS_OUTPUT.PUT_LINE('Annual(NULL)   = ' || NVL(TO_CHAR(annual_salary(NULL)),'NULL'));
  DBMS_OUTPUT.PUT_LINE('Tax(50000)     = ' || fn_calculate_tax(50000));  
  DBMS_OUTPUT.PUT_LINE('Tax(80000)     = ' || fn_calculate_tax(80000));  
  DBMS_OUTPUT.PUT_LINE('Tax(250000)    = ' || fn_calculate_tax(250000)); 
  DBMS_OUTPUT.PUT_LINE('Dept(10)       = ' || fn_dept_name(1));          
  DBMS_OUTPUT.PUT_LINE('Dept(99)       = ' || fn_dept_name(3));          
  DBMS_OUTPUT.PUT_LINE('Years(2018-03-15) = ' || fn_years_of_service(DATE '2018-03-15'));
END;
/