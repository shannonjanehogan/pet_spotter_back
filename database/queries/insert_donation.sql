INSERT INTO Donation (Amount, Date, CPhone, SPhone) VALUES (
  $1,
  to_date($2, 'yyyy-mm-dd'),
  (SELECT CPhone FROM Client WHERE CPhone = $3),
  (SELECT SPhone FROM Shelter WHERE SPhone = $4)
) RETURNING TransactionID;
