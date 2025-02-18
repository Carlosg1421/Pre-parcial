CREATE DATABASE pentestdb;

USE pentestdb;

CREATE TABLE USER_TYPE (
	USERTYPE_Id INT PRIMARY KEY,
    USERTYPE_Category VARCHAR(100) NOT NULL,
    USERTYPE_Description VARCHAR(255) NOT NULL,
    USERTYPE_CreatedAT datetime,
    USERTYPE_UpdatedAt datetime
);

CREATE TABLE USER_ALL (
	USER_Id INT PRIMARY KEY,
    USER_FirstName VARCHAR(100) NOT NULL,
	USER_LastName VARCHAR(100) NOT NULL,
    USER_UserName VARCHAR(50) NOT NULL,
    USER_Password VARCHAR(50) NOT NULL,
    USER_Token VARCHAR(100) NOT NULL,
    USER_City VARCHAR(100) NOT NULL,
    USER_Gender ENUM('Male', 'Female', 'Do not specify') NOT NULL,
    USER_MaritialStatus ENUM('Single', 'Married', 'Divorced', 'Widowed', 'Do not specify') NOT NULL,
    USER_CompanyType ENUM('Public', 'Private') NOT NULL,
    USER_Address VARCHAR(100),
    USERTYPE_Id INT,
	FOREIGN KEY (USERTYPE_Id) REFERENCES USER_TYPE(USERTYPE_Id)
);



CREATE TABLE REGISTRY_ACTIVITY (
	REGISTRY_Id INT PRIMARY KEY,
    USER_Id INT,
    REGISTRY_Action ENUM('Access','Denied','Drop'),
    REGISTRY_Date datetime,
    REGISTRY_IPaddress VARCHAR(50) NOT NULL,
    UNIQUE (REGISTRY_IPaddress),
    FOREIGN KEY (USER_Id) REFERENCES USER_ALL(USER_Id)
);
