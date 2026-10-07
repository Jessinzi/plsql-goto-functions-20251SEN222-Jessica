CREATE TABLE departments (
  dept_id   NUMBER PRIMARY KEY,
  dept_name VARCHAR2(50) NOT NULL
);

CREATE TABLE employees (
  emp_id     NUMBER PRIMARY KEY,
  first_name VARCHAR2(60),
  last_name  VARCHAR2(70),
  salary     NUMBER(10,3),
  hire_date  DATE,
  dept_id    NUMBER REFERENCES departments(dept_id)
);

INSERT INTO departments VALUES (1, 'Software Engineering');
INSERT INTO departments VALUES (2, 'Networking');
INSERT INTO departments VALUES (3, 'Information Management');

INSERT INTO employees VALUES (01,'Jessica','Ishimwe',50000, DATE '2018-03-15', 1);
INSERT INTO employees VALUES (02,'Ritha','Isimbi', 45000, DATE '2020-07-01', 2);
INSERT INTO employees VALUES (03,'Christeva','Ikuzwe',90000, DATE '2015-01-10', 3);
INSERT INTO employees VALUES (04,'Diane','Iradukunda',55000, DATE '2023-09-01', 1);
INSERT INTO employees VALUES (05,'Rena','Ingabire',NULL, DATE '2024-05-20', 2);
INSERT INTO employees VALUES (06,'Davina','Berwa', 12000, DATE '2026-01-01', NULL); 
COMMIT;