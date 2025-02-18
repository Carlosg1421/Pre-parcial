USE pentestdb;
INSERT INTO USER_TYPE (USERTYPE_Id, USERTYPE_Category, USERTYPE_Description, USERTYPE_CreatedAT, USERTYPE_UpdatedAt) VALUES
(1, 'Admin', 'Full access to the system', NOW(), NOW()),
(2, 'Pentester', 'Access to security testing modules', NOW(), NOW()),
(3, 'User', 'Standard user with limited access', NOW(), NOW()),
(4, 'Guest', 'Temporary access with restrictions', NOW(), NOW()),
(5, 'Auditor', 'Can review security logs', NOW(), NOW()),
(6, 'Manager', 'Supervises security activities', NOW(), NOW()),
(7, 'Developer', 'Access to code and testing environment', NOW(), NOW()),
(8, 'Support', 'Provides IT assistance', NOW(), NOW()),
(9, 'Analyst', 'Monitors security incidents', NOW(), NOW()),
(10, 'Researcher', 'Studies security vulnerabilities', NOW(), NOW());

INSERT INTO USER_ALL (USER_Id, USER_FirstName, USER_LastName, USER_UserName, USER_Password, USER_Token, USER_City, USER_Gender, USER_MaritialStatus, USER_CompanyType, USER_Address, USERTYPE_Id) VALUES
(1, 'Alice', 'Smith', 'asmith', 'P@ssw0rd1', 'token123456', 'New York', 'Female', 'Single', 'Private', '123 Street A', 1),
(2, 'Bob', 'Johnson', 'bjohnson', 'S3curePass!', 'token789012', 'Los Angeles', 'Male', 'Married', 'Public', '456 Street B', 2),
(3, 'Charlie', 'Brown', 'cbrown', 'Br0wnie123', 'token345678', 'Chicago', 'Male', 'Do not specify', 'Private', '789 Street C', 3),
(4, 'Diana', 'Miller', 'dmiller', 'P@ss1234', 'token901234', 'Houston', 'Female', 'Widowed', 'Public', '321 Street D', 4),
(5, 'Evan', 'Davis', 'edavis', 'Qwerty987', 'token567890', 'Seattle', 'Male', 'Divorced', 'Private', '654 Street E', 5),
(6, 'Fiona', 'Garcia', 'fgarcia', 'Secur3P@ss', 'token234567', 'Boston', 'Female', 'Single', 'Public', '987 Street F', 6),
(7, 'George', 'Martinez', 'gmartinez', 'Admin123', 'token890123', 'Miami', 'Male', 'Married', 'Private', '111 Street G', 7),
(8, 'Hannah', 'Wilson', 'hwilson', 'HannahW99', 'token567234', 'Denver', 'Female', 'Single', 'Public', '222 Street H', 8),
(9, 'Ian', 'Thomas', 'ithomas', 'ITsecure#1', 'token765432', 'Austin', 'Male', 'Do not specify', 'Private', '333 Street I', 9),
(10, 'Julia', 'Roberts', 'jroberts', 'JuliaSecure', 'token321098', 'San Francisco', 'Female', 'Divorced', 'Public', '444 Street J', 10);

INSERT INTO REGISTRY_ACTIVITY (REGISTRY_Id, USER_Id, REGISTRY_Action, REGISTRY_Date, REGISTRY_IPaddress) VALUES
(1, 1, 'Access', NOW(), '192.168.1.1'),
(2, 2, 'Denied', NOW(), '192.168.1.2'),
(3, 3, 'Access', NOW(), '192.168.1.3'),
(4, 4, 'Drop', NOW(), '192.168.1.4'),
(5, 5, 'Access', NOW(), '192.168.1.5'),
(6, 6, 'Denied', NOW(), '192.168.1.6'),
(7, 7, 'Access', NOW(), '192.168.1.7'),
(8, 8, 'Drop', NOW(), '192.168.1.8'),
(9, 9, 'Access', NOW(), '192.168.1.9'),
(10, 10, 'Denied', NOW(), '192.168.1.10');
