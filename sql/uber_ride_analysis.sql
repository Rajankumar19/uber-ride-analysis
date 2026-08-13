CREATE DATABASE IF NOT EXISTS uber;
USE uber;

-- DATA VALIDATION

-- 1. Check total records
SELECT COUNT(*) AS total_bookings
FROM data;

-- 2. Check booking status distribution
SELECT
    Booking_Status,
    COUNT(*) AS total_bookings
FROM data
GROUP BY Booking_Status
ORDER BY total_bookings DESC;

-- 3. Check available vehicle types
SELECT DISTINCT Vehicle_Type
FROM data
ORDER BY Vehicle_Type;

-- 4. Check Booking IDs that appear more than once.
-- These records are retained because the repeated IDs represent different booking records with different attributes.
SELECT
    Booking_ID,
    COUNT(*) AS record_count
FROM data
GROUP BY Booking_ID
HAVING COUNT(*) > 1
ORDER BY record_count DESC;

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
        100.0 * COUNT(*) / (SELECT COUNT(*) FROM data),
        2
    ) AS customer_cancellation_percentage
FROM data
WHERE Booking_Status = 'Cancelled by Customer';

-- Q4. Identify the top 5 customers by booking volume
SELECT
    Customer_ID,
    COUNT(*) AS total_bookings
FROM data
GROUP BY Customer_ID
ORDER BY total_bookings DESC
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

-- Q7. Analyze revenue performance by vehicle type for successful bookings
SELECT
    Vehicle_Type,
    COUNT(*) AS successful_bookings,
    ROUND(SUM(Booking_Value), 2) AS total_booking_value,
    ROUND(AVG(Booking_Value), 2) AS avg_booking_value
FROM data
WHERE Booking_Status = 'Success'
GROUP BY Vehicle_Type
ORDER BY total_booking_value DESC;

-- Q8. Identify the top 10 highest-value successful bookings
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

-- Q9. Analyze incomplete bookings by reason
SELECT
    Incomplete_Rides_Reason AS incomplete_reason,
    COUNT(*) AS incomplete_bookings
FROM data
WHERE Booking_Status = 'Incomplete'
  AND Incomplete_Rides_Reason IS NOT NULL
GROUP BY Incomplete_Rides_Reason
ORDER BY incomplete_bookings DESC;

-- Q10. Identify the top 10 pickup locations by successful booking volume and revenue
SELECT
    Pickup_Location,
    COUNT(*) AS successful_bookings,
    ROUND(SUM(Booking_Value), 2) AS total_booking_value
FROM data
WHERE Booking_Status = 'Success'
GROUP BY Pickup_Location
ORDER BY successful_bookings DESC, total_booking_value DESC
LIMIT 10;

-- Q11. Analyze overall booking performance by status
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

-- Q12. Compare success and cancellation rates by vehicle type
SELECT
    Vehicle_Type,
    COUNT(*) AS total_bookings,
    SUM(CASE
        WHEN Booking_Status = 'Success' THEN 1
        ELSE 0
    END) AS successful_bookings,
    SUM(CASE
        WHEN Booking_Status = 'Cancelled by Customer' THEN 1
        ELSE 0
    END) AS customer_cancellations,
    SUM(CASE
        WHEN Booking_Status = 'Cancelled by Driver' THEN 1
        ELSE 0
    END) AS driver_cancellations,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN Booking_Status = 'Success' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS success_rate
FROM data
GROUP BY Vehicle_Type
ORDER BY success_rate DESC;

-- Q13. Calculate the overall driver cancellation rate
SELECT
    ROUND(
        100.0 * SUM(
            CASE
                WHEN Booking_Status = 'Cancelled by Driver'
                THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS driver_cancellation_rate
FROM data;

-- Q14. Calculate revenue contribution by vehicle type for successful bookings
SELECT
    Vehicle_Type,
    ROUND(SUM(Booking_Value), 2) AS total_booking_value,
    ROUND(
        100.0 * SUM(Booking_Value) /
        (
            SELECT SUM(Booking_Value)
            FROM data
            WHERE Booking_Status = 'Success'
        ),
        2
    ) AS revenue_percentage
FROM data
WHERE Booking_Status = 'Success'
GROUP BY Vehicle_Type
ORDER BY total_booking_value DESC;

-- Q15. Identify the top pickup locations by total booking volume
SELECT
    Pickup_Location,
    COUNT(*) AS total_bookings
FROM data
GROUP BY Pickup_Location
ORDER BY total_bookings DESC
LIMIT 10;
