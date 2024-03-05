CREATE TABLE Locations(
Zip NVARCHAR(50) primary key NOT NULL,
City NVARCHAR(50) NOT NULL,
Neighborhood NVARCHAR(50) NULL,
Street NVARCHAR(50) NOT NULL,
HouseNumber NVARCHAR(50) NOT NULL
)

CREATE TABLE Products(
GmachCode INT primary key NOT NULL,
ProductCode INT identity(1,1) NOT NULL,
ProductName NVARCHAR(100) NULL,
ProductDescription NVARCHAR(100) NULL,
Amount NVARCHAR(50) NOT NULL,
LeftInStock NVARCHAR(50) NOT NULL,
ProductImage VARBINARY(MAX) NULL
)

CREATE TABLE Classifications(
Classifications NVARCHAR(50) primary key NOT NULL,
Amount INT NULL
)

CREATE TABLE Gmach(
GmachCode INT identity(1,1) NOT NULL,
GmachName NVARCHAR(100) NOT NULL,
Classifications NVARCHAR(50) NOT NULL,
Zip NVARCHAR(50) NOT NULL,
OpeningHours NVARCHAR(1000) NULL,
PhoneNumber NVARCHAR(20) NOT NULL,
WhatsApp NVARCHAR(20) NULL,
Email NVARCHAR(94) NULL,
Price INT NOT NULL,
MaxTime NVARCHAR(50) NOT NULL,
Constraint FK_GmachCodes
Foreign Key (GmachCode) references Products(GmachCode),
Constraint FK_Classifications
Foreign Key (Classifications) references Classifications(Classifications),
Constraint FK_Zip
Foreign Key (Zip) references Locations(Zip)
)
