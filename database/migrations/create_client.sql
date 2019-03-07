CREATE TABLE Client (
  CName: char(30),
  CHouseNo: int,
  CStreet: char(100),
  CPostalCode: char(7),
  CPhone: char(11),
  CEmail: char(50)
  PRIMARY KEY (CPhone),
  FOREIGN KEY (CHouseNo, CStreet, CPostalCode) references Address (HouseNo, Street, PostalCode)
);
