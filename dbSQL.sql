/*(QUERY 1)LIST ALL THE USERS NAMES AND THEIR TOTAL PURCHASE AFTER 10TH NOVEMBER*/

SELECT F_NAME,SUM(PRICE) 
FROM PURCHASE P INNER JOIN USERS_DETAILS U
ON P.U_ID=U.U_ID
AND P.P_DATE='10-nov-2016'
GROUP BY F_NAME
ORDER BY F_NAME;

/*===========OUTPUT==============================
F_NAME     SUM(PRICE)
---------- ----------
PENNY              48
==================================================*/

/*(QUERY 2)LIST ALL THE CURRENT RENTER AND THE BOOKS DETAILS*/

SELECT F_NAME AS RENTER,TITLE,VALID_TILL
FROM RENT R ,BOOKS_DETAILS B,USERS_DETAILS U
WHERE R.ISBN=B.ISBN 
AND VALID_TILL>CURRENT_DATE
AND R.U_ID=U.U_ID
ORDER BY F_NAME;

/*===========OUTPUT==============================
RENTER     TITLE                     VALID_TILL
---------- ------------------------- ---------
HITESH     BIG DATA ANALYTICS        30-NOV-16
HITESH     DATABASE SYSTEM           15-NOV-16
HOWARD     SOFTWARE ENGINEERING      20-NOV-16
JOHN       JAVA PROGRAMMING          17-NOV-16
LEONARD    DISCRETE MATHEMATICS      26-NOV-16
LOUIS      OPERATING SYSTEMS         15-NOV-16
MIKE       COMPUTER NETWORKS         22-NOV-16
VINIT      ALGORITHMS                17-NOV-16
==================================================*/

/*(QUERY 3)LIST NAMES AND SALARY OF ALL STAFF MEMBERS*/

SELECT F_NAME, SALARY
FROM USERS_DETAILS U INNER JOIN STAFF S
ON U_ID=S_ID
ORDER BY F_NAME;

/*===========OUTPUT==============================
F_NAME         SALARY
---------- ----------
ARYA             7000
HOWARD           4000
JON              5000
LEONARD          3000
ROBB             6000
SANSA            8000
==================================================*/


/*(QUERY 4) LIST TITLE,ISBN,EDITION AND NUMBER OF EACH BOOK SOLD FOR A PARTICULAR MONTH WITH MIN OF 2 BOOKS SOLD*/

SELECT TITLE,P.ISBN,EDITION,COUNT(*) AS NO_OF_BOOKS_SOLD
FROM PURCHASE P ,BOOKS_DETAILS B,PUBLISHER PB
WHERE P.ISBN=B.ISBN 
AND P.ISBN=PB.ISBN
AND P_DATE BETWEEN '01-nov-2016' AND '30-nov-2016'
GROUP BY P.ISBN,TITLE,EDITION
HAVING COUNT(*) >1
ORDER BY P.ISBN;

/*===========OUTPUT================================================
TITLE                     ISBN          EDITION NO_OF_BOOKS_SOLD
------------------------- ---------- ---------- ----------------
DATABASE SYSTEM           12345               3                2

==================================================================*/

/*(QUERY 5) LIST THE BOOKS AVAILABLE FOR RENTING WITH THE NUMBER OF COPIES MORE THAN 1*/

SELECT TITLE,C.ISBN,P.NAME,COUNT(*) AS NO_OF_COPIES
FROM BOOKS_DETAILS B,COPY C,PUBLISHER P
WHERE B.ISBN=C.ISBN
AND B.ISBN=P.ISBN
AND C.TYPE='RENT'
GROUP BY TITLE,C.ISBN,P.NAME
HAVING COUNT(*)>1
ORDER BY TITLE;

/*===========OUTPUT================================================
TITLE                     ISBN       NAME            NO_OF_COPIES
------------------------- ---------- --------------- -----------
DATABASE SYSTEM           12345      NOBLE PUBLISHER           2
JAVA PROGRAMMING          34567      WILEY                     2

==================================================================*/

/*(QUERY 6) LIST THE BOOKS RENTED BY 'HITESH JAVIYA' WITH THE RENTED ON AND VALID_TILL DETAILS*/

SELECT TITLE AS BOOK_NAME,B.ISBN,R_DATE AS RENTED_ON,VALID_TILL
FROM RENT R,USERS_DETAILS U,BOOKS_DETAILS B
WHERE R.U_ID=U.U_ID
AND R.ISBN=B.ISBN
AND F_NAME='HITESH' AND L_NAME='JAVIYA'
ORDER BY VALID_TILL;


/*===========OUTPUT================================================

BOOK_NAME                 ISBN       RENTED_ON VALID_TILL
------------------------- ---------- --------- ---------
DATABASE SYSTEM           12345      12-NOV-16 15-NOV-16
BIG DATA ANALYTICS        89012      11-NOV-16 30-NOV-16

==================================================================*/

/*(VIEW OUTPUT)DAILY TOTAL PURCHASE DETAILS*/

SELECT * FROM DAILY_PURCHASE;

/*===========OUTPUT================================================
P_DATE      COUNT(*) SUM(PRICE)
--------- ---------- ----------
10-NOV-16          2         48
==================================================================*/

 






