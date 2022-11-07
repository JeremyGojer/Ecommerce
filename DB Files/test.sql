DROP TABLE IF EXISTS ROLES;
DROP TABLE IF EXISTS USERS;
DROP TABLE IF EXISTS PRODUCTS;
DROP TABLE IF EXISTS PAYMENTS;
DROP TABLE IF EXISTS ORDERDETAILS;
DROP TABLE IF EXISTS ORDERS;

CREATE TABLE ROLES(ROLEID INT PRIMARY KEY,ROLENAME VARCHAR(30));

CREATE TABLE USERS(USERID INT PRIMARY KEY, USERNAME VARCHAR(30),PASSWORD VARCHAR(16), ROLEID INT, FOREIGN KEY (ROLEID) REFERENCED BY ROLES(ROLEID));

CREATE TABLE PRODUCTS(PRODUCTID INT PRIMARY KEY, PRODUCTNAME VARCHAR(50), PRODUCTPRICE INT, SELLERID INT, FOREIGN KEY (SELLERID) REFERENCED BY USERS(USERID));

CREATE TABLE ORDERS(PAYMENTID INT PRIMARY KEY,PAYMENTDATETIME DATETIME, TRANSACTIONID VARCHAR(20));

CREATE TABLE ORDERDETAILS(ORDERID INT PRIMARY KEY, PRODUCTNAME VARCHAR(50), PRODUCTPRICE INT)

CREATE TABLE ORDERS(ORDERID INT PRIMARY KEY,PRODUCTID INT, ORDERDATETIME DATETIME, CUSTOMERID INT, SELLERID INT, PAYMENTID INT);

