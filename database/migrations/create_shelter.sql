CREATE TABLE Shelter (
  SName char(30),
  SEmail char(50),
  SPhone char (11) PRIMARY KEY,
  Capacity int,
  SHouseNo int               NOT NULL,
  SStreet char(100)          NOT NULL,
  SPostalCode char(7)        NOT NULL,
  UNIQUE (SHouseNo, SStreet, SPostalCode),
  FOREIGN KEY (SHouseNo, SStreet, SPostalCode) references Address (HouseNo, Street, PostalCode)
);
