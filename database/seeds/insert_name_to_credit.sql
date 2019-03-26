INSERT INTO NameToCredit (Name, Description, TransactionID) VALUES (
  'Charlie',
  'In Memory of the best dog ever',
  (SELECT TransactionID FROM Donation WHERE TransactionID = 1)
);
INSERT INTO NameToCredit (Name, Description, TransactionID) VALUES (
  'Anonymous',
  NULL,
  (SELECT TransactionID FROM Donation WHERE TransactionID = 2)
);
INSERT INTO NameToCredit (Name, Description, TransactionID) VALUES (
  'Simon Paul',
  'Thanks for all the work you do!',
  (SELECT TransactionID FROM Donation WHERE TransactionID = 3)
);
INSERT INTO NameToCredit (Name, Description, TransactionID) VALUES (
  'Carmen Russ',
  'This is for my mom!',
  (SELECT TransactionID FROM Donation WHERE TransactionID = 4)
);
INSERT INTO NameToCredit (Name, Description, TransactionID) VALUES (
  'Anonymous',
  'Sending love from Ontario!',
  (SELECT TransactionID FROM Donation WHERE TransactionID = 5)
);
INSERT INTO NameToCredit (Name, Description, TransactionID) VALUES (
  'Anonymous',
  'Whoo',
  (SELECT TransactionID FROM Donation WHERE TransactionID = 6)
);
INSERT INTO NameToCredit (Name, Description, TransactionID) VALUES (
  'Anonymous',
  'Messages are great',
  (SELECT TransactionID FROM Donation WHERE TransactionID = 7)
);
INSERT INTO NameToCredit (Name, Description, TransactionID) VALUES (
  'Anonymous',
  'Donations are great',
  (SELECT TransactionID FROM Donation WHERE TransactionID = 8)
);
INSERT INTO NameToCredit (Name, Description, TransactionID) VALUES (
  'Anonymous',
  'You all are great',
  (SELECT TransactionID FROM Donation WHERE TransactionID = 9)
);
INSERT INTO NameToCredit (Name, Description, TransactionID) VALUES (
  'Anonymous',
  'I love money',
  (SELECT TransactionID FROM Donation WHERE TransactionID = 10)
);