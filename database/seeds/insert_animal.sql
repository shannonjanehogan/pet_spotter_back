
INSERT INTO Animal VALUES (2205, 'Snoopy', 5, 30.6, 'M', (SELECT SPhone FROM Shelter WHERE SPhone = '6045550000'), NULL, NULL, (SELECT BName FROM Breed WHERE BName = 'Golden Retriever'));
INSERT INTO Animal VALUES (6485, 'Toby', 2, 20.5, 'M', (SELECT SPhone FROM Shelter WHERE SPhone = '6045550000'), NULL, NULL, (SELECT BName FROM Breed WHERE BName = 'Cocker Spaniel'));
INSERT INTO Animal VALUES (2056, 'Luna', 4, 25.6, 'F', (SELECT SPhone FROM Shelter WHERE SPhone = '6045551111'), (SELECT CPhone FROM Client WHERE CPhone = '7785550000'), (SELECT PickupTime FROM AnimalPickup WHERE PickupTime = to_timestamp('2019-04-01 14:00:00 -8:00', 'YYYY-MM-DD HH24:MI:SS TZ')), (SELECT BName FROM Breed WHERE BName = 'Beagle'));
INSERT INTO Animal VALUES (8912, 'Lucy', 7, 40.2, 'F', (SELECT SPhone FROM Shelter WHERE SPhone = '6045552222'), (SELECT CPhone FROM Client WHERE CPhone = '7785551111'), (SELECT PickupTime FROM AnimalPickup WHERE PickupTime = to_timestamp('2019-04-05 15:30:00 -8:00', 'YYYY-MM-DD HH24:MI:SS TZ')), (SELECT BName FROM Breed WHERE BName = 'Irish Wolfhound'));
INSERT INTO Animal VALUES (1884, 'Luke', 6, 36.9, 'M', (SELECT SPhone FROM Shelter WHERE SPhone = '6045553333'), (SELECT CPhone FROM Client WHERE CPhone = '7785552222'), (SELECT PickupTime FROM AnimalPickup WHERE PickupTime = to_timestamp('2019-04-06 11:00:00 -8:00', 'YYYY-MM-DD HH24:MI:SS TZ')), (SELECT BName FROM Breed WHERE BName = 'Greyhound'));
INSERT INTO Animal VALUES (2424, 'Chestnut', 10, 15.0, 'M', (SELECT SPhone FROM Shelter WHERE SPhone = '6045554444'), (SELECT CPhone FROM Client WHERE CPhone = '7785553333'), (SELECT PickupTime FROM AnimalPickup WHERE PickupTime = to_timestamp('2019-04-10 10:15:00 -8:00', 'YYYY-MM-DD HH24:MI:SS TZ')), (SELECT BName FROM Breed WHERE BName = 'American Shorthair'));
INSERT INTO Animal VALUES (1506, 'Molly', 1, 10.3, 'F', (SELECT SPhone FROM Shelter WHERE SPhone = '6045551111'), (SELECT CPhone FROM Client WHERE CPhone = '7785554444'), (SELECT PickupTime FROM AnimalPickup WHERE PickupTime = to_timestamp('2019-04-11 14:00:00 -8:00', 'YYYY-MM-DD HH24:MI:SS TZ')), (SELECT BName FROM Breed WHERE BName = 'Manx'));
INSERT INTO Animal VALUES (4896, 'Tiger', 3, 11.2, 'F', (SELECT SPhone FROM Shelter WHERE SPhone = '6045553333'), NULL, NULL, (SELECT BName FROM Breed WHERE BName = 'Manx'));

INSERT INTO Animal (LicenseNo, AName, Age, Weight, Gender, SPhone, CPhone, PickupTime, BName) VALUES (
  1,
  'Whiskey',
  3,
  30.0,
  'F',
  (SELECT SPhone FROM Shelter WHERE SPhone = '6048324820'),
  (SELECT CPhone FROM Client WHERE CPhone = '7884321987'),
  (SELECT PickupTime FROM AnimalPickup WHERE PickupTime = '2019-01-22'),
  (SELECT BName FROM Breed WHERE BName = 'Golden Retriever')
);
