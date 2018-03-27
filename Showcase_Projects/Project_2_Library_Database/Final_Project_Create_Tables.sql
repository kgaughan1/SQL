CREATE TABLE tbl_book (
	Book_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Title VARCHAR(50) NOT NULL,
	PublisherName VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_book_authors (
	Book_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	AuthorName VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_publisher (
	PublisherName VARCHAR(50) PRIMARY KEY NOT NULL,
	PublisherAddress VARCHAR(50) NOT NULL,
	PublisherPhone VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_book_copies (
	Book_id INT NOT NULL,
	Branch_id INT NOT NULL,
	No_Of_Copies INT NOT NULL
);

CREATE TABLE tbl_book_loans (
	Book_id INT NOT NULL,
	Branch_id INT NOT NULL,
	Card_No INT NOT NULL,
	DateOut VARCHAR(50),
	DueDate VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_borrower (
	Card_No INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Name VARCHAR(50) NOT NULL,
	Borrower_Address VARCHAR(50) NOT NULL,
	Borrower_Phone VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_Library_Branch (
	Branch_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Branch_Name VARCHAR(50) NOT NULL,
	Branch_Address VARCHAR(50) NOT NULL
);