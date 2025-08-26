
-- CREATE TABLES --

CREATE TABLE "kategori" (
  "id" serial PRIMARY KEY,
  "name" varchar(50)
);

CREATE TABLE "rak_buku" (
  "id" serial PRIMARY KEY,
  "code" varchar(50),
  "kategori_id" int
);

CREATE TABLE "buku" (
  "id" serial PRIMARY KEY,
  "title" varchar(50),
  "author" varchar(50),
  "rakbuku_id" int
);

CREATE TABLE "petugas" (
  "id" serial PRIMARY KEY,
  "nama" varchar(50)
);

CREATE TABLE "peminjam" (
  "id" serial PRIMARY KEY,
  "nama" varchar(50)
);

CREATE TABLE "peminjaman" (
  "id" serial PRIMARY KEY,
  "book_id" int,
  "member_id" int,
  "petugas_id" int,
  "waktu" timestamp
);


-- ALTER TABLES (FOREIGN KEYS) --

ALTER TABLE "rak_buku" 
  ADD FOREIGN KEY ("kategori_id") REFERENCES "kategori" ("id");

ALTER TABLE "buku" 
  ADD FOREIGN KEY ("rakbuku_id") REFERENCES "rak_buku" ("id");

ALTER TABLE "peminjaman" 
  ADD FOREIGN KEY ("book_id") REFERENCES "buku" ("id");

ALTER TABLE "peminjaman" 
  ADD FOREIGN KEY ("member_id") REFERENCES "peminjam" ("id");

ALTER TABLE "peminjaman" 
  ADD FOREIGN KEY ("petugas_id") REFERENCES "petugas" ("id");


-- INSERT DATA --

-- kategori
INSERT INTO kategori (name) VALUES
('Dystopian'),
('Classic Literature'),
('Romance'),
('Fantasy'),
('Coming-of-Age'),
('Adventure'),
('Philosophical Fiction'),
('Self-Improvement'),
('History'),
('Action');

-- rak_buku
INSERT INTO rak_buku (code, kategori_id) VALUES
('RB01', 1), 
('RB02', 2), 
('RB03', 3), 
('RB04', 4), 
('RB05', 5), 
('RB06', 6), 
('RB07', 7), 
('RB08', 8), 
('RB09', 9), 
('RB10', 2);

-- buku
INSERT INTO buku (title, author) VALUES 
('The Great Gatsby', 'F. Scott Fitzgerald'),
('Pride and Prejudice', 'Jane Austen'),
('Harry Potter and the Sorcerer’s Stone','J.K. Rowling'),
('The Catcher in the Rye', 'J.D. Salinger'),
('The Lord of the Rings', 'J.R.R. Tolkien'),
('The Alchemist', 'Paulo Coelho'),
('Atomic Habits', 'James Clear'),
('Sapiens: A Brief History of Humankind', 'Yuval Noah Harari'),
('1984', 'George Orwell');

-- petugas
INSERT INTO petugas (nama) VALUES
('Rina'),
('Dedi'),
('Sinta'),
('Arif'),
('Lutfi'),
('Dewi'),
('Bambang'),
('Nina'),
('Rizky'),
('Cahya');

-- peminjam
INSERT INTO peminjam (nama) VALUES
('Raihan'),
('Titus'),
('Radif'),
('Federus'),
('Christian'),
('Sidik'),
('Yusuf'),
('Habib'),
('Farid'),
('Anggi');

-- peminjaman
INSERT INTO peminjaman (book_id, member_id, petugas_id) VALUES 
(10, 1, 1), 
(2, 2, 1),  
(2, 3, 2),  
(4, 1, 2),  
(6, 2, 1),
(5, 3, 7),
(3, 7, 8),
(7, 5, 6),
(9, 4, 9),
(8, 6, 10);


-- SELECT DATA --

SELECT * FROM kategori;
SELECT * FROM rak_buku;
SELECT * FROM buku;
SELECT * FROM petugas;
SELECT * FROM peminjam;
SELECT * FROM peminjaman;
