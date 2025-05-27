# 🛒 Customer Behavior SQL Analysis

This project analyzes customer behavior using SQL. It was designed to answer key business questions related to customer spending, product performance, and profitability. The data simulates real-world ecommerce scenarios with customers, orders, products, and order items.

---

## 📊 Project Objectives

1. How many unique customer do we have?
2. How many customers have placed at least one order?
3. Which customer has spent the most money overall?
4. What is the average order value per customer?
5. Which month had the highest number of orders?
6. What are the top 3 best-selling products by quantity?
7. Which product category is the most profitable?

---

## 🗂️ Data Structure

The project uses four tables:

- `customers`: Customer_id, Name, Join_date, Location
- `orders`: Order_id, Customer_id, Order_date, (Total_amount calculated)
- `order_items`: Item_id, Order_id, Product_id, Quantity, (Price_each calculated)
- `products`: Product_id, Name, Category, Price

The final queries used table joins and aggregation functions like `SUM`, `AVG`, and `GROUP BY` to extract business insights.

---

## 🧠 Key Findings

- The customer who spent the most: *Ines Inmett*
- Average order values vary significantly by customer.
- The month with the most orders was *January*.
- Top-selling products include *Sweet BBQ Dipping Sauce,Bike Helmet,Mediterranean Chickpea Salad*.
- The most profitable category overall was *Industrial*.

---

## 🛠 Tools Used

- SQL (PostgreSQL syntax)
- Manual dataset creation & schema design
- GitHub for version control and project sharing

---

## 📁 File Structure

- `queries/questions.sql`: All final queries used in the analysis
- `data/schema.png`: (Optional) Visual of database schema
- `README.md`: Project overview and insights

---

## 💬 Author

**Sthephany**  
Aspiring Data Analyst | Always learning  
*Connect with me on [LinkedIn](#)* *(https://www.linkedin.com/in/sthephany-ponce/)*

