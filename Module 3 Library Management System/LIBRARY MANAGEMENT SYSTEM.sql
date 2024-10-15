/* Creating a Database named library adding Following TABLES in the Database:
1.Branch 2.Employee 3.Books 4.Customer 5.IssueStatus 6.ReturnStatus */

CREATE DATABASE library; -- THIS QUERY CREATE DATABASE NAMED library
USE library; -- THIS QUERY SELECTS DATABASE


-- Creating Table named Branch in database library
CREATE TABLE Branch(Branch_no INT PRIMARY KEY,Manager_Id INT,Brach_address VARCHAR(200),Contact_no VARCHAR(15));
SELECT * FROM BRANCH; -- THIS QUERY SHOWS TABLE 
DESCRIBE BRANCH; -- THIS QUERY SHOWS ATTRIBUTE OF TABLE CREATED

-- Creating Table named Employee in database library
CREATE TABLE Employee(Emp_Id VARCHAR(7) PRIMARY KEY,Emp_NAME VARCHAR(75),Position VARCHAR(75),
Salary INT,Branch_no int,FOREIGN KEY(Branch_no) REFERENCES Branch(Branch_no));
SELECT * FROM EMPLOYEE; -- THIS QUERY SHOWS TABLE 
DESCRIBE EMPLOYEE; -- THIS QUERY SHOWS ATTRIBUTE OF TABLE CREATED

-- Creating Table named Books in database library
CREATE TABLE Books(ISBN VARCHAR(14)  PRIMARY KEY,Book_title VARCHAR(200),Category VARCHAR(50),
Rental_Price int,Status VARCHAR(5),Author_Publisher VARCHAR(200));
SELECT * FROM BOOKS; -- THIS QUERY SHOWS TABLE 
DESCRIBE BOOKS; -- THIS QUERY SHOWS ATTRIBUTE OF TABLE CREATE

-- creating Table named Customer in database library
CREATE TABLE Customer(Customer_Id VARCHAR(10) PRIMARY KEY,Customer_name VARCHAR(25),
Customer_address VARCHAR(200),Reg_date DATE);
SELECT * FROM CUSTOMER; -- THIS QUERY SHOWS TABLE 
DESCRIBE CUSTOMER; -- THIS QUERY SHOWS ATTRIBUTE OF TABLE CREATE

-- creating Table named Issestatus in database library
CREATE TABLE IssueStatus(Issue_Id VARCHAR(10) PRIMARY KEY,Issued_cust VARCHAR(10),
FOREIGN KEY(Issued_cust) REFERENCES Customer(Customer_Id),
Issued_book_name VARCHAR(200),Issue_date DATE,Isbn_book VARCHAR(14),FOREIGN KEY(Isbn_book) REFERENCES Books(ISBN));
SELECT * FROM ISSUESTATUS; -- THIS QUERY SHOWS TABLE 
DESCRIBE ISSUESTATUS; -- THIS QUERY SHOWS ATTRIBUTE OF TABLE CREATE          

-- creating Table named ReturnStatus in database library       
CREATE TABLE ReturnStatus(Retun_Id VARCHAR(15) PRIMARY KEY,Return_cust VARCHAR(25),
Return_Book_name VARCHAR(200),Retrun_date DATE,
Isbn_book2 VARCHAR(14),FOREIGN KEY(Isbn_book2) REFERENCES Books(ISBN));
SELECT * FROM RETURNSTATUS; -- THIS QUERY SHOWS TABLE 
DESCRIBE RETURNSTATUS; -- THIS QUERY SHOWS ATTRIBUTE OF TABLE CREATE
drop table ReturnStatus;

SHOW TABLES; -- THIS WILL SHOW TABLES CREATED IN THE SELECTED DATABASE

-- INSERTING VALUES TO TABLE BRANCH IN DATABASE LIBRARY                      
INSERT INTO Branch (Branch_no,Manager_Id,Brach_address,Contact_no) 
VALUES
(101,1011,'E Padmnabhan Memorial Library Vinayaka Colony
Palakkad - 678014 (Kerala) India','4912528911'),
(102,1021,'Kakkanni Vikasana Samithi & APJ Abdulkalam Memorial Library 
40, Kakkanni, Thomas Nagar, Athira Nagar, Akathethara
Palakkad - 678009 (Kerala) India','4912526936'),
(103,1031,'Kala Samskarika Samithi Library
Ithingaparambu Street, Ithingaparambu, Chepilamury, Akathethara
Palakkad - 678008 (Kerala) India','4912369929'),
(104,1041,'Palakkad Medical College Library
Government Medical College, Palakkad, Kadamkod, Kalmandapam
Palakkad - 678013 (Kerala) India','4912869919'),
(105,1051,'Koppam Paurasamgham Vayanasala & Library
Puthur Road, Sheshadri Nagar, Koppam
Palakkad - 678001 (Kerala) India','4912361597'),
(106,1061,'BHSS Library
Sahyadri Colony, Chandranagar Colony
Palakkad - 678007 (Kerala) India','4918953215'),
(107,1071,'Thondikulam Public Library
276, Single Street, New Extension, Thondikulam, Nurani
Palakkad - 678004 (Kerala) India','4915583264'),
(108,1081,'Central Library
NSS College Of Engineering, Puthuppariyaram
Palakkad - 678008 (Kerala) India','4912145267');
SELECT * FROM BRANCH; -- THIS QUERY DISPLAS TABLE VALUES

INSERT INTO Employee(Emp_Id,Emp_NAME,Position,Salary,Branch_no )
VALUES
('LMS001','Aravind','Librarian',52000,101),('LMS002','Balachandran','Manager',51000,101),
('LMS003','Chaco','Assistant',25000,101),('LMS004','Devid','Librarian',50000,102),
('LMS005','Emanual','Manager',49500,102),('LMS006','Fathima','Assistant',20000,102),
('LMS007','Genesh','Librarian',45000,103),('LMS008','Hakeem','Manager',28000,103),
('LMS009','Idhrajith','Assistant',20000,103),('LMS010','Janaki','Librarian',48000,104),
('LMS011','Kannan','Manager',30000,104),('LMS012','Lathika','Assistant',18500,104),
('LMS013','Manikandan','Librarian',49000,105),('LMS014','Narayanan','Manager',35000,105),
('LMS015','Oliver','Assistant',19500,105),('LMS016','Preveen','Librarian',55000,106),
('LMS017','Pradeep','Manager',51000,106),('LMS018','Renjith','Assistant',18000,106),
('LMS019','Rahul','Librarian',40000,107),('LMS020','Shameer','Manager',49000,107),
('LMS021','Saranya','Assistant',19000,107),('LMS022','Thangavelu','Librarian',38000,108),
('LMS023','Umesh','Manager',51000,108),('LMS024','Vineeth','Assistant',25000,108),
('LMS025','Aneeh','Assistant',20000,103),('LMS026','Kiran ','Assistant',21000,103),
('LMS027','Shahul','Assistant',17500,103),('LMS028','Mujeeb','Assistant',18000,107),
('LMS029','Kiran Kumar','Assistant',18000,107),('LMS030','Chandra das','Assistant',18500,108),
('LMS031','Ramesh','Assistant',19000,108),('LMS032','Manu','Assistant',17500,108);
SELECT * FROM EMPLOYEE; -- THIS QUERY DISPLAS TABLE VALUES

-- INSERTING VALUES TO TABLE BOOKS IN DATABASE LIBRARY 
INSERT INTO Books(ISBN,Book_title,Category,Rental_Price,Status,Author_Publisher)
VALUES
(9788720335578,'Configuring Windows Server 2008 Active Directory','Information Technology',10,'NO','Dan Holme,Danielle Ruest,PHI Learning Privete Limited'),
(9788120335516,'Configuring Windows Server 2008 Network Infrastructure','Information Technology',10,'YES','J.C. Mackin,Tony Northrup, PHI Learning Privete Limited'),
(9789351403654,'Classical Mechanics','Physics',26,'YES','Dr.S.L.Gupta,Dr.V.Kumar,Dr.H.V.Sharma, Pragati Prakashan,Meerut'),
(9789387812154,'Electrodynamics','Physics',15,'YES','Dr.S.L.Gupta,Dr.V.Kumar,Dr.H.V.Sharma, Pragati Prakashan,Meerut'),
(9789352601738,'Fundamentals of Molecular Spectroscopy','Physics',29,'YES','Colin N.Banwell, Elaine M.McCash, McGraw Hill education (India)Private Limited'),
(9788126535187,'Introduction To Solid State Physics','Physics',23,'YES','Charles Kittel, Wiley India Private Limited'),
(9788121928137,'Heat Thermodynamics And Statistical Physics','Physics',26,'YES','Brij Lal,N.Subrahmanyam,P.S. Hemene, S.Chand & Company  Limited'),
(9788122410242,'Classical Mechanics Of Particles And Rigid Bodies','Physics',28,'NO','Kiran C Gupta, New Age International Publishers'),
(9781259062865,'Quantum Mechanics','Physics',25,'YES','Keonard Ã—â‚¬ Schiff, Mc Graw Hill Education Private Limited'),
(9780521556576,'A Mathematical Dictionary For Schools','Mathamatics',10,'YES','Brian Bolt,David hobbs, The Press Syndicate of The University Of Cambridge'),
(9788189093471,'Illustrated Dictionary of Mathematics','Mathamatics',10,'NO','Lotus Press'),
(9788182951136,'Hindi Grammer & Composition','Hindi',5,'YES','Vidwan V.P. Neelakandhan Pillai, V Puplishers'),
(9788125022534,'Singing Rivers and Speaking Stones','English ',5,'YES','Shanta Rameshwar Rao, Orient Longman Private Limited'),
(9788121914659,'An Anthology Of Short  Stories','English ',6,'NO','P.K. Mohanty, S.Mahapatra, S. Chand & Company Limited'),
(9788180543036,'Textbook Of Oraganic Chemistry','Chemistry',26,'NO','P.L. Soni, H.M. Chawla, Sultan Chand & Sons'),
(9788121920339,'Sesame','English ',10,'YES','K.K. Reddy, S.Chand & Company Limited'),
(9788170141266,'Textbook Of Inoraganic Chemistry','Chemistry',29,'YES','P.L. Soni, Mohan Katyal, Sultan Chand & Sons'),
(9788125930969,'Mathematical Physics','Physics',30,'YES','B D Gupta, Vikas Publishing House Private Limited'),
(9788190834339,'Microprocessors & Microcontrollers','Conputer Science',25,'YES','P.S. Manoharan, Charulatha Publications'),
(9780198069195,	'Getting Started with MATLAB','Mechanical Engineering',30,'YES','Rudra Pratap, Oxford Univerity Press'),
(9780671728687,	'The Rise and Fall of the Third Reich: A History of Nazi Germany','History',30,'YES','William L. Shirer'),
(9780743226721,	'1776','History',30,'YES','David McCullough');


-- INSERTING VALUES TO CUSTOMERS IN DATABASE LIBRARY 
INSERT INTO Customer(Customer_Id,Customer_name,Customer_address,Reg_date)
VALUES
('LMC00001','Ajeesh Kumar','07/301,Kumar House,Akathethara, Palakkad','1955-10-22'),
('LMC00002','Ashok R','05/221,Ramm Villa,Bigbazar , Palakkad','1988-05-3'),
('LMC00003','Benny T','01/110,Tony Home,Kottai, Palakkad','1979-04-25'),
('LMC00004','Balu S','03/225,Saran Nivas,Kizhakegrama, Palakkad','1998-03-08'),
('LMC00005','Bavana','15/070,Tharang Nivas,shakariPuram,Palakkad','1992-12-08'),
('LMC00006','Charulatha V','11/112,Garden Home,Malampuzha,Palakkad','1963-01-27'),
('LMC00007','Dinakar G','07/199,Kalathil Nivas,Anakkal,Palakkad','1993-08-11'),
('LMC00008','Dharman','08/505,Deepam Nivas,chanranagr,Palakkad','1959-06-09'),
('LMC00009','Divya M','15/125,Manaviyam villa,Kannadi,Palakkad','1994-11-29'),
('LMC00010','Eshwary K','13/707,Nila Nivas,Thodupalam,Palakkad','1997-02-27'),
('LMC00011','Fathima','01/902,Jafer Home,Puthunagram,Palakkad','1977-03-15'),
('LMC00012','Faizal','22/117,Fathim Manzil,Thahamagalm,Palakkad','1969-07-20'),
('LMC00013','Greeshma','08/618,Vishnu Nivas,Muthalamada,Palakkad','2000-12-30'),
('LMC00014','Gunaraj D','14/920,Dhanalaxmi Nivas,Kollengode,Palakkad','2021-03-15'),
('LMC00015','Hameedh ','10/277,Jameela Manzil,Chittur,Palakkad','2002-05-25'),
('LMC00016','Janu R','13/103,Varna Nivas,Thenkurushi,Palakkad','2010-08-30'),
('LMC00017','Kavitha P','77/155,Pulikkal Nivas,Peruvembha,Palakkad','2020-03-08'),
('LMC00018','Lavanya A','21/222,Chirakkan Nivas,Koduvayur,Palakkad','2024-05-19'),
('LMC00019','Manuraj M','16/323,Mani Home,Nallepulli,Palakkad','2023-12-30'),
('LMC00020','Nakaraj V','17/285,Vishnubhavan,Kuzhalmannam,Palakkad','2022-05-05');
SELECT * FROM CUSTOMER; -- THIS QUERY DISPLAS TABLE VALUES

INSERT INTO IssueStatus(Issue_Id,Issued_cust,Issued_book_name,Issue_date,Isbn_book)
VALUES
('LBE000101','LMC00004','Classical Mechanics Of Particles And Rigid Bodies','2024-05-11','9788122410242'),
('LBE000102','LMC00005','Configuring Windows Server 2008 Active Directory','2024-05-27','9788720335578'),
('LBE000103','LMC00007','A Mathematical Dictionary For Schools','2024-06-03','9780521556576'),
('LBE000104','LMC00009','Illustrated Dictionary of Mathematics','2024-06-15','9788189093471'),
('LBE000105','LMC00011','Hindi Grammer & Composition ','2023-06-20','9788182951136'),
('LBE000106','LMC00012','Microprocessors & Microcontrollers','2024-06-25','9788190834339'),
('LBE000107','LMC00014','An Anthology Of Short  Stories','2024-07-10','9788121914659'),
('LBE000108','LMC00015','Textbook Of Oraganic Chemistry','2024-08-15','9788180543036'),
('LBE000109','LMC00017','Sesame','2024-09-25','9788121920339'),
('LBE000110','LMC00018','Getting Started with MATLAB','2024-09-30','9780198069195');
SELECT * FROM ISSUESTATUS; -- THIS QUERY DISPLAS TABLE VALUES


INSERT INTO ReturnStatus(Retun_Id,Return_cust,Return_Book_name,Retrun_date,Isbn_book2)
VALUES
('LBR000101','LMC00007','A Mathematical Dictionary For Schools','2024-06-09','9780521556576'),
('LBR000102','LMC00011','Hindi Grammer & Composition ','2024-07-10','9788182951136'),
('LBR000103','LMC00012','Microprocessors & Microcontrollers','2024-07-09','9788190834339'),
('LBR000104','LMC00017','Sesame','2024-10-05','9788121920339'),
('LBR000105','LMC00018','Getting Started with MATLAB','2024-10-10','9780198069195');
SELECT * FROM RETURNSTATUS;


-- (1)Retrieving the book title,category, and Rental price of all available books.
SELECT Book_title AS 'BOOKS',Category AS 'CATOGRY',Rental_Price AS 'PRICE' FROM Books;

-- (2)Listing the employee names and their respective salaries in descending order of salary
SELECT Emp_name AS 'NAME', salary AS 'SALARY' FROM Employee ORDER BY salary DESC;

-- (3) Retrieving the book titles and the corresponding customers who have issued those books.
SELECT I.issued_book_name AS 'BOOK TITLE',C.customer_name AS 'CUSTOMER NAME' FROM issuestatus I
LEFT JOIN Customer C ON C.Customer_id =I.Issued_cust;
/*  Since the Primary Key on Customer table is same as Foring Key on issuestatus table 
we can retrive informoation from boath table using joins */

-- (4) Displaying tottal count of book in each catogory
SELECT Category AS 'CATEGORY',COUNT(Category) AS 'COUNT' FROM Books GROUP BY Category;

/* (5) Retrieving the employee name and their posistions for the employyees whose 
salaries are above Rs.50,000 */
SELECT Emp_name AS 'NAME',Position AS 'POSITION' FROM Employee WHERE Salary>50000;

/* (6)Listing the customer names who registered before 2022-01-01 and have not issued any books yet */
SELECT Customer_name AS 'NAME OF NOT ISSUED CUSTOMER',Reg_date AS 'REGISTERD DATE'
FROM customer WHERE Reg_date <= '2022-01-01' 
AND NOT EXISTS (SELECT return_book_name FROM returnstatus WHERE return_cust = customer.customer_Id);
/* For date referance extra query steps included for reg_date colum and retruns as REGISTED DATE */

-- (7)Displaying the branch numbers and the total count of employees in each branch 
SELECT Branch_no AS 'BRANCH',COUNT(Emp_id) AS 'TOTLA NUMBER OF EMPLOYEE' FROM employee 
GROUP BY Branch_no;

-- (8)Displaying the names of customers who have issued books in the month of june 2023
SELECT Customer_name AS 'CUSTOMER NAME' FROM customer WHERE
EXISTS(SELECT  Issued_cust  FROM IssueStatus WHERE 
Issued_cust = customer.customer_Id AND YEAR(Issue_date)=2023 AND MONTH(Issue_date)=06);

-- (9) Retrieving  book_title from book table containing history
SELECT Book_title AS 'HISTORY BOOKS' FROM Books WHERE Category = 'history';

/*(10) Retrieving the branch numbers along with the count of 
employees for braches having more than 5 employee*/
SELECT  Branch_no AS 'BRANCH NUMBER', COUNT(Emp_name) AS 'COUNT OF EMPLOYEE' 
FROM employee GROUP BY branch_no HAVING count(Emp_name)>5;

-- (11) Retrieving the names of employees who manage branches and their respective branch addresses
SELECT E.emp_name AS'MANGER NAME',B.brach_address AS'BRACH ASSRESS'
FROM employee E
LEFT JOIN branch B ON B.Branch_no = E.Branch_no WHERE E.Position = 'Manager';

-- (12) Displaying the names of customers who have issued books with a rental price higher than Rs.25
SELECT customer_name AS'CUSTOMER NAME', Rental_Price AS 'PRICE' FROM IssueStatus
INNER JOIN customer ON customer.customer_id= IssueStatus.Issued_cust
INNER JOIN books ON IssueStatus.isbn_book = books.isbn WHERE Rental_Price>25;
-- additional query for price added for the Refferance of price 