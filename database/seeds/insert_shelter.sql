INSERT INTO Shelter VALUES ('Broadway West', 'Broadway.West@shelters.ca', '6045550000', 20,
  (SELECT HouseNo FROM Address WHERE HouseNo = 2950),
  (SELECT Street FROM Address WHERE Street = 'W Broadway'),
  (SELECT PostalCode FROM Address WHERE PostalCode = 'V6K 2G8')
);
INSERT INTO Shelter VALUES ('Richmond South', 'Richmond.South@shelters.ca', '6045551111', 50,
  (SELECT HouseNo FROM Address WHERE HouseNo = 7790),
  (SELECT Street FROM Address WHERE Street = 'Steveston Hwy'),
  (SELECT PostalCode FROM Address WHERE PostalCode = 'V7A 1L9')
);
INSERT INTO Shelter VALUES ('Burnaby', 'Burnaby@shelters.ca', '6045552222', 30,
  (SELECT HouseNo FROM Address WHERE HouseNo = 3200),
  (SELECT Street FROM Address WHERE Street = 'Norland Ave'),
  (SELECT PostalCode FROM Address WHERE PostalCode = 'V5B 3A6')
);
INSERT INTO Shelter VALUES ('Delta', 'Delta@shelters.ca', '6045553333', 40,
  (SELECT HouseNo FROM Address WHERE HouseNo = 7500),
  (SELECT Street FROM Address WHERE Street = 'Hopcott Rd'),
  (SELECT PostalCode FROM Address WHERE PostalCode = 'V4G 1B6')
);
INSERT INTO Shelter VALUES ('Surrey South', 'Surrey.South@shelters.ca', '6045554444', 50,
  (SELECT HouseNo FROM Address WHERE HouseNo = 16748),
  (SELECT Street FROM Address WHERE Street = '50 Ave'),
  (SELECT PostalCode FROM Address WHERE PostalCode = 'V3Z 1E2')
);
