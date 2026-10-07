SET SERVEROUTPUT ON
DECLARE
  e_emp_id  employees.emp_id%TYPE := 1;
  e_salary  employees.salary%TYPE;
  e_percent NUMBER := 0;
  e_new     NUMBER;
BEGIN
  SELECT salary INTO e_salary FROM employees WHERE emp_id = e_emp_id;

  IF e_salary < 300000 THEN 
  GOTO low_salary;
  ELSIF e_salary < 800000 THEN 
  GOTO mid_salary;
  ELSE GOTO high_salary;
  END IF;

  <<low_salary>>
  e_percent := 10;  
  GOTO result;
  <<mid_salary>>
  e_percent := 5;
  GOTO result;
  <<high_salary>>
  e_percent := 0;
  GOTO result;

  <<result>>
  e_new := e_salary * (1 + e_percent/100);

  DBMS_OUTPUT.PUT_LINE('Employee ' || e_emp_id || ': ' || e_salary ||
                       ' Changed to: ' || e_new || ' at (' || e_percent || '%) raise');
EXCEPTION
  WHEN NO_DATA_FOUND THEN 
  DBMS_OUTPUT.PUT_LINE('Employee not found');
END;
/