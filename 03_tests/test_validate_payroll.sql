SET SERVEROUTPUT ON
BEGIN
  FOR i IN 01..06 LOOP
    DBMS_OUTPUT.PUT_LINE('Emp ' || i || ': ' || fn_validate_payroll(i));
  END LOOP;
END;
/