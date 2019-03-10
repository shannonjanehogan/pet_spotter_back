INSERT INTO Shelter VALUES (
  'Vancouver Humane Society',
  'vanhumanesociety@gmail.com',
  '6048324820',
  200,
  (SELECT HouseNo FROM Address WHERE HouseNo = 46),
  (SELECT Street FROM Address WHERE Street = 'East Broadway'),
  (SELECT PostalCode FROM Address WHERE PostalCode = 'V6M 4H1')
);
INSERT INTO Shelter VALUES (
  'The Pipsqueakery',
  'pipsqueak@gmail.com',
  '4031257869',
  80,
  (SELECT HouseNo FROM Address WHERE HouseNo = 15),
  (SELECT Street FROM Address WHERE Street = 'Bearclaw Road'),
  (SELECT PostalCode FROM Address WHERE PostalCode = 'T0L 1E0')
);
