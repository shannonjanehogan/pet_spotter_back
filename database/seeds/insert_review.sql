INSERT INTO Review (AppNo, Sphone) VALUES (
  (SELECT AppNo FROM Application WHERE CPhone = '7884321987'),
  (SELECT SPhone FROM Shelter WHERE SPhone = '4031257869')
);
