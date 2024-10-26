--Q:  How can I extract the first name from a customer’s full name?

--A: Full name -> ContactName, where the format -> "FirstName LastName"
--Involves splitting the ContactName string into two parts -> First name and last name)
--Google search "How to extract first name and last name"
--https://stackoverflow.com/questions/5145791/extracting-first-name-and-last-name

SELECT t.CustomerID
     , t.CustomerName
	 , t.ContactName
	 , dbo.udf_parse_first_name(t.Contactname) AS ContactName_first_name
	 , '' AS ContactName_last_name --How to extract last name from Contactname
	 , t.Address
	 , t.City
	 , t.Country

FROM dbo.t_w3_schools_customers AS t
ORDER BY 3;