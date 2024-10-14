### Exercise 1: Find the Maximum Element

Write a Python function to find the maximum element in a list of numbers without using the built-in `max()` function. If the input list is None or it is empty list, the return value must be None.

Requirements:
- Returns greatest element of a list of numbers
- In case of None input returns None
- In case of Empty input string, returns None

This excercise is measure basic python algorithmic knowledge.

### Exercise 2: Character Frequency Counter

Write a Python function that takes a string as input and counts the frequency of each character in the string. The function should return the character frequencies in a dictionary where keys should be the characters of input string and values represent the number of occurences of each characters.

Requirements:
- Returns number of umber of occurences of each characters in a dictionary like in the following sample:
    {'a': 1, 'b': 2, 'c':3}
- In case of None input returns None
- In case of Empty input string, returns None
- Space characters are removed from output

In this exercise, the function `character_frequency_counter` takes a string as input, counts the frequency of each character, and then returns the character frequencies. You can replace the `sample_string` with any string you'd like to test.

This exercise covers string manipulation and dictionary usage. 

### Exercise 3: Sql handler

**Exam Exercise: Sales Database**

You are working with a retail company’s **sales database**. Below are the schemas for three tables: **Customers**, **Orders**, and **OrderItems**. Use these tables to answer the following questions.

**Table 1: Customers**  
| Column       | Data Type | Description                          |
|--------------|-----------|--------------------------------------|
| customer_id  | INT       | Unique ID for each customer          |
| customer_name| VARCHAR   | Name of the customer                 |
| join_date    | DATE      | Date when the customer joined        |
| country      | VARCHAR   | Country where the customer resides   |

**Table 2: Orders**  
| Column       | Data Type | Description                          |
|--------------|-----------|--------------------------------------|
| order_id     | INT       | Unique ID for each order             |
| customer_id  | INT       | Foreign key referencing Customers    |
| order_date   | DATE      | Date when the order was placed       |

**Table 3: OrderItems**  
| Column       | Data Type | Description                          |
|--------------|-----------|--------------------------------------|
| item_id      | INT       | Unique ID for each item              |
| order_id     | INT       | Foreign key referencing Orders       |
| product_name | VARCHAR   | Name of the product                  |
| quantity     | INT       | Quantity of the product              |
| price        | DECIMAL   | Price per unit of the product        |

---

**Instructions:**  
Execute the sql script to build up your database. The script is loceted in data.sql file. Answer the following questions using SQL queries. Make sure to use the appropriate **window functions** wherever applicable.

---

**Question 1: Total Orders Per Customer**  
Write a query to display the total number of orders placed by each customer, along with their name and the date they joined. Sort the results by the total number of orders in descending order.

Expected Output:
- `customer_id`
- `customer_name`
- `join_date`
- `total_orders`

---

**Question 2: Rank Customers by Spending**  
For each customer, calculate their total spending (sum of the total amounts from the `Orders` table) and rank them by total spending within their respective country. Use a **window function** to rank the customers.

Expected Output:
- `customer_id`
- `customer_name`
- `country`
- `total_spent`
- `spending_rank_in_country`

Good luck!