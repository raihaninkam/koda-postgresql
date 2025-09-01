UPDATE "PROFILE" 
SET 
    first_name = 'raihan',
    last_name = 'inkam',
    phone_number = '08111727072',
    profile_picture = 'raihan.png',
    updated_at = CURRENT_TIMESTAMP
WHERE id = 2;

SELECT * from "PROFILE" where id = 2