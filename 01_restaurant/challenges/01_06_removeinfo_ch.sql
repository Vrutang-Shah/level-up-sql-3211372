-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

DELETE FROM Reservations 
WHERE CUSTOMERID = 
(
SELECT C.CUSTOMERID
FROM CUSTOMERS C 
INNER JOIN RESERVATIONS R ON C.CUSTOMERID = R.CUSTOMERID
WHERE C.FIRSTNAME = 'Norby'
)

AND DATE > '2022-07-24'