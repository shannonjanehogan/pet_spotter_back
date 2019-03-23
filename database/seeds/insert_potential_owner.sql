INSERT INTO PotentialOwner (CPhone, PetsOwned) VALUES (
  (SELECT CPhone FROM Client WHERE CPhone = '7884321987'),
  2
);
INSERT INTO PotentialOwner (CPhone, PetsOwned) VALUES (
  (SELECT CPhone FROM Client WHERE CPhone = '7785550000'),
  1
);
INSERT INTO PotentialOwner (CPhone, PetsOwned) VALUES (
  (SELECT CPhone FROM Client WHERE CPhone = '7785551111'),
  0
);
INSERT INTO PotentialOwner (CPhone, PetsOwned) VALUES (
  (SELECT CPhone FROM Client WHERE CPhone = '7785552222'),
  3
);
INSERT INTO PotentialOwner (CPhone, PetsOwned) VALUES (
  (SELECT CPhone FROM Client WHERE CPhone = '7785553333'),
  1
);
INSERT INTO PotentialOwner (CPhone, PetsOwned) VALUES (
  (SELECT CPhone FROM Client WHERE CPhone = '7785554444'),
  1
);