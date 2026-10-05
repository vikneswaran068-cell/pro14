CREATE TABLE Employee (
    EmpID NUMBER(5) PRIMARY KEY,
    EmpName VARCHAR2(20),
    Salary NUMBER(10),
    Department VARCHAR2(20)
);

CREATE OR REPLACE TRIGGER Employee_Insert_Trigger
AFTER INSERT ON Employee
FOR EACH ROW

BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'New employee record inserted successfully. Employee Name: ' 
        || :NEW.EmpName
    );
END;
/
