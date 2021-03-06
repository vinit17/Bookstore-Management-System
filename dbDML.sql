


INSERT INTO USERS_DETAILS VALUES('1','HITESH','JAVIYA','ARLINGTON','COOPER ST','123456789');
INSERT INTO USERS_DETAILS VALUES('2','VINIT','PAREKH','HOUSTON','CENTER ST','854698742');
INSERT INTO USERS_DETAILS VALUES('3','JOHN','SMITH','DALLAS','MESUITE ST','369874125');
INSERT INTO USERS_DETAILS VALUES('4','SHELDON','COOPER','NEW JERSEY','COLLINS ST','147896354');
INSERT INTO USERS_DETAILS VALUES('5','LEONARD','SINGH','NEW YORK','WEFIRST ST','125478967');
INSERT INTO USERS_DETAILS VALUES('6','HOWARD','GREAME','PASADENA','McARTHURST','752496785');
INSERT INTO USERS_DETAILS VALUES('7','PENNY','JOSE','SAN JOSE','POWELL ST','551548685');
INSERT INTO USERS_DETAILS VALUES('8','MIKE','ROSS','FLORIDA','CEDAR DR','696635455');
INSERT INTO USERS_DETAILS VALUES('9','HARVEY','SPECTER','CHICAGO','SILK DR','458796322');
INSERT INTO USERS_DETAILS VALUES('10','LOUIS','LITT','BUFFALO','NORMAND ST','965644857');
INSERT INTO USERS_DETAILS VALUES('11','JON','SNOW','BUFFALO','NORMAND ST','865644857');
INSERT INTO USERS_DETAILS VALUES('12','ROBB','STARK','BUFFALO','NORMAND ST','765644857');
INSERT INTO USERS_DETAILS VALUES('13','ARYA','STARK','BUFFALO','NORMAND ST','665644857');
INSERT INTO USERS_DETAILS VALUES('14','SANSA','STARK','BUFFALO','NORMAND ST','565644857');



INSERT INTO GENRE VALUES('1','REFERENCE');
INSERT INTO GENRE VALUES('2','FICTION');
INSERT INTO GENRE VALUES('3','OTHERS');
INSERT INTO GENRE VALUES('4','THRILLER');
INSERT INTO GENRE VALUES('5','BIOGRAPHY');
INSERT INTO GENRE VALUES('6','HISTORY');
INSERT INTO GENRE VALUES('7','SCIENCE');
INSERT INTO GENRE VALUES('8','MATH');




INSERT INTO BOOKS_DETAILS VALUES('12345','DATABASE SYSTEM','ELMASRI',4,'1','3RD RACK',5);
INSERT INTO BOOKS_DETAILS VALUES('23456','ALGORITHMS','CORMEN',3,'3','5TH RACK',7);
INSERT INTO BOOKS_DETAILS VALUES('34567','JAVA PROGRAMMING','LEE',3,'5','4TH RACK',3);
INSERT INTO BOOKS_DETAILS VALUES('45678','OPERATING SYSTEMS','SIDNEY',5,'2','3RD RACK',5);
INSERT INTO BOOKS_DETAILS VALUES('56789','COMPILERS','RIVEST',2,'1','2ND RACK',4);
INSERT INTO BOOKS_DETAILS VALUES('67890','COMPUTER NETWORKS','MATHEW',6,'3','1ST RACK',6);
INSERT INTO BOOKS_DETAILS VALUES('78901','COMPUTER GRAPHICS','ASH',4,'4','4TH RACK',15);
INSERT INTO BOOKS_DETAILS VALUES('89012','BIG DATA ANALYTICS','NAVATHE',3,'3','2ND RACK',12);
INSERT INTO BOOKS_DETAILS VALUES('90123','SOFTWARE ENGINEERING','ROBB',2,'5','3RD RACK',8);
INSERT INTO BOOKS_DETAILS VALUES('01234','DISCRETE MATHEMATICS','EINSTEIN',4,'4','1ST RACK',3);


INSERT INTO CUSTOMER VALUES('1','MEMBERSHIP');
INSERT INTO CUSTOMER VALUES('2','REGULAR');
INSERT INTO CUSTOMER VALUES('3','MEMBERSHIP');
INSERT INTO CUSTOMER VALUES('4','MEMBERSHIP');
INSERT INTO CUSTOMER VALUES('7','REGULAR');
INSERT INTO CUSTOMER VALUES('8','REGULAR');
INSERT INTO CUSTOMER VALUES('9','MEMBERSHIP');
INSERT INTO CUSTOMER VALUES('10','REGULAR');




INSERT INTO STAFF VALUES('5',3000);
INSERT INTO STAFF VALUES('6',4000);
INSERT INTO STAFF VALUES('11',5000);
INSERT INTO STAFF VALUES('12',6000);
INSERT INTO STAFF VALUES('13',7000);
INSERT INTO STAFF VALUES('14',8000);





INSERT INTO PURCHASE VALUES('11111','1','12345','06-nov-2016',34);
INSERT INTO PURCHASE VALUES('22222','3','12345','07-nov-2016',25);
INSERT INTO PURCHASE VALUES('33333','5','90123','08-nov-2016',16);
INSERT INTO PURCHASE VALUES('44444','7','23456','10-nov-2016',18);
INSERT INTO PURCHASE VALUES('55555','9','56789','12-nov-2016',28);
INSERT INTO PURCHASE VALUES('66666','7','89012','10-nov-2016',30);
INSERT INTO PURCHASE VALUES('77777','8','67890','15-nov-2016',15);





INSERT INTO RENT VALUES('333','1','12345','12-nov-2016','15-nov-2016',10);
INSERT INTO RENT VALUES('336','2','23456','10-nov-2016','17-nov-2016',10);
INSERT INTO RENT VALUES('339','1','89012','11-nov-2016','30-nov-2016',8);
INSERT INTO RENT VALUES('363','6','90123','13-nov-2016','20-nov-2016',7);
INSERT INTO RENT VALUES('366','8','67890','13-nov-2016','22-nov-2016',8);
INSERT INTO RENT VALUES('369','10','45678','10-nov-2016','15-nov-2016',10);
INSERT INTO RENT VALUES('639','3','34567','10-nov-2016','17-nov-2016',9);
INSERT INTO RENT VALUES('633','5','01234','13-nov-2016','26-nov-2016',7);


INSERT INTO PUBLISHER VALUES('1234','12345','NOBLE PUBLISHER',3);
INSERT INTO PUBLISHER VALUES('2345','34567','WILEY',1);
INSERT INTO PUBLISHER VALUES('3456','89012','MACGRAW HILL',4);
INSERT INTO PUBLISHER VALUES('4567','67890','NOBLE PUBLISHER',2);
INSERT INTO PUBLISHER VALUES('5678','45678','WILEY',2);



INSERT INTO LOGIN_DETAILS VALUES('1','ABCD30');
INSERT INTO LOGIN_DETAILS VALUES('2','BCDE40');
INSERT INTO LOGIN_DETAILS VALUES('3','CDEF50');
INSERT INTO LOGIN_DETAILS VALUES('4','DEFG60');
INSERT INTO LOGIN_DETAILS VALUES('5','EFGH70');
INSERT INTO LOGIN_DETAILS VALUES('6','FGHI80');
INSERT INTO LOGIN_DETAILS VALUES('7','GHIJ90');
INSERT INTO LOGIN_DETAILS VALUES('8','HIJK00');
INSERT INTO LOGIN_DETAILS VALUES('9','IJKL10');
INSERT INTO LOGIN_DETAILS VALUES('10','JKLM20');






INSERT INTO COPY VALUES('001','12345','RENT',10);
INSERT INTO COPY VALUES('002','12345','PURCHASE',35);
INSERT INTO COPY VALUES('003','34567','RENT',8);
INSERT INTO COPY VALUES('004','12345','RENT',8);
INSERT INTO COPY VALUES('123','23456','PURCHASE',25);
INSERT INTO COPY VALUES('124','34567','RENT',7);
INSERT INTO COPY VALUES('125','45678','RENT',10);
INSERT INTO COPY VALUES('126','45678','PURCHASE',45);
INSERT INTO COPY VALUES('127','56789','RENT',12);
INSERT INTO COPY VALUES('128','56789','RENT',6);
INSERT INTO COPY VALUES('129','67890','PURCHASE',35);
INSERT INTO COPY VALUES('130','67890','RENT',9);
INSERT INTO COPY VALUES('131','78901','PURCHASE',30);
INSERT INTO COPY VALUES('132','78901','RENT',9);



SELECT COUNT(*) AS NO_OF_RECORDS_IN_USERS_DETAILS FROM USERS_DETAILS;
SELECT COUNT(*) AS NO_OF_RECORDS_IN_BOOKS_DETAILS FROM BOOKS_DETAILS;
SELECT COUNT(*) AS NO_OF_RECORDS_IN_GENRE FROM GENRE;
SELECT COUNT(*) AS NO_OF_RECORDS_IN_STAFF FROM STAFF;
SELECT COUNT(*) AS NO_OF_RECORDS_IN_CUSTOMER FROM CUSTOMER;
SELECT COUNT(*) AS NO_OF_RECORDS_IN_LOGIN_DETAILS FROM LOGIN_DETAILS;
SELECT COUNT(*) AS NO_OF_RECORDS_IN_RENT FROM RENT;
SELECT COUNT(*) AS NO_OF_RECORDS_IN_PURCHASE FROM PURCHASE;
SELECT COUNT(*) AS NO_OF_RECORDS_IN_COPY FROM COPY;
