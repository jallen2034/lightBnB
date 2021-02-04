-- insert data into users table
-- https://www.tutorialspoint.com/sql/sql-insert-query.htm
INSERT INTO users (name, email, password) 
VALUES ('Jacob Allen', 'jallen@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Jane Smith', 'jane@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Hank Scorpio', 'hank@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Walter White', 'saymyname@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

-- insert data into properties table
INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms,
number_of_bedrooms, country, street, city, province, post_code, active) 
VALUES (1, 'A House', 'Pretty cool house yee.', 'https://i.pinimg.com/originals/9e/f1/84/9ef1846ef8c630d6560dbb74bfa3c4f7.jpg', 'https://i.pinimg.com/originals/a0/a1/8d/a0a18d124c83e7830fe4592a82bf71c9.jpg',
200, 2, 3, 6, 'Canada', 'View Street', 'Vancouver', 'B.C', 'V5S-1C2' , true),
(1, 'Shine Twenty', 'Come get it', 'https://i.pinimg.com/originals/9e/f1/84/9ef1846ef8c630d6560dbb74bfa3c4f7.jpg', 'https://i.pinimg.com/originals/a0/a1/8d/a0a18d124c83e7830fe4592a82bf71c9.jpg',
110, 1, 2, 5, 'Canada', 'View Street', 'Vancouver', 'B.C', 'V5S-1C2' , true),
(2, 'Black corner', 'Another cool house', 'https://i.pinimg.com/originals/9e/f1/84/9ef1846ef8c630d6560dbb74bfa3c4f7.jpg', 'https://i.pinimg.com/originals/a0/a1/8d/a0a18d124c83e7830fe4592a82bf71c9.jpg',
240, 1, 6, 8, 'Canada', 'View Street', 'Vancouver', 'B.C', 'V5S-1C2' , true);

-- insert data into reservations table
INSERT INTO reservations (guest_id, property_id, start_date, end_date) 
VALUES (2, 3, '2018-09-11', '2018-09-26'),
(2, 2, '2019-01-04', '2019-02-01'),
(1, 1, '2021-10-01', '2021-10-14');

-- insert data into reservations table
INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (2, 1, 1, 5, 'message'),
(1, 1, 1, 5, 'message'),
(2, 2, 2, 5, 'message'),
(2, 3, 3, 5, 'message');