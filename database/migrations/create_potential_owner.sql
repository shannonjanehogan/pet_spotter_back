CREATE TABLE PotentialOwner (
  CPhone char(11),
  PetsOwned int,
  PRIMARY KEY (CPhone),
  FOREIGN KEY (CPhone) references Client
);
