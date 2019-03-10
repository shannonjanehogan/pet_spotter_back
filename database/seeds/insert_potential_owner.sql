INSERT INTO PotentialOwner (CPhone, PetsOwned) VALUES (
  (SELECT CPhone FROM Client WHERE CPhone = '7884321987'),
  2
);
