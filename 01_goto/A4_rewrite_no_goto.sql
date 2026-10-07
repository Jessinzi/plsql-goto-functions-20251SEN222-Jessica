SET SERVEROUTPUT ON
DECLARE
  e_num    NUMBER := -4;
  e_sign   VARCHAR2(10);
  e_parity VARCHAR2(10);

BEGIN
  e_sign := CASE WHEN e_num > 0 THEN 'Positive'

                 WHEN e_num < 0 THEN 'Negative'

                 ELSE 'Zero' END;

  e_parity := CASE WHEN MOD(e_num,2) = 0 THEN 'Even' ELSE 'Odd' END;

  DBMS_OUTPUT.PUT_LINE(e_num || ' is ' || e_sign || ' and ' || e_parity);

END;
/