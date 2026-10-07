CREATE OR REPLACE FUNCTION fn_years_of_service (hire_date IN DATE)
RETURN NUMBER
IS

BEGIN
  IF hire_date IS NULL THEN 
  RETURN NULL;
  END IF;
  IF hire_date > SYSDATE THEN
  RETURN 0;
  END IF;
  RETURN TRUNC(MONTHS_BETWEEN(SYSDATE, hire_date) / 12);
END fn_years_of_service;
/