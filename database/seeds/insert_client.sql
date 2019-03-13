INSERT INTO Client VALUES ("Taylor Lewis", (SELECT HouseNo FROM Address WHERE HouseNo = 4715), (SELECT Street FROM Address WHERE HouseNo = "53a St"), "V4K 3V4", "7785550000", "lewis@gmail.com");
INSERT INTO Client VALUES ("Kumar Kapur", (SELECT HouseNo FROM Address WHERE HouseNo = 5450), (SELECT Street FROM Address WHERE HouseNo = "Keith Rd"), "V7W 2N2", "7785551111", "kumar.k@hotmail.com");
INSERT INTO Client VALUES ("Alice Chow", (SELECT HouseNo FROM Address WHERE HouseNo = 641), (SELECT Street FROM Address WHERE HouseNo = "17st Ave SW"), "T2S 0B5", "7785552222", "achow@yahoo.ca");
INSERT INTO Client VALUES ("Simon Paul", (SELECT HouseNo FROM Address WHERE HouseNo = 6230), (SELECT Street FROM Address WHERE HouseNo = "Thunderbird Blvd"), "V6T 1Z4", "7785553333", "guitars@yahoo.ca");
INSERT INTO Client VALUES ("Leslie Russ", (SELECT HouseNo FROM Address WHERE HouseNo = 815), (SELECT Street FROM Address WHERE HouseNo = "Kennedy St"), "V3M 1R8", "7785554444", "doggos@mail.com");
INSERT INTO Client VALUES ("Annie Clark", (SELECT HouseNo FROM Address WHERE HouseNo = 2305), (SELECT Street FROM Address WHERE HouseNo = "Danforth Ave"), "M4C 1K7", "7785555555", "stvincent@gmail.com");
INSERT INTO Client VALUES ("Steve Singh", (SELECT HouseNo FROM Address WHERE HouseNo = 2747), (SELECT Street FROM Address WHERE HouseNo = "W 31st Ave"), "V6L 3K8", "7785556666", "me@stevesingh.ca");


INSERT INTO Client VALUES (
  'Hermione Granger',
  (SELECT HouseNo FROM Address WHERE HouseNo = 3008),
  (SELECT Street FROM Address WHERE HouseNo = 3008),
  (SELECT PostalCode FROM Address WHERE HouseNo = 3008),
  '7884321987',
  'hgranger@gmail.com'
);
