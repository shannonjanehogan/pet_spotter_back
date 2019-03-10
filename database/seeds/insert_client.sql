INSERT INTO Client VALUES (
  'Hermione Granger',
  (SELECT HouseNo FROM Address WHERE HouseNo = 3008),
  (SELECT Street FROM Address WHERE HouseNo = 3008),
  (SELECT PostalCode FROM Address WHERE HouseNo = 3008),
  '7884321987',
  'hgranger@gmail.com'
);
