INSERT INTO NameToCredit (Name, Description, TransactionID) VALUES (
  $1,
  $2,
  (SELECT TransactionID FROM Donation WHERE TransactionID = $3)
);
