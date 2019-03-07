CREATE TABLE Donor (
  CPhone char(11) PRIMARY KEY,
  FOREIGN KEY (CPhone) references Client
);
