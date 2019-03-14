CREATE TABLE NameToCredit (
  Name char(30) DEFAULT 'Anonymous',
  Description char(50),
  TransactionID int,
  PRIMARY KEY (Name, TransactionID),
  FOREIGN KEY (TransactionID) references Donation
                  ON DELETE CASCADE
);
