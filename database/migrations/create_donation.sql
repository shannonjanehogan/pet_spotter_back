CREATE TABLE Donation (
  TransactionID: char(30),
  Amount: real,
  Date: date,
  SPhone: char(11)               NOT NULL,
  CPhone: char(11)               NOT NULL,
  PRIMARY KEY (TransactionID),
  FOREIGN KEY (CPhone) references Client
                    ON DELETE NO ACTION
                    ON UPDATE CASCADE,
  FOREIGN KEY (SPhone) references Shelter
                  ON DELETE NO ACTION
                  ON UPDATE CASCADE
);
