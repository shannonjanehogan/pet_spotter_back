UPDATE client
SET
    CName = $1,
    CHouseNo = (SELECT HouseNo FROM Address WHERE HouseNo = $2),
    CStreet = (SELECT Street FROM Address WHERE Street = $3),
    CPostalCode = (SELECT PostalCode FROM AddressPostalCode WHERE PostalCode = $4),
    CEmail = $5
WHERE CPhone = $6;
