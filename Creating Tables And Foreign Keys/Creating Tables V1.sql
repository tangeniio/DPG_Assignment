CREATE TABLE Person (
    ID_Number int PRIMARY KEY,
    Full_Name varchar(255),
    Email varchar(255),
	Cell_No int,
	Date_Of_Birth date,
    Physical_Address varchar(255)
);

CREATE TABLE Attendee (
    Attendee_ID int PRIMARY KEY,
    Business_Reg_No varchar(255),
	Notification_No int,
	Business_Owner varchar (255)
);


CREATE TABLE SystemAdmin (
    Staff_ID int PRIMARY KEY,
	ID_Number int
);


CREATE TABLE Residence (
   Physical_Address varchar(255) PRIMARY KEY,
   House_No varchar(255),
   Suburb varchar(255),
   Region varchar(255),
);

CREATE TABLE BusinessInfo (
    Business_Reg_No varchar(255) PRIMARY KEY,
    Business_Name varchar (255),
);

CREATE TABLE Event_ (
    Event_ID int PRIMARY KEY,
    Event_Name varchar(255),
    Event_Location varchar(255),
	Event_Date date,
    Event_Time time,
	Reg_ID int
);

CREATE TABLE Category (
    Category_ID int PRIMARY KEY,
    Category_Name varchar(255),
    Event_ID int
);

CREATE TABLE Registration (
    Reg_ID int PRIMARY KEY,
    Status_of_Reg varchar(255),
    Attendee_ID int
);

CREATE TABLE Authentication_ (
    Auth_ID int PRIMARY KEY,
    Auth_Password varchar(255),
	Attendee_ID int,
    Staff_ID int
);

CREATE TABLE Transaction_ (
    Transaction_ID int PRIMARY KEY,
    Transaction_Name varchar(255),
    Transaction_Status varchar(255),
	Payment_No int,
	Bank_Card_Number int
);

CREATE TABLE Bank_Card (
    Bank_Card_Number int PRIMARY KEY,
    Cvv_Code int,
    Attendee_ID int
);

CREATE TABLE Event_Payment (
    Payment_No int PRIMARY KEY,
    Payment_Amount varchar(255),
    Event_ID int,
	Bank_Card_Number int,
	Attendee_ID int
);

CREATE TABLE Notification_ (
    Notification_No int PRIMARY KEY,
    Notification_Msg varchar (255),
    Staff_ID int,
	Attendee_ID int
);


