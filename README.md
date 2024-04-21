# 🍜Case-Study-1-Danny's Diner

![image](https://github.com/snehapaherwar/Case-Study-1-Danny-s-Diner/assets/141404143/b18d8c1a-1194-41f6-ae1b-883695431b9b)

# Data Source
[Link](https://8weeksqlchallenge.com/case-study-1/)

# Problem Statement
+ Danny wants to use the data to answer a few simple questions about his customers, especially about their visiting patterns, how much money they’ve spent, and which menu items are their favorite.
+ Having this deeper connection with his customers will help him deliver a better and more personalized experience for his loyal customers.
+ He plans on using these insights to help him decide whether he should expand the existing customer loyalty program — additionally he needs help to generate some basic datasets so his team can easily inspect the data without needing to use SQL.

# Entity Relationship Diagram

![image](https://github.com/snehapaherwar/Case-Study-1-Danny-s-Diner/assets/141404143/e61fff9f-f98e-4c8b-a919-320061cb5b9d)

# Questions and Solutions

I have executed queries in MySQL Workbench. 

**1. What is the total amount each customer spent at the restaurant?**
![image](https://github.com/snehapaherwar/Case-Study-1-Danny-s-Diner/assets/141404143/247bbaf7-27bc-4baa-aa28-de12631a7380)

**Solution:** Customer A spent $76.
Customer B spent $74.
Customer C spent $36.

**2. How many days has each customer visited the restaurant?**
![image](https://github.com/snehapaherwar/Case-Study-1-Danny-s-Diner/assets/141404143/2927bfa4-4439-4519-a3c5-3c5013734d32)

**Solution:** Customer A visited 4 times.
Customer B visited 6 times.
Customer C visited 2 times.

**3. What was the first item from the menu purchased by each customer?**
![image](https://github.com/snehapaherwar/Case-Study-1-Danny-s-Diner/assets/141404143/3783520b-d5b1-4e27-920b-797e6b2109ac)

**Solution:**
Customer A’s first order are curry and sushi.
Customer B’s first order is curry.
Customer C’s first order is ramen.

**4. What is the most purchased item on the menu and how many times was it purchased by all customers?**
![image](https://github.com/snehapaherwar/Case-Study-1-Danny-s-Diner/assets/141404143/d79895d1-380c-425d-87ee-cb7dd178035d)

**Solution:** The most purchased item on the menu is ramen which is 8 times.

**5. Which item was the most popular for each customer?**
![image](https://github.com/snehapaherwar/Case-Study-1-Danny-s-Diner/assets/141404143/b89f299b-fa72-46fc-8ac6-636d11d81621)

**Solution:** Each user may have more than 1 favorite item.
Answer:
Customer A and C’s favorite item is ramen.
Customer B enjoys all items on the menu. He/she is a true foodie.

**6. Which item was purchased first by the customer after they became a member?**
![image](https://github.com/snehapaherwar/Case-Study-1-Danny-s-Diner/assets/141404143/9ea7d77d-dd50-4102-b879-8e5000c4b133)

**Solution:** Customer A’s first order as a member is ramen.
Customer B’s first order as a member is sushi.

**7. Which item was purchased just before the customer became a member?**
![image](https://github.com/snehapaherwar/Case-Study-1-Danny-s-Diner/assets/141404143/b9a8037b-bc79-4509-94cf-261161485dd8)

**Solution:**
A’s last order is Curry and Sushi.
Both customers common last order before becoming members are sushi. That must have been a really good sushi.

**8. What is the total items and amount spent for each member before they became a member?**
![image](https://github.com/snehapaherwar/Case-Study-1-Danny-s-Diner/assets/141404143/a25e493a-276f-4d9f-84a8-1aa9c2588473)

**Solution:**
Before becoming members,
Customer A spent $25 on 2 items.
Customer B spent $40 on 3 items.

9. If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?
![image](https://github.com/snehapaherwar/Case-Study-1-Danny-s-Diner/assets/141404143/a854ca4f-6f73-49c5-b3ae-33269e6bb2b1)













