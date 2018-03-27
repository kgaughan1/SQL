/**/
CREATE TABLE tbl_book (
	Book_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Title VARCHAR(50) NOT NULL,
	PublisherName VARCHAR(50) NOT NULL
);

/**/
CREATE TABLE tbl_book_authors (
	Book_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	AuthorName VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_publisher (
	PublisherName VARCHAR(50) PRIMARY KEY NOT NULL,
	PublisherAddress VARCHAR(50) NOT NULL,
	PublisherPhone VARCHAR(50) NOT NULL
);

/**/
CREATE TABLE tbl_book_copies (
	Book_id INT NOT NULL,
	Branch_id INT NOT NULL,
	No_Of_Copies INT NOT NULL
);

/**/
CREATE TABLE tbl_book_loans (
	Book_id INT NOT NULL,
	Branch_id INT NOT NULL,
	Card_No INT NOT NULL,
	DateOut VARCHAR(50),
	DueDate VARCHAR(50) NOT NULL
);

/**/
CREATE TABLE tbl_borrower (
	Card_No INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Name VARCHAR(50) NOT NULL,
	Borrower_Address VARCHAR(50) NOT NULL,
	Borrower_Phone VARCHAR(50) NOT NULL
);

/**/
CREATE TABLE tbl_Library_Branch (
	Branch_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Branch_Name VARCHAR(50) NOT NULL,
	Branch_Address VARCHAR(50) NOT NULL
);


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


DROP TABLE tbl_book_copies

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


SELECT * FROM tbl_book;

/* Question #1 */

SELECT tbl_book.Title, tbl_Library_Branch.Branch_Name, tbl_book_copies.No_Of_Copies
	FROM tbl_book_copies
	INNER JOIN tbl_book ON tbl_book_copies.Book_id = tbl_book.Book_id
	INNER JOIN tbl_Library_Branch ON tbl_book_copies.Branch_id = tbl_Library_Branch.Branch_id
	WHERE tbl_book.Title = 'The Lost Tribe' AND tbl_Library_Branch.Branch_Name = 'Sharpstown';


/*Question #2 */
SELECT tbl_book.Title, tbl_Library_Branch.Branch_Name, tbl_book_copies.No_Of_Copies
	FROM tbl_book_copies
	INNER JOIN tbl_book ON tbl_book_copies.Book_id = tbl_book.Book_id
	INNER JOIN tbl_Library_Branch ON tbl_book_copies.Branch_id = tbl_Library_Branch.Branch_id
	WHERE tbl_book.Title = 'The Lost Tribe';

/*Question #3 Retrieve the names of all borrowers who do not have any books checked out. */
/*QUESTION: How do I use the total under the WHERE clauses so that I can perform the query where only names with NO book loans appears? */

SELECT tbl_borrower.Name, COUNT(*) AS total
	FROM  tbl_book_loans
	INNER JOIN tbl_borrower ON tbl_book_loans.Card_No = tbl_borrower.Card_No
	WHERE total < 1;
	/*GROUP BY tbl_borrower.Name;*/

/*Left join Borrower and Book_loans
WHERE Borrower is NULL */

SELECT *
	FROM  tbl_book_loans
	RIGHT JOIN tbl_borrower ON tbl_book_loans.Card_No = tbl_borrower.Card_No
	WHERE tbl_book_loans.Book_id IS NULL; 

SELECT * FROM tbl_borrower;


/*Question #4 */
SELECT tbl_book.Title, tbl_Library_Branch.Branch_Name, tbl_borrower.Name, tbl_borrower.Borrower_Address
	FROM tbl_book_loans
	INNER JOIN tbl_borrower ON tbl_book_loans.Card_No = tbl_borrower.Card_No
	INNER JOIN tbl_Library_Branch ON tbl_book_loans.Branch_id = tbl_Library_Branch.Branch_id
	INNER JOIN tbl_book ON tbl_book_loans.Book_id = tbl_book.Book_id
	WHERE tbl_Library_Branch.Branch_Name = 'Sharpstown' AND tbl_book_loans.DueDate = '11/08/2017';

/*Question #5 */
SELECT tbl_Library_Branch.Branch_Name, COUNT(*) AS Total_Checkouts
	FROM  tbl_book_loans
	INNER JOIN tbl_Library_Branch ON tbl_book_loans.Branch_id = tbl_Library_Branch.Branch_id
	GROUP BY tbl_Library_Branch.Branch_Name;

/*Question #6 HELP*/
SELECT tbl_borrower.Name, tbl_borrower.Borrower_Address, COUNT(tbl_book_loans.Card_No) AS Total_Checkouts
	FROM tbl_book_loans
	INNER JOIN tbl_borrower ON tbl_book_loans.Card_No = tbl_borrower.Card_No
	GROUP BY tbl_borrower.Name, tbl_borrower.Borrower_Address
	HAVING COUNT(tbl_book_loans.Card_No) > 5




/*Question #7 */

SELECT tbl_Library_Branch.Branch_Name, tbl_book_authors.AuthorName, tbl_book.Title, tbl_book_copies.No_Of_Copies
	FROM tbl_book_copies
	INNER JOIN tbl_Library_Branch ON tbl_book_copies.Branch_id = tbl_Library_Branch.Branch_id
	INNER JOIN tbl_book ON tbl_book_copies.Book_id = tbl_book.Book_id
	INNER JOIN tbl_book_authors ON tbl_book_copies.Book_id = tbl_book_authors.Book_id
	WHERE tbl_Library_Branch.Branch_Name = 'Sharpstown' and tbl_book_authors.AuthorName = 'Stephen King';
	/* Correct because there are no Stephen King Movies in Central */



