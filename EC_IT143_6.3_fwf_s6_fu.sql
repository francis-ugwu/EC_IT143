-- Next Question: How can I track who last modified a record?
-- Answer: Extend the existing trigger to update a LastModifiedBy field with the user who performed the update.

-- 1. Add a new column to store the user information:

--ALTER TABLE dbo.student
--ADD LastModifiedBy NVARCHAR(50);

-- 2. Modify the trigger to track the user:

ALTER TRIGGER trg_AfterStudentUpdate
ON dbo.student
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

-- Update the LastModifiedDate and LastModifiedBy columns
    UPDATE dbo.student
    SET LastModifiedDate = GETDATE(),
        LastModifiedBy = SYSTEM_USER
    FROM dbo.student C
    INNER JOIN Inserted I ON C.student_id = I.student_id;
END;

