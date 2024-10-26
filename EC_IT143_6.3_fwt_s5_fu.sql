-- Question: Test the trigger, perform an update on the Customers table. Did it work?

UPDATE dbo.student
SET student_name = 'Jane Doe'
WHERE student_id = 1;

-- Answer: Query the table to verify that the LastModifiedDate field was updated correctly.

SELECT student_id, student_name, LastModifiedDate
FROM dbo.student
WHERE student_id = 1;
