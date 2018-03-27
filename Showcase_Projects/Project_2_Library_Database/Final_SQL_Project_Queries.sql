/* Question #1 */
SELECT tbl_book.Title, tbl_Library_Branch.Branch_Name, tbl_book_copies.No_Of_Copies
	FROM tbl_book_copies
	INNER JOIN tbl_book ON tbl_book_copies.Book_id = tbl_book.Book_id
	INNER JOIN tbl_Library_Branch ON tbl_book_copies.Branch_id = tbl_Library_Branch.Branch_id
	WHERE tbl_book.Title = 'The Lost Tribe' AND tbl_Library_Branch.Branch_Name = 'Sharpstown';

/* Question #2 */
SELECT tbl_book.Title, tbl_Library_Branch.Branch_Name, tbl_book_copies.No_Of_Copies
	FROM tbl_book_copies
	INNER JOIN tbl_book ON tbl_book_copies.Book_id = tbl_book.Book_id
	INNER JOIN tbl_Library_Branch ON tbl_book_copies.Branch_id = tbl_Library_Branch.Branch_id
	WHERE tbl_book.Title = 'The Lost Tribe';

/* Question #3 Retrieve the names of all borrowers who do not have any books checked out. */
SELECT *
	FROM  tbl_book_loans
	RIGHT JOIN tbl_borrower ON tbl_book_loans.Card_No = tbl_borrower.Card_No
	WHERE tbl_book_loans.Book_id IS NULL; 

/* Question #4 */
SELECT tbl_book.Title, tbl_Library_Branch.Branch_Name, tbl_borrower.Name, tbl_borrower.Borrower_Address
	FROM tbl_book_loans
	INNER JOIN tbl_borrower ON tbl_book_loans.Card_No = tbl_borrower.Card_No
	INNER JOIN tbl_Library_Branch ON tbl_book_loans.Branch_id = tbl_Library_Branch.Branch_id
	INNER JOIN tbl_book ON tbl_book_loans.Book_id = tbl_book.Book_id
	WHERE tbl_Library_Branch.Branch_Name = 'Sharpstown' AND tbl_book_loans.DueDate = '11/08/2017';

/* Question #5 */
SELECT tbl_Library_Branch.Branch_Name, COUNT(*) AS Total_Checkouts
	FROM  tbl_book_loans
	INNER JOIN tbl_Library_Branch ON tbl_book_loans.Branch_id = tbl_Library_Branch.Branch_id
	GROUP BY tbl_Library_Branch.Branch_Name;

/* Question #6 */
SELECT tbl_borrower.Name, tbl_borrower.Borrower_Address, COUNT(tbl_book_loans.Card_No) AS Total_Checkouts
	FROM tbl_book_loans
	INNER JOIN tbl_borrower ON tbl_book_loans.Card_No = tbl_borrower.Card_No
	GROUP BY tbl_borrower.Name, tbl_borrower.Borrower_Address
	HAVING COUNT(tbl_book_loans.Card_No) > 5

/* Question #7 */
SELECT tbl_Library_Branch.Branch_Name, tbl_book_authors.AuthorName, tbl_book.Title, tbl_book_copies.No_Of_Copies
	FROM tbl_book_copies
	INNER JOIN tbl_Library_Branch ON tbl_book_copies.Branch_id = tbl_Library_Branch.Branch_id
	INNER JOIN tbl_book ON tbl_book_copies.Book_id = tbl_book.Book_id
	INNER JOIN tbl_book_authors ON tbl_book_copies.Book_id = tbl_book_authors.Book_id
	WHERE tbl_Library_Branch.Branch_Name = 'Sharpstown' and tbl_book_authors.AuthorName = 'Stephen King';