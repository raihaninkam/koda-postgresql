SELECT 
    o.*, 
    m.title as movie_title,
    ns.date as show_date,
    ns.time as show_time,
    c.cinema_name,
    s.seats_map,
    t.qr_code
FROM "ORDERS" o
JOIN "NOW_SHOWING" ns ON o.now_showing_id = ns.id
JOIN "MOVIES" m ON ns.movie_id = m.id
JOIN "ORDERS_CINEMA" oc ON o.id = oc.orders_id
JOIN "CINEMAS" c ON oc.cinema_id = c.id
JOIN "SEATS" s ON o.id = s.orders_id
JOIN "ORDERS_TICKET" ot ON o.id = ot.orders_id
JOIN "TICKET" t ON ot.ticket_id = t.id
WHERE o.users_id = 2
ORDER BY o.created_at DESC;
