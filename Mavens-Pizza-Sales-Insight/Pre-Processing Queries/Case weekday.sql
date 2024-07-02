-- Assuming you have a table called "my_table" with a date column called "my_date" and a column called "weekday" that needs to be updated
-- USE pizza.dbo.orders

-- Update "weekday" column based on "my_date" column

UPDATE pizza.dbo.orders
SET weekday = CASE 
    WHEN DATEPART(weekday, date) = 1 THEN 'Sunday'
    WHEN DATEPART(weekday, date) = 2 THEN 'Monday'
    WHEN DATEPART(weekday, date) = 3 THEN 'Tuesday'
    WHEN DATEPART(weekday, date) = 4 THEN 'Wednesday'
    WHEN DATEPART(weekday, date) = 5 THEN 'Thursday'
    WHEN DATEPART(weekday, date) = 6 THEN 'Friday'
    WHEN DATEPART(weekday, date) = 7 THEN 'Saturday'
END;
