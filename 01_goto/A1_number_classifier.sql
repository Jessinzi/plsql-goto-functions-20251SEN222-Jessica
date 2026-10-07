SET SERVEROUTPUT ON
DECLARE
  e_num    NUMBER := -4;
  e_sign   VARCHAR2(10);
  e_parity VARCHAR2(10);
BEGIN
  IF e_num > 0 THEN
    GOTO positive_label;
  ELSIF e_num < 0 THEN
    GOTO negative_label;
  ELSE
    GOTO zero_label;
  END IF;

  <<positive_label>>
  e_sign := 'Positive';
  GOTO finish_label;

  <<negative_label>>
  e_sign := 'Negative';
  GOTO finish_label;

  <<zero_label>>
  e_sign := 'Zero';
  GOTO finish_label;

  <<finish_label>>
  IF MOD(e_num, 2) = 0 THEN 
	e_parity := 'Even'; 
	ELSE e_parity := 'Odd'; 
	END IF;

  DBMS_OUTPUT.PUT_LINE(e_num ||' is '|| e_sign ||' and '|| e_parity);
END;
/