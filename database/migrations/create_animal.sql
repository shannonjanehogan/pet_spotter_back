CREATE TABLE Animal (
  LicenseNo: int,
  AName: char(30),
  Age: int,
  Weight: real,
  Gender: char(1),
  SPhone: char(11)                NOT NULL,
  CPhone: char(11),
  PickupTime: timestamp,
  BName: char(30)                 NOT NULL,
  PRIMARY KEY (LicenseNo),
  FOREIGN KEY (CPhone) references Client,
  FOREIGN KEY (SPhone) references Shelter
  ON DELETE NO ACTION
  ON UPDATE CASCADE,
  FOREIGN KEY (PickupTime) references AnimalPickup,
  FOREIGN KEY (BName) references Breed
  ON DELETE NO ACTION
  ON UPDATE CASCADE,
);
