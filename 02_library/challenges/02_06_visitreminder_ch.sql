-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT P.FirstName, P.LastName, COUNT(L.PatronID) as Count
FROM Patrons P
RIGHT JOIN Loans L ON P.PatronID = L.PatronID
GROUP BY L.PatronID
ORDER BY Count
LIMIT 10