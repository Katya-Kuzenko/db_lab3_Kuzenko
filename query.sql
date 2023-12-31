
-- Запит 1. Пошук книг, у яких рейтинг більше 4.5
SELECT Book.Title, Book.Rating, Book.Author
FROM Book
WHERE Book.Rating > 4.5;

-- Запит 2. Інформація про всі відгуки до певної книги 
SELECT Review.Review_Title, Review.Review_Description, Review.Review_Rating, Reviewer.Reviewer_Name
FROM Review
JOIN Reviewer ON Review.Reviewer_ID = Reviewer.Reviewer_ID
WHERE Review.Book_ID = 1000000002;

-- Запит 3. Виводить всі книги та їх жанри
SELECT Book.Title, Genre.Genre_Name
FROM Book
JOIN Book_Genre ON Book.Book_ID = Book_Genre.Book_ID
JOIN Genre ON Book_Genre.Genre_ID = Genre.Genre_ID;
