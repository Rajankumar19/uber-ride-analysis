# 🚕 Uber Ride Analysis

A business-focused data analytics project using **MySQL, Microsoft Excel, and Power BI** to analyze ride bookings, vehicle performance, revenue, cancellations, customer behavior, service quality, and pickup-location performance.

## 📌 Project Overview

This project analyzes **10,000 Uber ride-booking records** from the project dataset.

The workflow follows a practical analytics pipeline:

**Excel → Data Validation → MySQL SQL Analysis → Power BI Dashboard → Business Insights**

The project combines structured SQL analysis with an interactive five-page Power BI dashboard to understand operational performance and revenue drivers.

## 🎯 Business Objectives

- Measure successful booking performance
- Understand customer and driver cancellation patterns
- Identify high-volume customers
- Compare vehicle types by booking value and ride distance
- Evaluate customer and driver ratings
- Identify high-value bookings
- Analyze incomplete bookings and their reasons
- Identify high-performing pickup locations
- Compare revenue contribution across vehicle types

## 🗂️ Dataset

| Metric | Value |
|---|---:|
| Total Booking Records | 10,000 |
| Successful Bookings | 6,231 |
| Driver Cancellations | 1,808 |
| Incomplete Bookings | 1,249 |
| Customer Cancellations | 712 |

### Vehicle Types

The dataset contains multiple vehicle categories used for performance comparisons in SQL and Power BI.

### Booking Statuses

- Success
- Cancelled by Driver
- Cancelled by Customer
- Incomplete

### Data Validation

The dataset was checked for duplicate booking IDs and other data-quality issues before analysis. Repeated booking IDs were reviewed rather than removed automatically, since the associated records can represent distinct booking observations.

## 🛠️ Tools & Skills

### Tools

- Microsoft Excel
- MySQL
- Power BI

### SQL Skills

- Data validation
- Filtering
- `GROUP BY`
- Aggregate functions
- `CASE` statements
- Subqueries
- `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`
- Percentage calculations
- Customer analysis
- Vehicle performance analysis
- Cancellation analysis
- Revenue analysis
- Location analysis

### Power BI Skills

- KPI reporting
- Interactive dashboard design
- Vehicle performance analysis
- Revenue analysis
- Cancellation analysis
- Rating analysis
- Trend analysis
- Business-focused visualization

## 🔍 SQL Analysis

The project contains **15 business-focused SQL analyses**:

1. Retrieve successful bookings
2. Calculate average ride distance by vehicle type
3. Calculate customer cancellation percentage
4. Identify the top 5 customers by booking volume
5. Analyze driver cancellation reasons
6. Compare customer and driver ratings by vehicle type
7. Analyze revenue performance by vehicle type
8. Identify the top 10 highest-value successful bookings
9. Analyze incomplete bookings by reason
10. Identify top pickup locations by successful booking volume and revenue
11. Analyze overall booking performance by status
12. Compare success and cancellation performance by vehicle type
13. Calculate the overall driver cancellation rate
14. Calculate revenue contribution by vehicle type
15. Identify top pickup locations by total booking volume

## 📊 Power BI Dashboard

The Power BI report contains five pages designed to provide an interactive business view of the Uber dataset.

### 1. Overall

Provides a high-level view of total bookings, successful bookings, cancelled bookings, booking status distribution, and booking volume over time.

![Power BI Overall](screenshots/power-bi/overall.png)

### 2. Vehicle Type

Compares vehicle categories using booking value, successful booking value, average distance travelled, and total distance travelled.

![Power BI Vehicle Type](screenshots/power-bi/vehicle-type.png)

### 3. Revenue

Analyzes booking value across payment types, high-value customers, and booking-value trends over time.

![Power BI Revenue](screenshots/power-bi/revenue.png)

### 4. Cancellation

Examines customer and driver cancellation patterns and helps identify operational areas requiring attention.

![Power BI Cancellation](screenshots/power-bi/cancellation.png)

### 5. Ratings

Compares customer and driver ratings across vehicle types to evaluate service quality.

![Power BI Ratings](screenshots/power-bi/ratings.png)

## 🔎 SQL Analysis Screenshots

Selected SQL analyses are included to demonstrate the queries and their results.

### Revenue by Vehicle

![Revenue by Vehicle](screenshots/sql/revenue-by-vehicle.png)

### Pickup Location Performance

![Pickup Location Performance](screenshots/sql/pickup-location-performance.png)

### Vehicle Ratings

![Vehicle Ratings](screenshots/sql/vehicle-ratings.png)

### Driver Cancellation Reasons

![Driver Cancellation Reasons](screenshots/sql/driver-cancellation-reasons.png)

### Highest-Value Rides

![Highest-Value Rides](screenshots/sql/highest-value-rides.png)

## 💡 Business Value

The project demonstrates how raw ride-booking data can be transformed into **validated information, structured SQL analysis, interactive reporting, and actionable business insights**.

The analysis can support decisions related to:

- Vehicle allocation
- Cancellation reduction
- Customer retention
- Service-quality improvement
- Operational capacity
- Revenue optimization
- Pickup-location performance

## 📁 Repository Structure

```text
uber-ride-analysis/
│
├── README.md
│
├── data/
│   └── uber_data.xlsx
│
├── sql/
│   └── uber_ride_analysis.sql
│
└── screenshots/
    │
    ├── power-bi/
    │   ├── overall.png
    │   ├── vehicle-type.png
    │   ├── revenue.png
    │   ├── cancellation.png
    │   └── ratings.png
    │
    └── sql/
        ├── revenue-by-vehicle.png
        ├── pickup-location-performance.png
        ├── vehicle-ratings.png
        ├── driver-cancellation-reasons.png
        └── highest-value-rides.png
```

## 👤 Author

**Rajan Kumar**  
Data Analyst | SQL | Power BI | Excel | Python

Open to Data Analyst, Business Analyst, and BI Analyst opportunities.
