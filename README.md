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
