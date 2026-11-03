# MySQL — Customer Purchase & Sales Analysis

## Overview
This part of the project uses MySQL to analyze customer purchase records and answer business-related questions about sales performance, products, customer behavior, and purchasing patterns.

## Tools & Technologies
- MySQL
- SQL

## Database Setup
The database was created and selected using:

```sql
CREATE DATABASE sales_analysis;
USE sales_analysis;
```

The analysis was performed on the `customer_history` table.

## Business Questions & SQL Analysis

### 1. Sales Performance
- What is the total sales revenue?
- What is the average purchase amount?
- Which product categories generate the highest sales?
- Which categories have the highest average purchase amount?
- Which products have the highest and lowest sales?

### 2. Customer Demographics
- Which gender generates higher sales?
- Which gender has a higher average purchase amount?
- What is the average customer age?
- What is the average purchase amount for customers aged 40 and above?

### 3. Location Analysis
- Which locations generate the highest sales?
- What are the top 10 locations by sales?

### 4. Subscription, Discounts & Promotions
- Do subscribed customers generate higher sales?
- Do subscribed customers have a higher average purchase amount?
- Do customers using discounts spend more?
- How many customers use promo codes?
- Do promo-code users have a higher average purchase amount?

### 5. Payment & Shipping Analysis
- Which payment method is most popular?
- Which payment method generates the highest sales?
- Which shipping method is most popular?
- Which shipping method generates the highest sales?

### 6. Customer Purchase Behavior
- Which purchase frequency generates the highest sales?
- Which customers spend more than the average purchase amount?
- Who is the highest-spending customer?
- How many high-value transactions were made?
- Are repeat customers spending more than one-time customers?
- What percentage of transactions come from repeat customers?

### 7. Customer Segmentation
Customers were categorized based on purchase amount:
- **High Value:** Purchase
