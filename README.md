# 🍜Case-Study-1-Danny's Diner

![image](https://github.com/snehapaherwar/Case-Study-1-Danny-s-Diner/assets/141404143/b18d8c1a-1194-41f6-ae1b-883695431b9b)

# Data Source
[Link for downloading data](https://8weeksqlchallenge.com/case-study-1/)

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

**9. If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?**
![image](https://github.com/snehapaherwar/Case-Study-1-Danny-s-Diner/assets/141404143/6714495f-ca01-4050-a2a9-c313d5c9d6de)

**Solution:** 
The total points for Customers A, B and C are $860, $940 and $360.

**10. In the first week after a customer joins the program (including their join date) they earn 2x points on all items, # not just sushi - how many points do customer A and B have at the end of January?**
![image](https://github.com/snehapaherwar/Case-Study-1-Danny-s-Diner/assets/141404143/97ece98b-c147-49db-a102-5b96b193b860)

**Solution:**
Customer A has 1,370 points.
Customer B has 940 points.

### Bonus Questions:
The following questions are related creating basic data tables that Danny and his team can use to quickly derive insights without needing to join the underlying tables using SQL. 

**1. Recreate the following table output using the available data:**
![image](https://github.com/snehapaherwar/Case-Study-1-Danny-s-Diner/assets/141404143/585e8375-b5fd-4b3f-a034-3c4df65d2492)

**2. Danny also requires further information about the ranking of customer products, but he purposely does not need the ranking for non-member purchases so he expects null ranking values for the records when customers are not yet part of the loyalty program.**
![image](https://github.com/snehapaherwar/Case-Study-1-Danny-s-Diner/assets/141404143/ed243d2b-2fc0-4416-8dae-2f5956bb7185)

## Insights
From the analysis, we discover a few interesting insights that would be certainly useful for Danny.
+ Customer B is the most frequent visitor with 6 visits in Jan 2021.
+ Danny’s Diner’s most popular item is ramen, followed by curry and sushi.
+ Customer A and C loves ramen whereas Customer B seems to enjoy sushi, curry and ramen equally.
+ Customer A is the 1st member of Danny’s Diner and his first order is curry. Gotta fulfill his curry cravings!
+ The last item ordered by Customers A and B before they became members are sushi and curry. Does it mean both of these items are the deciding factor? It must be really delicious for them to sign up as members!
+ Before they became members, both Customers A and B spent $25 and $40.
+ Throughout Jan 2021, their points for Customer A: 860, Customer B: 940 and Customer C: 360.
+ Assuming that members can earn 2x a week from the day they became a member with bonus 2x points for sushi, Customer A has 660 points and Customer B has 340 by the end of Jan 2021.

## Conclusion

+ This project was a hands-on learning experience that enhanced my SQL skills and analytical abilities. 
+ I gained proficiency in using SQL to explore and analyse large datasets, extract relevant information, and draw valuable insights. 

















