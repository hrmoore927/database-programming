DROP DATABASE IF EXISTS SFRC_heathermoore;
CREATE DATABASE SFRC_heathermoore;
USE SFRC_heathermoore;

CREATE TABLE clients (
    clientID    INT PRIMARY KEY AUTO_INCREMENT,
    firstName   VARCHAR(50) NOT NULL,
    lastName    VARCHAR(50) NOT NULL,
    address VARCHAR(100)    NOT NULL,
    city    VARCHAR(60) NOT NULL,
    state   CHAR(2) NOT NULL,
    zip VARCHAR(10) NOT NULL,
    phone   VARCHAR(15) NOT NULL,
    email   VARCHAR(50) UNIQUE
);

CREATE TABLE properties (
    propertyID  VARCHAR(10) PRIMARY KEY,
    building    VARCHAR(20) NOT NULL,
    bedroom VARCHAR(10) NOT NULL,
    view    VARCHAR(10) NOT NULL,
    pets    CHAR(1) NOT NULL,
    internet    CHAR(1) NOT NULL
);

CREATE TABLE owners (
    ownerID INT PRIMARY KEY AUTO_INCREMENT,
    propertyID  VARCHAR(10) NOT NULL,
    firstName   VARCHAR(50) NOT NULL,
    lastName    VARCHAR(50) NOT NULL,
    address VARCHAR(100)    NOT NULL,
    city    VARCHAR(60) NOT NULL,
    state   CHAR(2) NOT NULL,
    zip VARCHAR(10) NOT NULL,
    phone   VARCHAR(15) NOT NULL,
    email   VARCHAR(50) UNIQUE,
    CONSTRAINT owners_fk_properties
        FOREIGN KEY (propertyID)
        REFERENCES properties (propertyID)
);

CREATE TABLE rates (
    rateID  INT PRIMARY KEY AUTO_INCREMENT,
    propertyID  VARCHAR(10) NOT NULL,
    rate    INT NOT NULL,
    startDate    DATE    NOT NULL,
    endDate DATE    NOT NULL,
    CONSTRAINT rates_fk_properties
        FOREIGN KEY (propertyID)
        REFERENCES properties (propertyID)
);

CREATE TABLE transactions (
    transactionID   INT PRIMARY KEY AUTO_INCREMENT,
    clientID    INT NOT NULL,
    propertyID  VARCHAR(10) NOT NULL,
    arrival DATE    NOT NULL,
    departure    DATE    NOT NULL,
    deposit INT NOT NULL,
    petDeposit  INT,
    petType VARCHAR(10),
    cleaningFee INT NOT NULL,
    rentalFee   INT NOT NULL,
    paymentType VARCHAR(10) NOT NULL,
    CONSTRAINT transactions_fk_clients
        FOREIGN KEY (clientID)
        REFERENCES clients (clientID),
    CONSTRAINT transactions_fk_properties
        FOREIGN KEY (propertyID)
        REFERENCES properties (propertyID)
);

CREATE INDEX clients_ix_lastName
    ON clients (lastName);