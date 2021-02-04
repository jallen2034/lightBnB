SELECT properties.id as id, properties.title as title, properties.cost_per_night as cost_per_night, start_date, avg(property_reviews.rating) as average_rating
FROM reservations
JOIN properties 
  ON reservations.property_id = properties.id
JOIN property_reviews 
  ON properties.id = property_reviews.property_id 
WHERE reservations.guest_id = 1 AND reservations.end_date < now()::date
GROUP BY properties.id, start_date
ORDER BY reservations.start_date
LIMIT 10;


