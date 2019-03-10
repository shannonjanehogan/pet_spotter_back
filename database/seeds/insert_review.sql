INSERT INTO Review (AppNo, Sphone) VALUES (
  (SELECT AppNo FROM Application WHERE AppNo = 1),
  (SELECT SPhone FROM Shelter WHERE SPhone = '4031257869')
);
