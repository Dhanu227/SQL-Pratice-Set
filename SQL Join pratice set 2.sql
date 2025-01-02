select * from Customers

select * from Orders

select * from Products


--1) fnd the customer who has spent the most on their orders
 select top 1 CustomerID,sum(price) product_price from orders o left join Products p
 on o.ProductID=p.ProductID 
 group by CustomerID 
 order by product_price desc

 --2) find the customers who have ordered more than one type of products
SELECT DISTINCT c.CustomerName
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName
HAVING COUNT(DISTINCT o.ProductID) > 1;

--4)list all products and their corresponding orders including products that have never been ordered
select OrderID,p.ProductID,p.ProductName from Orders o right join products p 
on o.ProductID=p.ProductID 

--5)Retrieve all orders placed by customers from the USA
select customername,OrderID from Customers c join orders o
on c.CustomerID=o.CustomerID
where country='USA'

--6)find the names of customers who have orderd a product priced above $500
select distinct
CustomerName from Customers c join Orders o on c.CustomerID=o.CustomerID
join Products p on o.ProductID=p.ProductID
where price >500

--7)find customers who have ordered the same product more than once
SELECT CustomerName,ProductID,count(orderid)
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
group by customername,ProductID
having count(orderid)>1