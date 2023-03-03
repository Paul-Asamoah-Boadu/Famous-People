<h1>Famous-People</h1>

<h2>Introduction</h2>

This project is a simple demonstration of how to create, manipulate and query a PostgreSQL database using SQL. The database contains 3 tables; `persons`, `hobbies` and `friends` and a second database with 2 tables; `customers` and `orders`.

This project sought to test the understanding of all the JOINS available in SQL as well as altering and updating a table. 
The JOINS used in this project include:

- `self join`
- `implicit join`
- `explicit join`
- `cross join`
- `left outer join`
- `inner join`
- `full join`

<h2>Schema</h2>

<h3>Persons</h3>

<center>
    
<table style="margin: 0 auto;">
   <thead>
      <tr>
          <th>Column</th>
         <th>Type</th>
         <th>Constraints</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td>id</td>
         <td>SERIAL</td>
         <td>PRIMARY KEY</td>
      </tr>
      <tr>
         <td>full_name</td>
         <td>VARCHAR(20)</td>
         <td>NOT NULL</td>
      </tr>
      <tr>
         <td>age</td>
         <td>INTEGER</td>
         <td>NOT NULL</td>
      </tr>
   </tbody>
</table>
    
</center>

<h3>Hobbies</h3>

<center>
    
<table style="margin: 0 auto;">
   <thead>
      <tr>
          <th>Column</th>
         <th>Type</th>
         <th>Constraints</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td>id</td>
         <td>SERIAL</td>
         <td>PRIMARY KEY</td>
      </tr>
      <tr>
         <td>person_id</td>
         <td>INTEGER</td>
         <td>NOT NULL</td>
      </tr>
      <tr>
         <td>game</td>
         <td>VARCHAR(20)</td>
         <td>NOT NULL</td>
      </tr>
   </tbody>
</table>
    
</center>

<h3>Friends</h3>

<center>
    
<table style="margin: 0 auto;">
   <thead>
      <tr>
          <th>Column</th>
         <th>Type</th>
         <th>Constraints</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td>id</td>
         <td>SERIAL</td>
         <td>PRIMARY KEY</td>
      </tr>
      <tr>
         <td>person1_id</td>
         <td>INTEGER</td>
         <td>NOT NULL</td>
      </tr>
      <tr>
         <td>person2_id</td>
         <td>INTEGER</td>
         <td>NOT NULL</td>
      </tr>
   </tbody>
</table>
    
</center>

<h3>Customers</h3>

<center>
    
<table style="margin: 0 auto;">
   <thead>
      <tr>
          <th>Column</th>
         <th>Type</th>
         <th>Constraints</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td>id</td>
         <td>SERIAL</td>
         <td>PRIMARY KEY</td>
      </tr>
      <tr>
         <td>name</td>
         <td>VARCHAR(20)</td>
         <td>NOT NULL</td>
      </tr>
      <tr>
         <td>email</td>
         <td>TEXT</td>
         <td>NOT NULL</td>
      </tr>
   </tbody>
</table>
    
</center>

<h3>Orders</h3>

<center>
    
<table style="margin: 0 auto;">
   <thead>
      <tr>
          <th>Column</th>
         <th>Type</th>
         <th>Constraints</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td>id</td>
         <td>SERIAL</td>
         <td>PRIMARY KEY</td>
      </tr>
      <tr>
         <td>customer_id</td>
         <td>INTEGER</td>
         <td>NOT NULL</td>
      </tr>
      <tr>
         <td>item</td>
         <td>TEXT</td>
         <td>NOT NULL</td>
      </tr>
      <tr>
         <td>price</td>
         <td>REAL</td>
         <td>NOT NULL</td>
      </tr>
   </tbody>
</table>
    
</center>

<h2>Requirements</h2>

To run this project, you need to have the following installed on your machine:

- PostgreSQL database
- An SQL client or PostgreSQL command line interface (CLI)

<h2>Usage</h2>

The following SQL queries can be used to query the tables:
- Quering all the data from the `persons`, `hobbies`, `friends`, `customers`, and `orders` tables respectively.
- Quering data from both `persons` and `hobbies` tables, joining them on the `person_id` field to show each person's name and their hobbies.
- Quering data for the name and hobbies of a specific person with age 12.
- Quering data for each friend's name with their corresponding friend's name.
- Quering data for all customers and their orders. Use a left outer join to include customers that have made no orders.
- Quering the name, email, and total amount spent by each customer in the `orders` table. The results are sorted in descending order according to the total amount spent.

<h2>Project Recommendation</h2>

This project is a great opportunity for anyone looking to learn about database design and `SQL`. Whether you're a beginner or an experienced database administrator, you will find this project both challenging and rewarding. With a comprehensive design and well-documented code, this project is easy to understand and customize to your needs.

