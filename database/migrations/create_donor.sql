CREATE TABLE Donor (
  CPhone: char(11),
  PRIMARY KEY (CPhone),
  FOREIGN KEY (CPhone) references Client
);
