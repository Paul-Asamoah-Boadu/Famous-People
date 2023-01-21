/* Create a table named person */
CREATE TABLE persons 
		(id SERIAL PRIMARY KEY NOT NULL, 
		full_name VARCHAR (20) NOT NULL,
		age INTEGER NOt NULL);

/* Insert values into the table */
INSERT INTO persons (full_name, age) 
	VALUES ('Bobby McBobbyFace', 12);
INSERT INTO persons (full_name, age) 
	VALUES ('Lucy BoBucie', 25);
INSERT INTO persons (full_name, age)
	VALUES ('Banana FoFanna', 14);
INSERT INTO persons (full_name, age)
	VALUES ('Shish Kabob', 20);
INSERT INTO persons (full_name, age)
	VALUES ('Fluffy Sparkles', 8);
INSERT INTO persons (full_name, age)
	VALUES ('Jerry Jay', 9);

/* Create a table named hobbies */
CREATE TABLE hobbies 
		(id SERIAL PRIMARY KEY NOT NULL, 
		person_id INTEGER NOT NULL, 
		game VARCHAR (20) NOT NULL);
 
 /* Insert values into the table */
INSERT INTO hobbies (person_id, game) 
	VALUES (1, 'drawing');
INSERT INTO hobbies (person_id, game)
	VALUES (1, 'coding');
INSERT INTO hobbies (person_id, game)
	VALUES (2, 'dancing');
INSERT INTO hobbies (person_id, game) 
	VALUES (2, 'coding');
INSERT INTO hobbies (person_id, game) 
	VALUES (3, 'skating');
INSERT INTO hobbies (person_id, game) 
	VALUES (3, 'rowing');
INSERT INTO hobbies (person_id, game) 
	VALUES (3, 'drawing');
INSERT INTO hobbies (person_id, game) 
	VALUES (4, 'coding');
INSERT INTO hobbies (person_id, game) 
	VALUES (4, 'dilly-dallying');
INSERT INTO hobbies (person_id, game) 
	VALUES (4, 'meowing');
INSERT INTO hobbies (person_id, game) 
	VALUES (5, 'hunting');

/* Create table named person */
CREATE table friends 
    (id SERIAL PRIMARY KEY NOT NULL, 
	 person1_id INTEGER, 
	 person2_id INTEGER);

/* Insert values into the table */
INSERT INTO friends (person1_id, person2_id)
    VALUES (1, 4);
INSERT INTO friends (person1_id, person2_id)
    VALUES (2, 3);
 
 
/*
● We've created a database of people and hobbies, and each row in hobbies is related to a
row in persons via the person_id column. In this first step, insert one more row in persons
and then one more row in hobbies that is related to the newly inserted person.

● Now, select the 3 tables with a join so that you can see each person's name next to their
hobby.

● Now, add an additional query that shows only the name and hobbies of 'Bobby
McBobbyFace', using JOIN combined with WHERE.
*/

/* Query all the tables */
SELECT * 
	FROM persons;
SELECT * 
	FROM hobbies;
SELECT *
	FROM friends;

/* Inserting additional row to persons and hobbies tables respectively */
INSERT INTO persons (full_name, age) 
	VALUES ('Dominic Appiah', 21);
INSERT INTO hobbies (person_id, game) 
	VALUES (7, 'coding');

/* Joining peoples name with thier hobbies */
SELECT persons.full_name, hobbies.game 
	FROM persons
	JOIN hobbies
	ON persons.id = hobbies.person_id;

/* Query the name and hobbies of 'Bobby McBobbyFace' */
SELECT persons.full_name, hobbies.game 
	FROM persons
	JOIN hobbies
	ON persons.id = hobbies.person_id
	WHERE persons.age = 12;

/* Joining names to each per friend */
SELECT p1.full_name, p2.full_name 
    FROM friends
    JOIN persons p1
    ON p1.id = friends.person1_id
    JOIN persons p2
    ON p2.id = friends.person2_id;

/* Create table named customers */
CREATE TABLE customers 
		(id SERIAL PRIMARY KEY NOT NULL, 
		name VARCHAR (20) NOT NULL,
		email TEXT);

/* Insert valuse intp the table */
INSERT INTO customers (name, email) 
	VALUES ('Doctor Who', 'doctorwho@timelords.com');
INSERT INTO customers (name, email) 
	VALUES ('Harry Potter', 'harry@potter.com');
INSERT INTO customers (name, email) 
	VALUES ('Captain Awesome', 'captain@awesome.com');

/* Create a table named order */
CREATE TABLE orders 
		(id SERIAL PRIMARY KEY NOT NULL,
		customer_id INTEGER NOT NULL,
		item TEXT NOT NULL,
		price REAL NOT NULL);

/* Inter values into the table */
INSERT INTO orders (customer_id, item, price)
 	VALUES (1, 'Sonic Screwdriver', 1000.00);
INSERT INTO orders (customer_id, item, price)
	VALUES (2, 'High Quality Broomstick', 40.00);
INSERT INTO orders (customer_id, item, price)
	VALUES (1, 'TARDIS', 1000000.00);


 /*
 We've created a database for customers and their orders. Not all of the customers have
made orders, however. Come up with a query that lists the name and email of every
customer followed by the item and price of orders they've made. Use a LEFT OUTER JOIN
so that a customer is listed even if they've made no orders, and don't add any ORDER BY.

Now, create another query that will result in one row per each customer, with their name, email,
and total amount of money they've spent on orders. Sort the rows according to the total money
spent, from the most spent to the least spent.
(Tip: You should always GROUP BY on the column that is most likely to be unique in a row.)
 */
 
 /* Query all the tables */
 SELECT * 
 	FROM customers;
 SELECT * 
 	FROM orders;
 
/* Query the lists of name and email of every
customer followed by the item and price of orders they've made. */
SELECT customers.name, email, orders.item, orders.price 
	FROM customers 
	LEFT OUTER JOIN orders
	ON customers.id = orders.customer_id;

/* Query a row per each customer, with their name, email,
and total amount of money they've spent on orders. */
SELECT customers.name, email, SUM(price) AS total_amount 
	FROM customers 
	LEFT OUTER JOIN orders
	ON orders.customer_id = customers.id
	GROUP BY customers.name, email;


/* Create a table movies named */
CREATE TABLE movies 
	(id SERIAL PRIMARY KEY NOT NULL,
	title TEXT NOT NULL,
	released INTEGER NOT NULL,
	sequel_id INTEGER);

/* Insert values into the tables */
INSERT INTO movies 
	VALUES (1, 'Harry Potter and the Philosopher Stone', 2001, 2);
INSERT INTO movies 
	VALUES (2, 'Harry Potter and the Chamber of Secrets', 2002, 3);
INSERT INTO movies 
	VALUES (3, 'Harry Potter and the Prisoner of Azkaban', 2004, 4);
INSERT INTO movies 
	VALUES (4, 'Harry Potter and the Goblet of Fire', 2005, 5);
INSERT INTO movies 
	VALUES (5, 'Harry Potter and the Order of the Phoenix', 2007, 6);
INSERT INTO movies 
	VALUES (6, 'Harry Potter and the Half-Blood Prince', 2009, 7);
INSERT INTO movies 
	VALUES (7, 'Harry Potter and the Deathly Hallows – Part 1', 2010, 8);
INSERT INTO movies 
	VALUES (8, 'Harry Potter and the Deathly Hallows – Part 2', 2011, NULL);

/*
We've created a table with all the 'Harry Potter' movies, with a sequel_id column that 
matches the id of the sequel for each movie. Issue a SELECT that will show the title of each 
movie next to its sequel's title (or NULL if it doesn't have a sequel).
*/

/* Query movies table */
SELECT * 
	FROM movies;

/* Query the title of each movie next to its sequel's title 
(or NULL if it doesn't have a sequel) */
SELECT movies.title, m1.title 
	FROM movies
	JOIN movies m1
	ON m1.sequel_id = movies.id;


/* 
We've created a database for a documents app, with rows for each document with it's title,
content, and author. In this first step, use UPDATE to change the author to 'Jackie Draper' for all
rows where it's currently 'Jackie Paper'. Then re-select all the rows to make sure the table
changed like you expected.

Step 2
Now you'll delete a row, being very careful not to delete all the rows. Only delete the row where
the title is 'Things I'm Afraid Of'. Then re-select all the rows to make sure the table changed like
you expected.
*/

/* Create a table named documents */
CREATE TABLE documents 
	(id SERIAL PRIMARY KEY NOT NULL, 
	title TEXT NOT NULL,
	content TEXT NOT NULL,
	author TEXT NOT NULL);

/* Insert values into the table */
INSERT INTO documents (title, content, author) 
	VALUES ('Rich Dad Poor Dad', 'Financial Education', 'Robert Kiyosaki'),
	       ('Cashflow Quadrant', 'Guide to financial freedom', 'Robert Kiyosaki'),
	       ('Coding for Life', 'Learning to code within 100 days', 'Jackie Draper'),
               ('Time Management', 'Things I am Afraid Of', 'Paul Asamoah'),
               ('Python for Backend', 'How to use Python for backend', 'Jackie Draper');

/* Query the document table */
SELECT * 
	FROM documents;
 
/* Changing the author name "Jackie Draper" to "Jackie Paper" */		
UPDATE documents 
	SET author = 'Jackie Paper'
	WHERE id = 5;

UPDATE documents 
	SET author = 'Jackie Paper' 
	WHERE id = 3;

/* Delete row that contains "Things I'm Afraid Of" */
DELETE FROM documents 
	WHERE id = 4;


/*
We've created a database of clothes, and decided we need a price column. Use ALTER to add a
'price' column to the table. Then select all the columns in each row to see what your table looks
like now.

Step 2
Now assign each item a price, using UPDATE - item 1 should be 10 dollars, item 2 should be 20
dollars, item 3 should be 30 dollars. When you're done, do another SELECT of all the rows to
check that it worked as expected.

Step 3
Now insert a new item into the table that has all three attributes filled in, including 'price'. Do one
final SELECT of all the rows to check it worked.
*/

/* Create a table named clothes */
CREATE TABLE clothes 
	(id SERIAL PRIMARY KEY NOT NULL, 
	type TEXT NOT NULL,
	design TEXT NOT NULL);

/* Insert values into the table */
INSERT INTO clothes (type, design)
	VALUES ('Jacket', 'Burberry'), 
	       ('Sleeve', 'Sam Sheikh'), 
	       ('Dress', 'Oscar de la');

/* Query clothes table */
SELECT * 
	FROM clothes;

/* Adding a price column to the clothes table */
ALTER TABLE clothes 
	ADD price INT;  

/* Assigning price to each item in the price column */
UPDATE clothes 
	SET price = 10 
	WHERE id = 1;

UPDATE clothes
	SET price = 20
	WHERE id = 2;

UPDATE clothes 
	SET price = 30 
	WHERE id = 3;

/* Inserting new item into the table */
INSERT INTO clothes (type, design, price) 
	VALUES ('Pyjamas', 'Olivia von Halle', 40);

/* Query clothes table */
SELECT *
	FROM clothes;
