INSERT INTO Address VALUES
  ($1, $2,
    (SELECT PostalCode FROM AddressPostalCode WHERE PostalCode = $3)
  );
