
CREATE TABLE Student (
    StudentID NUMBER(5) PRIMARY KEY,
    StudentName VARCHAR2(30),
    DepartmentID NUMBER(5)
);

CREATE OR REPLACE PROCEDURE Insert_Student (
    p_StudentID IN NUMBER,
    p_StudentName IN VARCHAR2,
    p_DepartmentID IN NUMBER
)
IS
BEGIN
    INSERT INTO Student (StudentID, StudentName, DepartmentID)
    VALUES (p_StudentID, p_StudentName, p_DepartmentID);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Student record inserted successfully.');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE('Student ID already exists.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
