(SELECT 'Under 5 Mins' as duration, AVG(total_amount*3600/trip_duration) as hourly_rate
FROM combined_data
WHERE trip_duration < 60*5)
UNION
(SELECT '5-10 mins' as duration, AVG(total_amount*3600/trip_duration) as hourly_rate
FROM combined_data
WHERE trip_duration >= 60*5
AND trip_duration < 60*10)
UNION
(SELECT '10 to 20 mins' as duration, AVG(total_amount*3600/trip_duration) as hourly_rate
FROM combined_data
WHERE trip_duration >= 60*10
AND trip_duration < 60*20)
UNION
(SELECT '20 to 30 mins' as duration, AVG(total_amount*3600/trip_duration) as hourly_rate
FROM combined_data
WHERE trip_duration >= 60*20
AND trip_duration < 60*30)
UNION
(SELECT 'At least 30 mins' as duration, AVG(total_amount*3600/trip_duration) as hourly_rate
FROM combined_data
WHERE trip_duration >= 60*30)
