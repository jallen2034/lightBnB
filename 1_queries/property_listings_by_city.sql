SELECT properties.id as property_id, title, cost_per_night, avg(property_reviews.rating) as average
FROM properties
JOIN property_reviews
  ON properties.id = property_reviews.property_id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night DESC
LIMIT 10;

