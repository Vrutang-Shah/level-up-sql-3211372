-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT Concat(FirstName, ' ', LastName) as 'Customer Name', COUNT(O.OrderID) as OrderCount
FROM Customers C
INNER JOIN Orders O on C.CustomerID = O.CustomerID
GROUP BY C.CustomerID
ORDER BY OrderCount DESC
LIMIT 15;