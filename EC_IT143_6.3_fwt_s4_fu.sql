CREATE TRIGGER trg_AfterStudentUpdate
ON dbo.student
AFTER UPDATE
AS

/*****************************************************************************************************************
NAME:    trg_AfterCustomerUpdate
PURPOSE: After Customer Update by Trigger

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/26/2024   FRANCIS       1. Built this script for EC IT440


RUNTIME: 
1s

NOTES: 
To keep track of customer update for each row in the table.
 
******************************************************************************************************************/

-- Q1: How can I automatically track the time a record was last modified?
-- A1: Involves adding a trigger that fires after an update occurs on a table.
-- The trigger will update a column that records the time of the last modification.
-- For tracking purposes, I'll need to add a column to store this data.

-- Update the LastModifiedDate column with the current date and time

BEGIN
    SET NOCOUNT ON;

    -- Update the LastModifiedDate column with the current date and time
    UPDATE dbo.student
    SET LastModifiedDate = GETDATE()
    FROM dbo.student C
    INNER JOIN Inserted I ON C.student_id = I.student_id;
END;