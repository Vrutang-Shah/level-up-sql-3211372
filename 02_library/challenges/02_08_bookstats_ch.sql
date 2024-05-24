-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT Published, COUNT(Barcode)
FROM Books
GROUP BY Published
ORDER BY Published

SELECT B.Title, COUNT(B.Title) as MostCount
FROM Books B
RIGHT JOIN Loans L ON L.BookID = B.BookID
GROUP BY B.Title
ORDER BY MostCount DESC
LIMIT 5
