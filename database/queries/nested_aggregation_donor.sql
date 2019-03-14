SELECT SUM(Amount)
FROM Donation, (
  SELECT SPhone, SPostalCode
  FROM Shelter
  GROUP BY SPostalCode
  HAVING AVG(Capacity) > 5
) as Table
WHERE Donation.SPhone IN Table.SPhone
