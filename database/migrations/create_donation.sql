CREATE TABLE Donation (
  TransactionID SERIAL PRIMARY KEY,
  Amount real,
  Date date,
  CPhone char(11)               NOT NULL,
  SPhone char(11)               NOT NULL,
  FOREIGN KEY (CPhone) references Client
                    ON DELETE NO ACTION
                    ON UPDATE CASCADE,
  FOREIGN KEY (SPhone) references Shelter
                  ON DELETE NO ACTION
                  ON UPDATE CASCADE
);
