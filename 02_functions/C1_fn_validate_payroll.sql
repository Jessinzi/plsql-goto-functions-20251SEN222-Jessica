CREATE OR REPLACE FUNCTION fn_validate_payroll (p_emp_id IN NUMBER)
RETURN VARCHAR2
IS
  v_salary employees.salary%TYPE;
  v_hire   employees.hire_date%TYPE;
  v_dept   employees.dept_id%TYPE;
BEGIN
  SELECT salary, hire_date, dept_id
  INTO   v_salary, v_hire, v_dept
  FROM   employees
  WHERE  emp_id = p_emp_id;

  IF v_salary IS NULL OR v_salary <= 0 THEN
    RETURN 'INVALID: salary missing or not positive';
  END IF;
  IF v_hire > SYSDATE THEN
    RETURN 'INVALID: hire date is in the future';
  END IF;
  IF fn_dept_name(v_dept) = 'Unknown' THEN
    RETURN 'INVALID: department not found';
  END IF;

  RETURN 'VALID';
EXCEPTION
  WHEN NO_DATA_FOUND THEN RETURN 'INVALID: employee not found';
  WHEN OTHERS        THEN RETURN 'ERROR: ' || SQLERRM;
END fn_validate_payroll;
/