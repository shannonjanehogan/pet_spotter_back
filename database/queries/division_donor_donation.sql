SELECT C.CPhone, C.CName, C.CEmail  FROM Donor D, Client C
WHERE C.CPhone = D.CPhone AND NOT EXISTS (
    (SELECT SPhone FROM Shelter)
    EXCEPT
    (
        SELECT Dt.SPhone
        FROM Donation Dt
        WHERE Dt.CPhone = D.CPhone
    )
);
