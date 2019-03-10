INSERT INTO Address VALUES (1234, '17th Avenue',
  (SELECT PostalCode FROM AddressPostalCode WHERE PostalCode = 'T1W 1N6'));
INSERT INTO Address VALUES (46, 'East Broadway',
  (SELECT PostalCode FROM AddressPostalCode WHERE PostalCode = 'V6M 4H1'));
INSERT INTO Address VALUES (15, 'Bearclaw Road',
  (SELECT PostalCode FROM AddressPostalCode WHERE PostalCode = 'T0L 1E0'));
INSERT INTO Address VALUES (3008, 'Main Mall',
  (SELECT PostalCode FROM AddressPostalCode WHERE PostalCode = 'V6T 1Z4'));
INSERT INTO Address VALUES (200, 'Main Mall',
  (SELECT PostalCode FROM AddressPostalCode WHERE PostalCode = 'V6T 1Z4'));
