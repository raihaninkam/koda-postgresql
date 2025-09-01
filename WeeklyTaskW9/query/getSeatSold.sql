SELECT s.seats_map, ns.id as showing_id
FROM "SEATS" s
JOIN "ORDERS" o ON s.orders_id = o.id
JOIN "NOW_SHOWING" ns ON o.now_showing_id = ns.id
WHERE ns.id = 1 AND o."isPaid" = TRUE;