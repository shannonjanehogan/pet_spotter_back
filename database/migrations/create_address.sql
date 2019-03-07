CREATE TABLE Address (
  HouseNo: int,
  Street: char(100),
  PostalCode: char(7),
  PRIMARY KEY (HouseNo, Street, PostalCode),
  FOREIGN KEY (PostalCode) references AddressPostalCode
);
