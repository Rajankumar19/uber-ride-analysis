CREATE DATABASE IF NOT EXISTS uber;
USE uber;

-- DATA VALIDATION --

-- Check total records
SELECT COUNT(*) AS total_bookings
FROM data;

-- Check booking statuses
SELECT
    Booking_Status,
    COUNT(*) AS total_bookings
FROM data
GROUP BY Booking_Status
ORDER BY total_bookings DESC;

-- Check vehicle types
SELECT DISTINCT Vehicle_Type
FROM data
ORDER BY Vehicle_Type;

-- Check duplicate Booking IDs
SELECT
    Booking_ID,
    COUNT(*) AS duplicate_count
FROM data
GROUP BY Booking_ID
HAVING COUNT(*) > 1;

-- Q1. Retrieve all successful bookings
SELECT *
FROM data
WHERE Booking_Status = 'Success';

-- Q2. Calculate the average ride distance for each vehicle type
SELECT
    Vehicle_Type,
    ROUND(AVG(Ride_Distance), 2) AS avg_ride_distance
FROM data
GROUP BY Vehicle_Type
ORDER BY avg_ride_distance DESC;

-- Q3. Calculate the total number and percentage of bookings cancelled by customers
SELECT
    COUNT(*) AS customer_cancelled_bookings,
    ROUND(
        100.0 * COUNT(*) /
        (SELECT COUNT(*) FROM data),
        2
    ) AS customer_cancellation_percentage
FROM data
WHERE Booking_Status = 'Cancelled by Customer';

-- Q4. Identify the top 5 customers by number of rides
SELECT
    Customer_ID,
    COUNT(*) AS total_rides
FROM data
GROUP BY Customer_ID
ORDER BY total_rides DESC
LIMIT 5;

-- Q5. Find the top reasons for driver cancellations
SELECT
    Cancelled_by_Driver_Reason AS cancellation_reason,
    COUNT(*) AS total_cancellations
FROM data
WHERE Booking_Status = 'Cancelled by Driver'
  AND Cancelled_by_Driver_Reason IS NOT NULL
GROUP BY Cancelled_by_Driver_Reason
ORDER BY total_cancellations DESC;

-- Q6. Calculate average customer and driver ratings for each vehicle type
SELECT
    Vehicle_Type,
    ROUND(AVG(Customer_Rating), 2) AS avg_customer_rating,
    ROUND(AVG(Driver_Ratings), 2) AS avg_driver_rating
FROM data
GROUP BY Vehicle_Type
ORDER BY avg_customer_rating DESC;

-- Q7. Analyze revenue performance by vehicle type for successful rides
SELECT
    Vehicle_Type,
    COUNT(*) AS successful_rides,
    ROUND(SUM(Booking_Value), 2) AS total_booking_value,
    ROUND(AVG(Booking_Value), 2) AS avg_booking_value
FROM data
WHERE Booking_Status = 'Success'
GROUP BY Vehicle_Type
ORDER BY total_booking_value DESC;

-- Q8. Identify the top 10 highest-value successful rides
SELECT
    Booking_ID,
    Customer_ID,
    Vehicle_Type,
    Pickup_Location,
    Drop_Location,
    Booking_Value
FROM data
WHERE Booking_Status = 'Success'
ORDER BY Booking_Value DESC
LIMIT 10;

-- Q9. Analyze incomplete rides by reason
SELECT
    Incomplete_Rides_Reason AS incomplete_reason,
    COUNT(*) AS incomplete_rides
FROM data
WHERE Booking_Status = 'Incomplete'
  AND Incomplete_Rides_Reason IS NOT NULL
GROUP BY Incomplete_Rides_Reason
ORDER BY incomplete_rides DESC;

-- Q10. Identify the top 10 pickup locations by successful ride volume and calculate revenue generated
SELECT
    Pickup_Location,
    COUNT(*) AS successful_rides,
    ROUND(SUM(Booking_Value), 2) AS total_booking_value
FROM data
WHERE Booking_Status = 'Success'
GROUP BY Pickup_Location
ORDER BY successful_rides DESC, total_booking_value DESC
LIMIT 10;

-- Q11. Overall booking performance by status
SELECT
    Booking_Status,
    COUNT(*) AS total_bookings,
    ROUND(
        100.0 * COUNT(*) / (SELECT COUNT(*) FROM data),
        2
    ) AS booking_percentage
FROM data
GROUP BY Booking_Status
ORDER BY total_bookings DESC;


-- Q12. What is the success rate and cancellation rate for each vehicle type?
SELECT
    Vehicle_Type,
    COUNT(*) AS total_bookings,
    SUM(CASE WHEN Booking_Status = 'Success' THEN 1 ELSE 0 END) AS successful_bookings,
    SUM(CASE WHEN Booking_Status = 'Cancelled by Customer' THEN 1 ELSE 0 END) AS customer_cancellations,
    SUM(CASE WHEN Booking_Status = 'Cancelled by Driver' THEN 1 ELSE 0 END) AS driver_cancellations,
    ROUND(
        100.0 * SUM(CASE WHEN Booking_Status = 'Success' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS success_rate
FROM data
GROUP BY Vehicle_Type
ORDER BY success_rate DESC;


-- Q13. Driver cancellation rate
SELECT
    ROUND(
        100.0 * SUM(
            CASE
                WHEN Booking_Status = 'Cancelled by Driver'
                THEN 1 ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS driver_cancellation_rate
FROM data;


-- Q14. Revenue contribution by vehicle type for successful rides
SELECT
    Vehicle_Type,
    ROUND(SUM(Booking_Value), 2) AS total_booking_value,
    ROUND(
        100.0 * SUM(Booking_Value) /
        (SELECT SUM(Booking_Value)
         FROM data
         WHERE Booking_Status = 'Success'),
        2
    ) AS revenue_percentage
FROM data
WHERE Booking_Status = 'Success'
GROUP BY Vehicle_Type
ORDER BY total_booking_value DESC;


-- Q15. Top pickup locations by all booking volume
SELECT
    Pickup_Location,
    COUNT(*) AS total_bookings
FROM data
GROUP BY Pickup_Location
ORDER BY total_bookings DESC
LIMIT 10;