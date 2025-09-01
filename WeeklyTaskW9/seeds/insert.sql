INSERT INTO "USERS" (email, password, is_active, poin) VALUES
('andi@mail.com', '12345', TRUE, 100),
('budi@mail.com', '12345', TRUE, 50),
('citra@mail.com', '12345', FALSE, 20);
/* 2025-08-28 16:54:55 [13 ms] */ 
INSERT INTO "PROFILE" (id, first_name, last_name, phone_number, gender, profile_picture)
VALUES
(1, 'Andi', 'Saputra', '081234567890', 'L', 'andi.png'),
(2, 'Budi', 'Santoso', '081234567891', 'L', 'budi.png'),
(3, 'Citra', 'Lestari', '081234567892', 'P', 'citra.png');
/* 2025-08-28 16:54:55 [8 ms] */ 
INSERT INTO "DIRECTORS" (name) VALUES
('Christopher Nolan'),
('James Cameron'),
('Steven Spielberg');
/* 2025-08-28 16:55:32 [14 ms] */ 
INSERT INTO "MOVIES" (title, synopsis, duration_minutes, release_date, poster_image, directors_id, rating) VALUES
('Inception', 'Dream within a dream', 148, '2010-07-16', 'inception.jpg', 1, 9.0),
('Avatar', 'Humans vs Navi', 162, '2009-12-18', 'avatar.jpg', 2, 8.5),
('Jurassic Park', 'Dinosaurs revived', 127, '1993-06-11', 'jurassic.jpg', 3, 8.0);
/* 2025-08-28 16:55:33 [13 ms] */ 
INSERT INTO "CINEMAS" (cinema_name) VALUES
('XXI Plaza Indonesia'),
('CGV Pacific Place'),
('Cinepolis FX Sudirman');
/* 2025-08-28 16:55:36 [37 ms] */ 
INSERT INTO "LOCATION" (name) VALUES
(101),
(102),
(103);
/* 2025-08-28 16:55:37 [23 ms] */ 
INSERT INTO "NOW_SHOWING" (date, time, location_id, movie_id) VALUES
('2025-08-28', '19:00', 1, 1),
('2025-08-28', '20:00', 2, 2),
('2025-08-29', '18:30', 3, 3);
/* 2025-08-28 16:55:39 [15 ms] */ 
INSERT INTO "PAYMENT" (method) VALUES
('Credit Card'),
('OVO'),
('GoPay');
/* 2025-08-28 16:56:09 [22 ms] */ 
INSERT INTO "TICKET" (qr_code) VALUES
('QR001'),
('QR002'),
('QR003');
/* 2025-08-28 16:56:17 [13 ms] */ 
INSERT INTO "GENRES" (name) VALUES
('Action'),
('Sci-Fi'),
('Adventure');
/* 2025-08-28 16:56:19 [10 ms] */ 
INSERT INTO "CASTS" (name) VALUES
('Leonardo DiCaprio'),
('Sam Worthington'),
('Jeff Goldblum');
/* 2025-08-28 16:56:21 [14 ms] */ 
INSERT INTO "MOVIES_GENRE" (genres_id, movies_id) VALUES
(1, 1), -- Inception - Action
(2, 1), -- Inception - Sci-Fi
(2, 2), -- Avatar - Sci-Fi
(3, 3);
/* 2025-08-28 16:56:23 [13 ms] */ 
INSERT INTO "MOVIES_CAST" (casts_id, movies_id) VALUES
(1, 1), -- Leonardo - Inception
(2, 2), -- Sam - Avatar
(3, 3);
/* 2025-08-28 16:56:32 [8 ms] */ 
INSERT INTO "USERS" (email, password, is_active, poin) VALUES
('andi@mail.com', '12345', TRUE, 100),
('budi@mail.com', '12345', TRUE, 50),
('citra@mail.com', '12345', FALSE, 20);
/* 2025-08-28 16:58:26 [14 ms] */ 
INSERT INTO "ORDERS" (users_id, price, payment_id, "isPaid", now_showing_id) VALUES
(1, 50000, 1, TRUE, 1),
(2, 60000, 2, TRUE, 2),
(3, 55000, 3, FALSE, 3);
/* 2025-08-28 16:58:37 [23 ms] */ 
INSERT INTO "ORDERS_CINEMA" (orders_id, cinema_id) VALUES
(1, 1),
(2, 2),
(3, 3);
/* 2025-08-28 16:58:43 [19 ms] */ 
INSERT INTO "ORDERS_TICKET" (orders_id, ticket_id) VALUES
(1, 1),
(2, 2),
(3, 3);
/* 2025-08-28 16:58:45 [7 ms] */ 
INSERT INTO "SEATS" (seats_map, orders_id) VALUES
('A1', 1),
('B2', 2),
('C3', 3);