INSERT INTO Donation VALUES ("2018-0001", 500.00, make_date("2018-05-20", "yyyy-mm-dd"), (SELECT CPhone FROM Client WHERE CPhone = "6045550000"), (SELECT SPhone FROM Shelter WHERE SPhone = "7785552222"));
INSERT INTO Donation VALUES ("2019-0002", 350.25, make_date("2019-01-31", "yyyy-mm-dd"), (SELECT CPhone FROM Client WHERE CPhone = "6045551111"), (SELECT SPhone FROM Shelter WHERE SPhone = "7785553333"));
INSERT INTO Donation VALUES ("2019-0001", 1000.00, make_date("2019-01-01", "yyyy-mm-dd"), (SELECT CPhone FROM Client WHERE CPhone =  "6045552222"), (SELECT SPhone FROM Shelter WHERE SPhone = "7785554444"));
INSERT INTO Donation VALUES ("2018-0003", 777.77, make_date("2018-09-25", "yyyy-mm-dd"), (SELECT CPhone FROM Client WHERE CPhone = "6045553333"), (SELECT SPhone FROM Shelter WHERE SPhone = "7785555555"));
INSERT INTO Donation VALUES ("2018-0002", 806.55, make_date("2018-08-23", "yyyy-mm-dd"), (SELECT CPhone FROM Client WHERE CPhone = "6045554444"), (SELECT SPhone FROM Shelter WHERE SPhone = "7785556666"));

INSERT INTO Donation (TransactionID, Amount, Date, CPhone, SPhone) VALUES (
  '2018-0001',
  120.20,
  '2019-01-22',
  (SELECT CPhone FROM Client WHERE CPhone = '7884321987'),
  (SELECT SPhone FROM Shelter WHERE SPhone = '6048324820')
);
