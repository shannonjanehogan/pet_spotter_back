INSERT INTO NameToCredit (Name, Description, TransactionID) VALUES (
  'Charlie',
  'In Memory of the best dog ever',
  (SELECT TransactionID FROM Donation WHERE CPhone = '7884321987')
);
