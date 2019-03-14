INSERT INTO Animal (AName, Age, Weight, Gender, SPhone, CPhone, PickupTime, BName) VALUES (
  'Whiskey',
  3,
  30.0,
  'F',
  (SELECT SPhone FROM Shelter WHERE SPhone = '6048324820'),
  (SELECT CPhone FROM Client WHERE CPhone = '7884321987'),
  (SELECT PickupTime FROM AnimalPickup WHERE PickupTime = '2019-01-22'),
  (SELECT BName FROM Breed WHERE BName = 'Golden Retriever')
);
