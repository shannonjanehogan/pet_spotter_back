UPDATE client
SET
    CName = $1,
    CHouseNo = $2,
    CStreet = $3,
    CPostalCode = $4,
    CEmail = $5
WHERE CPhone = $6;
