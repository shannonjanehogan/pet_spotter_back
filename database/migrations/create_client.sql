CREATE TABLE Client (
  CName char(30),
  CHouseNo int,
  CStreet char(100),
  CPostalCode char(7),
  CPhone char(11) PRIMARY KEY,
  CEmail char(50),
  FOREIGN KEY (CHouseNo, CStreet, CPostalCode) references Address (HouseNo, Street, PostalCode)
);
