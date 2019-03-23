INSERT INTO Review (AppNo, Sphone) VALUES (
  (SELECT AppNo FROM Application WHERE CPhone = '7884321987'),
  (SELECT SPhone FROM Shelter WHERE SPhone = '4031257869')
);
INSERT INTO Review (AppNo, Sphone) VALUES (
  (SELECT AppNo FROM Application WHERE AppNo = 2),
  (SELECT SPhone FROM Shelter WHERE SPhone = '6045551111')
);
INSERT INTO Review (AppNo, Sphone) VALUES (
  (SELECT AppNo FROM Application WHERE AppNo = 3),
  (SELECT SPhone FROM Shelter WHERE SPhone = '6045552222')
);
INSERT INTO Review (AppNo, Sphone) VALUES (
  (SELECT AppNo FROM Application WHERE AppNo = 4),
  (SELECT SPhone FROM Shelter WHERE SPhone = '6045553333')
);
INSERT INTO Review (AppNo, Sphone) VALUES (
  (SELECT AppNo FROM Application WHERE AppNo = 5),
  (SELECT SPhone FROM Shelter WHERE SPhone = '6045554444')
);
INSERT INTO Review (AppNo, Sphone) VALUES (
  (SELECT AppNo FROM Application WHERE AppNo = 6),
  (SELECT SPhone FROM Shelter WHERE SPhone = '6045551111')
);
INSERT INTO Review (AppNo, Sphone) VALUES (
  (SELECT AppNo FROM Application WHERE AppNo = 7),
  (SELECT SPhone FROM Shelter WHERE SPhone = '6045553333')
);