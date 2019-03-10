INSERT INTO Donor (Cphone) VALUES (
  (SELECT CPhone FROM Client WHERE CPhone = '7884321987')
);
