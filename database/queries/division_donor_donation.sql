SELECT CPhone FROM Donor D
WHERE NOT EXISTS (
    (SELECT SPhone FROM Shelter)
    EXCEPT
    (
        SELECT Dt.SPhone
        FROM Donation Dt
        WHERE Dt.CPhone = D.CPhone
    )
);