CREATE TABLE "USERS" (
  "id" SERIAL PRIMARY KEY,
  "email" VARCHAR(50) NOT NULL,
  "password" VARCHAR(50) NOT NULL,
  "poin" FLOAT DEFAULT 0
);
/* 2025-08-28 16:54:06 [17 ms] */ 
CREATE TABLE "PROFILE" (
  "id" INT PRIMARY KEY,
  "first_name" VARCHAR(50) NOT NULL,
  "last_name" VARCHAR(50) NOT NULL,
  "phone_number" VARCHAR(20) NOT NULL,
  "profile_picture" VARCHAR(100),
  "created_at" TIMESTAMP DEFAULT NOW(),
  "updated_at" TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY ("id") REFERENCES "USERS" ("id")
);
/* 2025-08-28 16:54:06 [24 ms] */ 
CREATE TABLE "DIRECTORS" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(50) NOT NULL
);
/* 2025-08-28 16:54:06 [28 ms] */ 
CREATE TABLE "MOVIES" (
  "id" SERIAL PRIMARY KEY,
  "title" VARCHAR(255) NOT NULL,
  "synopsis" TEXT,
  "duration_minutes" INT,
  "release_date" DATE,
  "poster_image" VARCHAR(255),
  "directors_id" INT,
  "rating" FLOAT,
  FOREIGN KEY ("directors_id") REFERENCES "DIRECTORS" ("id")
);
/* 2025-08-28 16:54:06 [16 ms] */ 
CREATE TABLE "CINEMAS" (
  "id" SERIAL PRIMARY KEY,
  "cinema_name" VARCHAR(50) NOT NULL,
  "created_at" TIMESTAMP DEFAULT NOW()
);
/* 2025-08-28 16:54:06 [22 ms] */ 
CREATE TABLE "LOCATION" (
  "id" SERIAL PRIMARY KEY,
  "name" int NOT NULL
);
/* 2025-08-28 16:54:06 [49 ms] */ 
CREATE TABLE "NOW_SHOWING" (
  "id" SERIAL PRIMARY KEY,
  "date" DATE NOT NULL,
  "time" TIME NOT NULL,
  "location_id" INT,
  "movie_id" INT,
  FOREIGN KEY ("location_id") REFERENCES "LOCATION" ("id"),
  FOREIGN KEY ("movie_id") REFERENCES "MOVIES" ("id")
);
/* 2025-08-28 16:54:06 [26 ms] */ 
CREATE TABLE "PAYMENT" (
  "id" SERIAL PRIMARY KEY,
  "method" VARCHAR(50) NOT NULL
);
/* 2025-08-28 16:54:07 [23 ms] */ 
CREATE TABLE "ORDERS" (
  "id" SERIAL PRIMARY KEY,
  "users_id" INT,
  "price" INT,
  "payment_id" INT,
  "isPaid" BOOLEAN DEFAULT FALSE,
  "created_at" TIMESTAMP DEFAULT NOW(),
  "now_showing_id" INT,
  FOREIGN KEY ("users_id") REFERENCES "USERS" ("id"),
  FOREIGN KEY ("payment_id") REFERENCES "PAYMENT" ("id"),
  FOREIGN KEY ("now_showing_id") REFERENCES "NOW_SHOWING" ("id")
);
/* 2025-08-28 16:54:07 [15 ms] */ 
CREATE TABLE "ORDERS_CINEMA" (
  "orders_id" INT,
  "cinema_id" INT,
  FOREIGN KEY ("orders_id") REFERENCES "ORDERS" ("id"),
  FOREIGN KEY ("cinema_id") REFERENCES "CINEMAS" ("id")
);
/* 2025-08-28 16:54:07 [20 ms] */ 
CREATE TABLE "TICKET" (
  "id" SERIAL PRIMARY KEY,
  "qr_code" VARCHAR(50) UNIQUE
);
/* 2025-08-28 16:54:07 [14 ms] */ 
CREATE TABLE "ORDERS_TICKET" (
  "orders_id" INT,
  "ticket_id" INT,
  FOREIGN KEY ("orders_id") REFERENCES "ORDERS" ("id"),
  FOREIGN KEY ("ticket_id") REFERENCES "TICKET" ("id")
);
/* 2025-08-28 16:54:07 [20 ms] */ 
CREATE TABLE "SEATS" (
  "id" SERIAL PRIMARY KEY,
  "seats_map" VARCHAR(50),
  "orders_id" INT,
  FOREIGN KEY ("orders_id") REFERENCES "ORDERS" ("id")
);
/* 2025-08-28 16:54:07 [16 ms] */ 
CREATE TABLE "GENRES" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(50) UNIQUE
);
/* 2025-08-28 16:54:07 [14 ms] */ 
CREATE TABLE "CASTS" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(50) NOT NULL
);
/* 2025-08-28 16:54:07 [14 ms] */ 
CREATE TABLE "MOVIES_GENRE" (
  "genres_id" INT,
  "movies_id" INT,
  FOREIGN KEY ("movies_id") REFERENCES "MOVIES" ("id"),
  FOREIGN KEY ("genres_id") REFERENCES "GENRES" ("id")
);
/* 2025-08-28 16:54:07 [15 ms] */ 
CREATE TABLE "MOVIES_CAST" (
  "casts_id" INT,
  "movies_id" INT,
  FOREIGN KEY ("casts_id") REFERENCES "CASTS" ("id"),
  FOREIGN KEY ("movies_id") REFERENCES "MOVIES" ("id")
);