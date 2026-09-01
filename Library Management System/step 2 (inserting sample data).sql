USE MyDatabase

-------------------------------------------------
-- 1. STUDENTS (no dependencies)
-------------------------------------------------
INSERT INTO STUDENTS (STUDENT_NAME, GRADE, CONTACT_NO)
VALUES
    ('Ali Khan',     9,  '03001234567'),
    ('Fatima Aziz',  10, '03007654321'),
    ('Zain Ahmed',   9,  '03009988776'),
    ('Sara Malik',   11, '03011122334'),
    ('Hamza Tariq',  8,  '03022233445'),
    ('Ayesha Noor',  12, '03033344556')

-------------------------------------------------
-- 2. BOOKS (no dependencies)
-- AVAILABLE_COPIES must be <= TOTAL_COPIES
-------------------------------------------------
INSERT INTO BOOKS (BOOK_TITLE, CATEGORY, TOTAL_COPIES, AVAILABLE_COPIES)
VALUES
    ('The Hobbit',                 'Fiction',         3, 2),
    ('Good Omens',                 'Fiction',         2, 2),
    ('A Brief History of Time',    'Science',         2, 1),
    ('1984',                       'Fiction',         4, 3),
    ('Sapiens',                    'Non-fiction',     3, 3),
    ('The Martian',                'Science Fiction', 2, 1),
    ('The Lord of the Rings',      'Fiction',         2, 2),
    ('Animal Farm',                'Fiction',         3, 2)

-------------------------------------------------
-- 3. AUTHORS (no dependencies)
-------------------------------------------------
INSERT INTO AUTHOR (AUTHOR_NAME)
VALUES
    ('J.R.R. Tolkien'),
    ('Terry Pratchett'),
    ('Neil Gaiman'),
    ('Stephen Hawking'),
    ('George Orwell'),
    ('Yuval Noah Harari'),
    ('Andy Weir')

-------------------------------------------------
-- 4. BOOK_AUTHORS (depends on BOOKS + AUTHORS)
-- Good Omens (BookID 2) has two authors -> tests the many-to-many link
-- George Orwell wrote two books (1984, Animal Farm) -> tests the reverse direction
-------------------------------------------------
INSERT INTO BOOK_AUTHORS (BOOK_ID, AUTHOR_ID)
VALUES
    (1, 1),  -- The Hobbit -> Tolkien
    (2, 2),  -- Good Omens -> Pratchett
    (2, 3),  -- Good Omens -> Gaiman
    (3, 4),  -- A Brief History of Time -> Hawking
    (4, 5),  -- 1984 -> Orwell
    (5, 6),  -- Sapiens -> Harari
    (6, 7),  -- The Martian -> Weir
    (7, 1),  -- The Lord of the Rings -> Tolkien
    (8, 5)   -- Animal Farm -> Orwell

-------------------------------------------------
-- 5. STAFF (no dependencies)
-------------------------------------------------
INSERT INTO STAFF (STAFF_NAME,ROLE,CONTACT_NO)
VALUES
    ('Ms. Sana','LIBRARIAN','03001234532'),
    ('Mr. Bilal','LIBRARIAN','03009988724'),
    ('Mr. Faisal','ASSISTANT LIBRARIAN','03022233444')

-------------------------------------------------
-- 6. BORROW_RECORDS (depends on STUDENTS + BOOKS + STAFF)
-- Mix of: returned on time, returned late, still active (not due yet),
-- and overdue (past DUE_DATE, RETURN_DATE still NULL)
-------------------------------------------------
INSERT INTO BORROW_RECORDS (STUDENT_ID, BOOK_ID, STAFF_ID, ISSUE_DATE, DUE_DATE, RETURN_DATE)
VALUES
    (1, 1, 1, '2026-08-01', '2026-08-15', '2026-08-14'), -- returned on time
    (1, 2, 2, '2026-08-20', '2026-09-03', NULL),         -- still active, not due yet
    (2, 3, 1, '2026-08-05', '2026-08-19', '2026-08-25'), -- returned late
    (2, 1, 2, '2026-08-22', '2026-09-05', NULL),         -- still active
    (3, 2, 1, '2026-07-01', '2026-07-15', NULL),         -- OVERDUE, not returned
    (4, 4, 3, '2026-08-10', '2026-08-24', '2026-08-23'), -- returned on time
    (5, 5, 1, '2026-08-15', '2026-08-29', NULL),         -- OVERDUE by 1 day
    (6, 6, 2, '2026-08-25', '2026-09-08', NULL),         -- still active
    (3, 7, 3, '2026-07-20', '2026-08-03', '2026-08-10'), -- returned late
    (4, 8, 1, '2026-08-27', '2026-09-10', NULL)          -- still active

-------------------------------------------------
-- Verification
-------------------------------------------------
SELECT * FROM STUDENTS
SELECT * FROM BOOKS
SELECT * FROM AUTHOR
SELECT * FROM BOOK_AUTHORS
SELECT * FROM STAFF
SELECT * FROM BORROW_RECORDS