-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424

UPDATE Loans
SET ReturnedDate = '2022-07-05'
WHERE BookID = (
  SELECT B.BookID
  FROM Books B 
  INNER JOIN Loans L ON L.BookID = B.BookID
  WHERE B.Barcode = 6435968624
  AND L.ReturnedDate IS NULL
)

UPDATE Loans
SET ReturnedDate = '2022-07-05'
WHERE BookID = (
  SELECT B.BookID
  FROM Books B 
  INNER JOIN Loans L ON L.BookID = B.BookID
  WHERE B.Barcode = 5677520613
  AND L.ReturnedDate IS NULL
)

UPDATE Loans
SET ReturnedDate = '2022-07-05'
WHERE BookID = (
  SELECT B.BookID
  FROM Books B 
  INNER JOIN Loans L ON L.BookID = B.BookID
  WHERE B.Barcode = 8730298424
  AND L.ReturnedDate IS NULL
)