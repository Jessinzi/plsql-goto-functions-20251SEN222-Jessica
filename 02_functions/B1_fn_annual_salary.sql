CREATE OR REPLACE FUNCTION fn_annual_salary (monthly_salary IN NUMBER)
RETURN NUMBER 
IS
BEGIN
  IF monthly_salary IS NULL OR monthly_salary < 0 THEN
    RETURN NULL;
  END IF;
  RETURN monthly_salary * 12;
END fn_annual_salary;
/