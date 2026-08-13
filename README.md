# 🚕 Uber Ride Analysis

A data analytics project using **MySQL, Excel, and Power BI** to analyze Uber ride bookings, cancellations, customer behavior, vehicle performance, and revenue.

## 📌 Project Overview

This project analyzes **9,996 unique Uber ride bookings** from the cleaned dataset. The analysis covers ride success, customer and driver cancellations, vehicle performance, ratings, booking value, incomplete rides, and pickup-location performance.

**Workflow:** Raw Data → Data Cleaning → SQL Analysis → Power BI Dashboard → Business Insights

## 🎯 Business Objectives

- Measure successful ride performance
- Understand customer and driver cancellation patterns
- Identify top customers by ride volume
- Compare vehicle types by distance, ratings, and revenue
- Analyze high-value rides
- Identify common incomplete-ride reasons
- Find top pickup locations by successful ride volume and revenue

## 🗂️ Dataset

| Metric | Value |
|---|---:|
| Raw Bookings | 10,000 |
| Cleaned Unique Bookings | 9,996 |
| Successful Bookings | 6,228 |
| Driver Cancellations | 1,807 |
| Incomplete Bookings | 1,249 |
| Customer Cancellations | 712 |
| Vehicle Types | 6 |

The original dataset contained duplicate booking IDs. After data validation, **4 duplicate records were removed**, leaving 9,996 unique bookings for analysis.

### Booking Statuses

- Success
- Cancelled by Driver
- Cancelled by Customer
- Incomplete

## 🛠️ Tools & Skills

**Tools:**

- MySQL
- Microsoft Excel
- Power BI

**SQL techniques:**

- Data validation
- Filtering and aggregation
- GROUP BY
- CASE statements
- Subqueries
- COUNT, SUM, AVG, MIN, MAX
- Percentage calculations
- Date and time analysis
- Customer analysis
- Vehicle performance analysis
- Revenue analysis

**Power BI:**

- KPI reporting
- Interactive dashboarding
- Vehicle and category comparisons
- Cancellation analysis
- Location analysis
- Business-focused data visualization

## 🔍 SQL Analysis

The project contains **10 core business questions** covering:

1. Successful bookings
2. Average ride distance by vehicle type
3. Customer cancellation percentage
4. Top 5 customers by ride count
5. Driver cancellation reasons
6. Customer vs. driver ratings by vehicle type
7. Revenue performance by vehicle type
8. Top 10 highest-value successful rides
9. Incomplete rides by reason
10. Top pickup locations by successful ride volume and revenue

Additional SQL analysis covers overall booking-status distribution, cancellation rates, revenue contribution by vehicle type, and pickup-location performance.

## 📊 Key Business Areas

### Ride Performance

Analyze successful rides and compare ride distance across vehicle types.

### Cancellation Analysis

Identify customer cancellation levels and the main reasons behind driver cancellations.

### Customer Behavior

Identify the customers generating the highest number of bookings.

### Vehicle Performance

Compare vehicle types using ride distance, customer ratings, driver ratings, successful rides, and booking value.

### Revenue

Analyze total and average booking value for successful rides and identify high-value bookings.

### Location Performance

Identify pickup locations generating the highest successful ride volume and booking value.

## 📸 Power BI Dashboard

Power BI screenshots can be added here to showcase the dashboard and key business insights.

## 📁 Repository Structure

```text
uber-ride-analysis/
│
├── README.md
├── data/
│   └── uber_data.csv
├── sql/
│   └── uber_ride_analysis.sql
└── screenshots/
    ├── vehicle-performance.png
    ├── cancellation-analysis.png
    ├── revenue-analysis.png
    └── location-analysis.png
```

## 💡 Business Value

This project demonstrates how raw ride-booking data can be transformed into **validated data, SQL-based analysis, interactive Power BI reporting, and actionable business insights**.

The analysis can support decisions around vehicle allocation, cancellation reduction, customer retention, operational capacity, and revenue optimization.

## 👤 Author

**Rajan Kumar**  
Data Analyst | SQL | Power BI | Excel | Python

Open to Data Analyst, Business Analyst, and BI Analyst opportunities.
