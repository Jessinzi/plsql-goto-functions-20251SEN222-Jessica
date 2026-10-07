-- ILLEGAL:
BEGIN
  GOTO inside_if;
  IF 1 = 1 THEN
    <<inside_if>>
    DBMS_OUTPUT.PUT_LINE('Inside IF');
  END IF;
END;
/

-- FIX:
BEGIN
  GOTO my_label;
  DBMS_OUTPUT.PUT_LINE('Skipped');

  <<my_label>>
  DBMS_OUTPUT.PUT_LINE('Jumped here legally');
END;
/