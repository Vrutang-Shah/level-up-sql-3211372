-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT COUNT(Title)
FROM Books
WHERE Title = 'Dracula'

SELECT COUNT(B.Title)
FROM Loans L
INNER JOIN Books B ON B.BookID = L.BookID
WHERE B.Title = 'Dracula' AND L.ReturnedDate IS NULL

SELECT 
  (SELECT COUNT(Title)
    FROM Books
    WHERE Title = 'Dracula') - 
  (SELECT COUNT(B.Title)
    FROM Loans L
    INNER JOIN Books B ON B.BookID = L.BookID
    WHERE B.Title = 'Dracula' AND L.ReturnedDate IS NULL)
AS AvailableCount
