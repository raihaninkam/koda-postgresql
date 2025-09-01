-- First create the order
INSERT INTO "ORDERS" (users_id, price, payment_id, now_showing_id)
VALUES (2, 60000, 2, 1)


-- Then add cinema relation
INSERT INTO "ORDERS_CINEMA" (orders_id, cinema_id)
VALUES (4, 2);

-- Create ticket
INSERT INTO "TICKET" (qr_code)
VALUES ('generated_qr_code')


-- Link ticket to order
INSERT INTO "ORDERS_TICKET" (orders_id, ticket_id)
VALUES (4, 1);

-- Add seats
INSERT INTO "SEATS" (seats_map, orders_id)
VALUES ('seat_number', 4);
