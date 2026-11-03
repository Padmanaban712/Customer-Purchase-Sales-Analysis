# Python — Data Cleaning & Exploratory Data Analysis

## Overview
This part of the project uses Python and Pandas to inspect, prepare, and analyze the customer purchase dataset before performing further analysis.

## Tools & Libraries
- Python
- Pandas
- Matplotlib

## Data Preparation
The dataset was loaded into a Pandas DataFrame and examined using:
- `head()` — preview records
- `info()` — inspect columns and data types
- `describe()` — summarize numerical data
- `describe(include="object")` — summarize categorical data
- `isnull().sum()` — check missing values
- `duplicated().sum()` — check duplicate records
- `unique()` and `value_counts()` — inspect categorical values

## Data Cleaning
Missing values in the **Review Rating** column were filled using the median review rating within each **Category**.

```python
df["Review Rating"] = df.groupby("Category")["Review Rating"].transform(
    lambda x: x.fillna(x.median())
)
```

The updated dataset was exported as:

`customer_history_cleaned.csv`

## Exploratory Data Analysis (EDA)
The analysis explored:

### Customer Demographics
- Customer distribution by gender
- Gender-wise percentage
- Customer distribution visualization

### Sales Performance
- Total purchase amount by category
- Total purchase amount by product
- Top 10 products by sales

### Subscription Analysis
- Purchase record count by subscription status
- Total purchase amount by subscription status
- Average purchase amount by subscription status

## Visualizations
The Python analysis includes bar charts for:
- Customer distribution by gender
- Total sales by category
- Top products by sales

## Output
The cleaned dataset was saved as a CSV file for further analysis and dashboard development.

## Project File
[View Python Script](sales_data_data_cleaning.py)

