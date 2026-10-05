CREATE OR REPLACE FUNCTION Count_Students(
    p_DepartmentID IN NUMBER
)
RETURN NUMBER
IS
    total_students NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO total_students
    FROM Student
    WHERE DepartmentID = p_DepartmentID;

    RETURN total_students;
END;
/
