INSERT INTO tbl_book
	(Title, PublisherName) 
	VALUES 
	('IT', 'Publisher 1'), 
	('The Grapes of Wrath', 'Publisher 2'),
	('1984', 'Publisher 3'),
	('Ulysses', 'Publisher 4'),
	('Lolita', 'Publisher 5'),
	('Catch-22', 'Publisher 6'),
	('Catcher in the Rye', 'Publisher 7'),
	('Beloved', 'Publisher 8'),
	('The Sound and the Fury', 'Publisher 9'),
	('To Kill a Mockingbird', 'Publisher 10'),
	('The Lord of the Rings', 'Publisher 11'),
	('One Hundred Years of Solitude', 'Publisher 12'),
	('Brave New World', 'Publisher 13'),
	('To the Lighthouse', 'Publisher 14'),
	('Invisible Man', 'Publisher 15'),
	('Gone with the Wind', 'Publisher 16'),
	('Jane Eyre', 'Publisher 17'),
	('On the Road', 'Publisher 18'),
	('Pride and Prejudice', 'Publisher 19'),
	('The Lost Tribe', 'Publisher 20')
;

INSERT INTO tbl_book_authors
	(AuthorName) 
	VALUES 
	('Stephen King'), 
	('John Steinbeck'),
	('George Orwell'),
	('James Joyce'),
	('Vladimiar Nabokov'),
	('Joseph Heller'),
	('J.D. Salinger'),
	('Toni Morrison'),
	('William Faulkner'),
	('Harper Lee'),
	('J.R.R Tolkien'),
	('Gabriel Marquez'),
	('Aldous Huxley'),
	('Virginia Woolf'),
	('Ralph Ellison'),
	('Margaret Mitchell'),
	('Charlotte Bronte'),
	('Jack Kerouc'),
	('Jane Austen'),
	('Willian Golding')
;

INSERT INTO tbl_Library_Branch
	(Branch_Name, Branch_Address)
	VALUES
	('Sharpstown', '5116 Floyd Street Houston, TX'),
	('Central', '5117 Floyd Street Houston, TX'),
	('North', 'Sam Street Houston, TX'),
	('South', 'South Sam Street Houston, TX')
;

INSERT INTO tbl_book_copies
	(Book_id, Branch_id, No_Of_Copies)
	VALUES
	(1, 1, 2),
	(2, 1, 2),
	(3, 1, 2),
	(4, 1, 2),
	(5, 1, 2),
	(6, 1, 2),
	(7, 1, 2),
	(8, 1, 2),
	(9, 2, 2),
	(10, 2, 2),
	(11, 2, 2),
	(12, 2, 2),
	(13, 2, 2),
	(14, 2, 2),
	(15, 2, 2),
	(16, 2, 2),
	(17, 2, 2),
	(18, 2, 2),
	(19, 2, 2),
	(20, 1, 2),
	(20, 3, 2)
;

INSERT INTO tbl_borrower
	(Name, Borrower_Address, Borrower_Phone)
	VALUES
	('Kevin Gaughan', '5118 Floyd St.', '2108379277'),
	('Megan Gaughan', '5119 Floyd St.', '1234134313'),
	('Debbie Gaughan', '5110  Floyd St.', '12341343413'),
	('Tim Gaughan', '5111 Floyd St.', '1341343143'),
	('Courtny Edge', '5123 Floyd St.', '1234341313'),
	('Thavi Edtejadi', '1234 Sam St.', '1234134314'),
	('Selman Kaldir', '4134 Sam St.', '12341343143'),
	('Daniel Villamizar', '4444 Sam St.', '12341343')
;

INSERT INTO tbl_book_loans
	(Book_id, Branch_id, Card_No, DueDate)
	VALUES
	(1, 1, 1, '11/08/2017'),
	(2, 1, 1, '11/08/2017'),
	(3, 1, 1, '11/08/2017'),
	(4, 1, 1, '11/08/2017'),
	(5, 1, 1, '11/08/2017'),
	(6, 1, 1, '11/08/2017'),
	(7, 1, 1, '11/08/2017'),
	(8, 1, 1, '11/08/2017'),
	(9, 1, 1, '11/08/2017'),
	(10, 1, 1, '11/08/2017'),
	(1, 1, 2, '11/08/2017'),
	(2, 1, 2, '11/08/2017'),
	(3, 1, 2, '11/08/2017'),
	(4, 1, 2, '11/08/2017'),
	(5, 1, 2, '11/08/2017'),
	(6, 1, 2, '11/08/2017'),
	(7, 1, 2, '11/08/2017'),
	(8, 1, 3, '11/08/2017'),
	(9, 1, 3, '11/08/2017'),
	(10, 1, 3, '11/08/2017'),
	(11, 2, 4, '11/08/2017'),
	(12, 2, 4, '11/08/2017'),
	(13, 2, 4, '11/08/2017'),
	(14, 2, 4, '11/08/2017'),
	(15, 2, 4, '11/08/2017'),
	(16, 2, 4, '11/08/2017'),
	(17, 2, 4, '11/08/2017'),
	(18, 2, 5, '11/08/2017'),
	(19, 2, 5, '11/08/2017'),
	(20, 2, 5, '11/08/2017'),
	(10, 2, 6, '11/13/2017'),
	(11, 2, 6, '11/13/2017'),
	(12, 2, 6, '11/13/2017'),
	(13, 2, 6, '11/13/2017'),
	(14, 2, 6, '11/13/2017'),
	(15, 2, 6, '11/13/2017'),
	(16, 2, 6, '11/13/2017'),
	(17, 2, 6, '11/13/2017'),
	(18, 2, 6, '11/13/2017'),
	(19, 2, 7, '11/13/2017'),
	(20, 2, 7, '11/20/2017'),
	(10, 2, 7, '11/20/2017'),
	(11, 2, 7, '11/20/2017'),
	(12, 2, 7, '11/20/2017'),
	(13, 2, 7, '11/20/2017'),
	(14, 2, 7, '11/20/2017'),
	(15, 2, 7, '11/20/2017'),
	(16, 2, 7, '11/20/2017'),
	(17, 2, 7, '11/20/2017'),
	(18, 2, 7, '11/20/2017'),
	(19, 2, 7, '11/20/2017'),
	(20, 2, 7, '11/20/2017'),
	(20, 3, 7, '11/20/2017')
;

