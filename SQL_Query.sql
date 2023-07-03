/* Q1: Who is the senior most employee based on job title? */

Select * from employee;

Select * from employee order by levels DESC limit 1;


/* Q2: Which countries have the most Invoices? */

Select billing_country, count(*) as mostInvoices
from invoice
Group By billing_country 
Order by mostInvoices Desc;

/* Q3: What are top 3 values of total invoice? */

Select total
from invoice
Order by total Desc limit 3;


/* Q4: Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money. 
Write a query that returns one city that has the highest sum of invoice totals. 
Return both the city name & sum of all invoice totals */

select * from invoice;

Select billing_city, sum(total) as sumInvoices
from invoice
Group By billing_city 
Order by sumInvoices Desc;

/* Q5: Who is the best customer? The customer who has spent the most money will be declared the best customer. 
Write a query that returns the person who has spent the most money.*/

select * from customer;

Select customer.customer_id, customer.first_name, customer.last_name, SUM(invoice.total) as total
from customer
JOIN invoice on customer.customer_id = invoice.customer_id
Group by customer.customer_id
order by total DESC
limit 1;
