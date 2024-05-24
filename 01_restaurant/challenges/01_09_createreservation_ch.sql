-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

INSERT INTO Reservations(CustomerID, Date, PartySize)
VALUES(
(SELECT CustomerID FROM Customers
WHERE FirstName = 'Sam' AND LastName = 'McAdams' AND Email = 'smac@kinetecoinc.com'),
'2022-08-12 18:00:00',
5
);


INSERT INTO CUSTOMERS(FirstName, LastName, Email)
VALUES('Sam', 'McAdams', 'smac@kinetecoinc.com')

DELETE FROM Customers
WHERE FirstName = 'Sam' AND LastName = 'McAdams' AND Email = 'smac@kinetecoinc.com'