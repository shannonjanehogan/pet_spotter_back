CREATE TABLE Animal (
  LicenseNo SERIAL PRIMARY KEY,
  AName char(30),
  Age int,
  Weight real,
  Gender char(1),
  SPhone char(11) NOT NULL,
  CPhone char(11),
  PickupTime timestamp,
  BName char(30) NOT NULL,
  FOREIGN KEY (CPhone) references Client,
  FOREIGN KEY (SPhone) references Shelter ON DELETE NO ACTION ON UPDATE CASCADE,
  FOREIGN KEY (PickupTime) references AnimalPickup,
  FOREIGN KEY (BName) references Breed ON DELETE NO ACTION ON UPDATE CASCADE
);
