INSERT INTO Address VALUES (2950, "W Broadway", (SELECT PostalCode FROM AddressPostalCode WHERE PostalCode = "V6K 2G8"));
INSERT INTO Address VALUES (7790, "Steveston Hwy", (SELECT PostalCode FROM AddressPostalCode WHERE PostalCode = "V7A 1L9"));
INSERT INTO Address VALUES (3200, "Norland Ave", (SELECT PostalCode FROM AddressPostalCode WHERE PostalCode = "V5B 3A6"));
INSERT INTO Address VALUES (7500, "Hopcott Rd", (SELECT PostalCode FROM AddressPostalCode WHERE PostalCode = "V4G 1B6"));
INSERT INTO Address VALUES (16748, "50 Ave", (SELECT PostalCode FROM AddressPostalCode WHERE PostalCode = "V3Z 1E2"));
INSERT INTO Address VALUES (2747, "W 31st Ave", (SELECT PostalCode FROM AddressPostalCode WHERE PostalCode = "V6L 3K8"));
INSERT INTO Address VALUES (641, "17st Ave SW", (SELECT PostalCode FROM AddressPostalCode WHERE PostalCode = "T2S 0B5"));
INSERT INTO Address VALUES (2305, "Danforth Ave", (SELECT PostalCode FROM AddressPostalCode WHERE PostalCode = "M4C 1K7"));
INSERT INTO Address VALUES (5450, "Keith Rd", (SELECT PostalCode FROM AddressPostalCode WHERE PostalCode = "V7W 2N2"));
INSERT INTO Address VALUES (6230, "Thunderbird Blvd", (SELECT PostalCode FROM AddressPostalCode WHERE PostalCode = "V6T 1Z4"));
INSERT INTO Address VALUES (4715, "53a St", (SELECT PostalCode FROM AddressPostalCode WHERE PostalCode = "V4K 3V4"));
INSERT INTO Address VALUES (815, "Kennedy St", (SELECT PostalCode FROM AddressPostalCode WHERE PostalCode = "V3M 1R8"));

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
