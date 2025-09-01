SELECT u.id, u.email, p.first_name, p.last_name 
FROM "USERS" u
JOIN "PROFILE" p ON u.id = p.id
WHERE u.email = 'andi@mail.com' AND u.password = '12345';