SELECT *
FROM Shelter
WHERE SHouseNo IN (
  SELECT HouseNo
  FROM Address
  GROUP BY HouseNo, Street
  HAVING Street LIKE '%Ave'
);
