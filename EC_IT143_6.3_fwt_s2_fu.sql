-- Q1: How can I automatically track the time a record was last modified?
-- A1: Involves adding a trigger that fires after an update occurs on a table.
-- The trigger will update a column that records the time of the last modification.
-- For tracking purposes, I'll need to add a column to store this data.

-- ALTER TABLE dbo.students
-- ADD LastModifiedDate DATETIME;


-- Q2: How can I track who last modified a record?
-- A2: Extend the existing trigger to update a LastModifiedBy field
-- with the user who performed the update.