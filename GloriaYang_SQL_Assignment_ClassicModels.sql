/*1- Find quantity in stock for each product line*/
select productLine, sum(quantityInStock) as Quantity
from products
group by productLine;

/*2- How many customers ordered from "Motorcycles" product line?*/
select count(distinct customerNumber) as NumOfCustomers
from orders o
join orderdetails od on od.orderNumber = o.orderNumber
join products p on p.productCode = od.productCode
where p.productLine = 'Motorcycles';


/*3- List of customers who made payment on "2004-09-19" and the amount of money they paid.*/
select c.customerName, p.amount
from customers c
join payments p on p.customerNumber = c.customerNumber
where p.paymentDate = '2004-09-19';

/*4- List all of each office's employee*/
select o.city, e.firstName, e.lastName
from employees e
join offices o on o.officeCode = e.officeCode;


/*5- List dates that have orders more than 2 with the number of orders made on those dates*/
select orderDate, count(orderNumber) as numOrders
from orders
group by orderDate
having count(orderNumber) > 2;


/*6- Find number of customers in each of these cities: Las Vegas, San Francisco and NYC. */
select city, count(*) as numOfCustomers
from customers
group by city
having city = 'Las Vegas' or city = 'San Francisco' or city = 'NYC';


/*7- How many orders customer "Muscle Machine Inc" placed and how many items ordered in total.*/
select count(c.customerNumber) as numOrders, sum(od.quantityOrdered) as numItems
from customers c
join orders o on o.customerNumber = c.customerNumber
join orderdetails od on od.orderNumber = o.orderNumber
where c.customerName = 'Muscle Machine Inc';

