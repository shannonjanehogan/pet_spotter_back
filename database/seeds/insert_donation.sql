INSERT INTO Donation VALUES (DEFAULT, 500.00, to_date('2018-05-20', 'yyyy-mm-dd'), (SELECT CPhone FROM Client WHERE CPhone = '7785552222'), (SELECT SPhone FROM Shelter WHERE SPhone = '6045550000'));
INSERT INTO Donation VALUES (DEFAULT, 350.25, to_date('2019-01-31', 'yyyy-mm-dd'), (SELECT CPhone FROM Client WHERE CPhone = '7785553333'), (SELECT SPhone FROM Shelter WHERE SPhone = '6045551111'));
INSERT INTO Donation VALUES (DEFAULT, 1000.00, to_date('2019-01-01', 'yyyy-mm-dd'), (SELECT CPhone FROM Client WHERE CPhone = '7785554444'), (SELECT SPhone FROM Shelter WHERE SPhone = '6045552222'));
INSERT INTO Donation VALUES (DEFAULT, 777.77, to_date('2018-09-25', 'yyyy-mm-dd'), (SELECT CPhone FROM Client WHERE CPhone = '7785555555'), (SELECT SPhone FROM Shelter WHERE SPhone = '6045553333'));
INSERT INTO Donation VALUES (DEFAULT, 806.55, to_date('2018-08-23', 'yyyy-mm-dd'), (SELECT CPhone FROM Client WHERE CPhone = '7785556666'), (SELECT SPhone FROM Shelter WHERE SPhone = '6045554444'));