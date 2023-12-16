-- Lab 9 Unit 2
-- Create a table rentals_may to store the data from rental table with information for the month of May.
drop table if exists rentals_may;

CREATE TABLE rentals_may (
    rental_id INT,
    rental_date DATETIME,
    inventory_id INT,
    customer_id INT,
    return_date DATETIME,
    staff_id INT,
    last_update TIMESTAMP,
    PRIMARY KEY (rental_id)
);

-- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
select * from sakila.rental
where month(rental_date) = 5;

insert into rentals_may
select * from sakila.rental
where month(rental_date) = 5;

select * from sakila.rentals_may;

-- Create a table rentals_june to store the data from rental table with information for the month of June.
drop table if exists rentals_june;

CREATE TABLE rentals_june (
	rental_id INT,
    rental_date DATETIME,
    inventory_id INT,
    customer_id INT,
    return_date DATETIME,
    staff_id INT,
    last_update TIMESTAMP,
    PRIMARY KEY (rental_id)
);

-- Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
select * from sakila.rental
where month(rental_date) = 6;

insert into rentals_june
select * from sakila.rental
where month(rental_date) = 6;

select * from sakila.rentals_june;

-- Check the number of rentals for each customer for May.
select customer_id, count(rental_id) as "Number of rentals" from sakila.rentals_may
group by customer_id
order by customer_id;

-- Check the number of rentals for each customer for June.
select customer_id, count(rental_id) as "Number of rentals" from sakila.rentals_june
group by customer_id
order by customer_id;
