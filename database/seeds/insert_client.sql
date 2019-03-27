INSERT INTO Client VALUES ('Taylor Lewis', (SELECT DISTINCT HouseNo FROM Address WHERE HouseNo = 4715), (SELECT DISTINCT Street FROM Address WHERE Street = '53a St'), 'V4K 3V4', '7785550000', 'lewis@gmail.com');
INSERT INTO Client VALUES ('Kumar Kapur', (SELECT DISTINCT HouseNo FROM Address WHERE HouseNo = 5450), (SELECT DISTINCT Street FROM Address WHERE Street = 'Keith Rd'), 'V7W 2N2', '7785551111', 'kumar.k@hotmail.com');
INSERT INTO Client VALUES ('Alice Chow', (SELECT DISTINCT HouseNo FROM Address WHERE HouseNo = 641), (SELECT DISTINCT Street FROM Address WHERE Street = '17st Ave SW'), 'T2S 0B5', '7785552222', 'achow@yahoo.ca');
INSERT INTO Client VALUES ('Simon Paul', (SELECT DISTINCT HouseNo FROM Address WHERE HouseNo = 6230), (SELECT DISTINCT Street FROM Address WHERE Street = 'Thunderbird Blvd'), 'V6T 1Z4', '7785553333', 'guitars@yahoo.ca');
INSERT INTO Client VALUES ('Leslie Russ', (SELECT DISTINCT HouseNo FROM Address WHERE HouseNo = 815), (SELECT DISTINCT Street FROM Address WHERE Street = 'Kennedy St'), 'V3M 1R8', '7785554444', 'doggos@mail.com');
INSERT INTO Client VALUES ('Annie Clark', (SELECT DISTINCT HouseNo FROM Address WHERE HouseNo = 47159), (SELECT DISTINCT Street FROM Address WHERE Street = 'Danforth Ave'), 'M4C 1K7', '7785555555', 'stvincent@gmail.com');
INSERT INTO Client VALUES ('Steve Singh', (SELECT DISTINCT HouseNo FROM Address WHERE HouseNo = 8156), (SELECT DISTINCT Street FROM Address WHERE Street = 'W 31st Ave'), 'V6L 3K8', '7785556666', 'me@stevesingh.ca');

INSERT INTO Client VALUES (
  'Hermione Granger',
  (SELECT DISTINCT HouseNo FROM Address WHERE HouseNo = 200),
  (SELECT DISTINCT Street FROM Address WHERE Street = 'Main Mall'),
  'V6T 1Z4',
  '7884321987',
  'hgranger@gmail.com'
);
