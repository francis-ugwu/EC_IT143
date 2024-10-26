--Q:  How can I extract the first name from a customer’s full name?

--A: Full name -> ContactName, where the format -> "FirstName LastName"
--Involves splitting the ContactName string into two parts 
--First name and last name) 


SELECT t.ContactName
	FROM dbo.t_w3_schools_customers AS t
ORDER BY 1;
