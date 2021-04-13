SELECT COUNT(*) as trips, MONTH(pickup_date) as month, YEAR(pickup_date) as year
FROM combined_data
GROUP BY MONTH(pickup_date), YEAR(pickup_date)
ORDER BY YEAR(pickup_date) desc,  MONTH(pickup_date) desc