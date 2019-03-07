CREATE TABLE PotentialOwner (
  CPhone char(11) PRIMARY KEY,
  PetsOwned int,
  FOREIGN KEY (CPhone) references Client
);
