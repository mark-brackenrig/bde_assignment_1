SELECT AVG(trip_distance*1.60934) as average, percentile_approx(trip_distance*1.60934, 0.5) as median, MIN(trip_distance*1.60934) as minimum,MAX(trip_distance*1.60934) as maximum , taxi_colour
FROM combined_data
GROUP BY taxi_colour