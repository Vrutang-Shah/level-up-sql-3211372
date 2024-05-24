-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT C.FirstName, C.LastName, R.Date, R.PartySize 
FROM Reservations R
INNER JOIN Customers C on C.CustomerID = R.CustomerID
WHERE C.LastName in ('Stevensen', 'Stephensen', 'Stevenson', 'Stephenson', 'Stuyvesant')
AND R.PartySize = 4