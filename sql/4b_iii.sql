SELECT AVG(trip_distance*1.60934*3600/trip_duration) as average, percentile_approx(trip_distance*1.60934*3600/trip_duration, 0.5) as median, MIN(trip_distance*1.60934*3600/trip_duration) as minimum,MAX(trip_distance*1.60934*3600/trip_duration) as maximum , taxi_colour
FROM combined_data
GROUP BY taxi_colour