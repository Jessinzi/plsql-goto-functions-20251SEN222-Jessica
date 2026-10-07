CREATE OR REPLACE FUNCTION fn_calculate_tax (e_salary IN NUMBER)
RETURN NUMBER 
IS

BEGIN
  IF e_salary IS NULL OR e_salary < 0 THEN
    RETURN NULL;
  ELSIF e_salary <= 60000 THEN
    RETURN 0;
  ELSIF e_salary <= 100000 THEN
    RETURN (e_salary - 60000) * 0.20;
  ELSE
    RETURN 40000 * 0.20 + (e_salary - 100000) * 0.30;   -- 8,000 + 30% of the excess
  END IF;
END fn_calculate_tax;
/