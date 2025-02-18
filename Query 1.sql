DROP DATABASE IF EXISTS parcial_plan_tienda;
CREATE DATABASE parcial_plan_tienda;
USE parcial_plan_tienda;

-- Tabla REGION
CREATE TABLE REGION (
    REGION_CODE INT PRIMARY KEY,
    REGION_DESCRIPT VARCHAR(255) NOT NULL,
    REGION_TYPE ENUM('Norte', 'Sur', 'Este', 'Oeste') NOT NULL,  -- Tipo lista
    UNIQUE (REGION_DESCRIPT) -- Columna única
);

-- Tabla STORE
CREATE TABLE STORE (
    STORE_CODE INT PRIMARY KEY,
    STORE_NAME VARCHAR(255) NOT NULL,
    STORE_YTD_SALES DECIMAL(10,2),
    REGION_CODE INT,
    IS_OPEN BOOLEAN DEFAULT TRUE,  -- Tipo sí/no
    UNIQUE (STORE_NAME), -- Columna única
    FOREIGN KEY (REGION_CODE) REFERENCES REGION(REGION_CODE)
);

-- Tabla JOB
CREATE TABLE JOB (
    JOB_CODE INT PRIMARY KEY,
    JOB_DESCRIPTION VARCHAR(255) NOT NULL,
    JOB_BASE_PAY DECIMAL(10,2) NOT NULL,
    JOB_LEVEL ENUM('Junior', 'Mid', 'Senior') NOT NULL, -- Tipo lista
    UNIQUE (JOB_DESCRIPTION) -- Columna única
);

-- Tabla EMPLOYEE
CREATE TABLE EMPLOYEE (
    EMP_CODE INT PRIMARY KEY,
    EMP_TITLE VARCHAR(100),
    EMP_LNAME VARCHAR(100) NOT NULL,
    EMP_FNAME VARCHAR(100) NOT NULL,
    EMP_INITIAL CHAR(1),
    EMP_DOB DATE,
    JOB_CODE INT,
    STORE_CODE INT,
    EMP_TYPE ENUM('Full-Time', 'Part-Time', 'Contract') NOT NULL, -- Tipo lista
    IS_ACTIVE BOOLEAN DEFAULT TRUE,  -- Tipo sí/no
    UNIQUE (EMP_LNAME, EMP_FNAME, EMP_DOB), -- Columna única combinada
    FOREIGN KEY (JOB_CODE) REFERENCES JOB(JOB_CODE),
    FOREIGN KEY (STORE_CODE) REFERENCES STORE(STORE_CODE)
);
