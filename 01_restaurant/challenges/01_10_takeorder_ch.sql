-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

INSERT INTO Orders(CustomerID, OrderDate)
VALUES(
(SELECT CustomerID FROM Customers
WHERE FirstName = 'Loretta' AND LastName = 'Hundey' AND Address = '6939 Elka Place'),
'2022-09-20 14:00:00'
)

INSERT INTO OrdersDishes(OrderID, DishID)
VALUES(
(SELECT O.OrderID 
FROM Orders O
INNER JOIN Customers C ON C.CustomerID = O.CustomerID 
WHERE C.FirstName = 'Loretta' AND C.LastName = 'Hundey' AND C.Address = '6939 Elka Place' AND O.OrderDate = '2022-09-20 14:00:00'),
(SELECT DishID 
FROM Dishes 
WHERE Name = 'House Salad')),

((SELECT O.OrderID 
FROM Orders O
INNER JOIN Customers C ON C.CustomerID = O.CustomerID 
WHERE C.FirstName = 'Loretta' AND C.LastName = 'Hundey' AND C.Address = '6939 Elka Place' AND O.OrderDate = '2022-09-20 14:00:00'),
(SELECT DishID 
FROM Dishes 
WHERE Name = 'Mini Cheeseburgers')),

((SELECT O.OrderID 
FROM Orders O
INNER JOIN Customers C ON C.CustomerID = O.CustomerID 
WHERE C.FirstName = 'Loretta' AND C.LastName = 'Hundey' AND C.Address = '6939 Elka Place' AND O.OrderDate = '2022-09-20 14:00:00'),
(SELECT DishID 
FROM Dishes 
WHERE Name = 'Tropical Blue Smoothie'))

SELECT SUM(Price)
FROM Dishes
WHERE Name in ('House Salad', 'Mini Cheeseburgers', 'Tropical Blue Smoothie')