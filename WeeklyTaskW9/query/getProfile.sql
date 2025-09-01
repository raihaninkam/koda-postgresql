SELECT u.*, p.*
FROM "USERS" u
JOIN "PROFILE" p ON u.id = p.id
WHERE u.id = 2;
