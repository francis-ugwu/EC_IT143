-- Q2: How can I track who last modified a record?
-- A2: Extend the existing trigger to update a LastModifiedBy field
-- with the user who performed the update.


-- Q3: Test the trigger, perform an update on the Customers table. Did it work?
-- A3: Query the table to verify that the LastModifiedDate field was updated correctly.


UPDATE dbo.student
SET student_name = 'Jane Doe'
WHERE student_id = 1;


SELECT student_id, student_name, LastModifiedDate
FROM dbo.student
WHERE student_id = 1;
