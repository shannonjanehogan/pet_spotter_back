INSERT INTO Donation (Amount, Date, CPhone, SPhone) VALUES (
  120.20,
  '2019-01-22',
  (SELECT CPhone FROM Client WHERE CPhone = '7884321987'),
  (SELECT SPhone FROM Shelter WHERE SPhone = '6048324820')
);
