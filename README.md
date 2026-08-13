🚕 Uber Ride Analysis

A data analytics project using MySQL, Excel, and Power BI to analyze Uber ride bookings, cancellations, customer behavior, vehicle performance, ratings, locations, and revenue.

📌 Project Overview

This project analyzes 10,000 Uber ride-booking records from the provided dataset.

The analysis covers:

Successful bookings

Customer and driver cancellations

Vehicle performance

Customer and driver ratings

Booking value and revenue contribution

Incomplete rides

Pickup-location performance

Customer booking behavior

Workflow: Raw Data → Data Validation → SQL Analysis → Power BI Dashboard → Business Insights

🎯 Business Objectives

Measure successful ride performance

Understand customer and driver cancellation patterns

Identify high-volume customers

Compare vehicle types by distance, ratings, booking volume, and revenue

Identify high-value bookings

Understand common incomplete-ride reasons

Identify high-performing pickup locations

🗂️ Dataset

Metric

Value

Total Booking Records

10,000

Successful Bookings

6,231

Driver Cancellations

1,808

Incomplete Bookings

1,249

Customer Cancellations

712

Vehicle Types

6

Vehicle Types

Auto

Bike Lite

Auto Sharing

Bike

Cab Economy

Cab Premium

Booking Statuses

Success

Cancelled by Driver

Cancelled by Customer

Incomplete

Data Validation Note

The dataset contains 4 Booking IDs that appear more than once. These records were not removed, because the repeated IDs correspond to different booking records with different dates, customers, statuses, locations, or booking values.

This was treated as a data-quality observation rather than automatically deleting potentially valid records.

🛠️ Tools & Skills

Tools

MySQL

Microsoft Excel

Power BI

SQL Techniques

Data validation

Filtering

GROUP BY

Aggregate functions

CASE statements

Subqueries

COUNT, SUM, AVG, MIN, MAX

Percentage calculations

Customer analysis

Vehicle performance analysis

Cancellation analysis

Revenue analysis

Location analysis

Power BI

KPI reporting

Interactive dashboarding

Vehicle performance analysis

Revenue analysis

Cancellation analysis

Rating analysis

Location analysis

Business-focused visualization

🔍 SQL Analysis

The project contains 15 business-focused SQL analyses:

Retrieve successful bookings

Average ride distance by vehicle type

Customer cancellation percentage

Top 5 customers by booking volume

Driver cancellation reasons

Customer vs. driver ratings by vehicle type

Revenue performance by vehicle type

Top 10 highest-value successful bookings

Incomplete bookings by reason

Top pickup locations by successful booking volume and revenue

Overall booking performance by status

Success and cancellation performance by vehicle type

Overall driver cancellation rate

Revenue contribution by vehicle type

Top pickup locations by total booking volume

📊 Key Business Areas

🚗 Vehicle Performance

Compare vehicle types using ride distance, customer ratings, driver ratings, successful booking volume, and booking value.

❌ Cancellation Analysis

Identify the scale and reasons behind customer and driver cancellations.

👥 Customer Behavior

Identify customers with the highest booking volume and analyze high-value bookings.

💰 Revenue Analysis

Measure total and average booking value for successful bookings and compare revenue contribution across vehicle types.

📍 Location Performance

Identify pickup locations generating the highest successful booking volume and booking value.

⭐ Service Quality

Compare customer and driver ratings across vehicle types.

📸 Power BI Dashboard

The Power BI analysis is presented through dashboard screenshots covering key business areas.

Revenue by Vehicle



Pickup Location Performance



Vehicle Ratings



Driver Cancellation Reasons



Highest-Value Bookings



📁 Repository Structure

uber-ride-analysis/
│
├── README.md
│
├── data/
│   └── uber_data.csv
│
├── sql/
│   └── uber_ride_analysis.sql
│
└── screenshots/
    ├── revenue-by-vehicle.png
    ├── pickup-location-performance.png
    ├── vehicle-ratings.png
    ├── driver-cancellation-reasons.png
    └── highest-value-rides.png

💡 Business Value

This project demonstrates how raw ride-booking data can be transformed into validated data, SQL-based analysis, interactive Power BI reporting, and actionable business insights.

The analysis can support decisions around:

Vehicle allocation

Cancellation reduction

Customer retention

Operational capacity

Service quality

Revenue optimization

Pickup-location performance

👤 Author

Rajan Kumar
Data Analyst | SQL | Power BI | Excel | Python

Open to Data Analyst, Business Analyst, and BI Analyst opportunities.
Open to Data Analyst, Business Analyst, and BI Analyst opportunities.
