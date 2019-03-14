SELECT SUM(Amount), COUNT(*)
FROM Donor, Donation
GROUP BY Donor.CPhone
HAVING Donor.CPhone = varPhone
  AND Donor.CPhone = Donation.CPhone
  AND to_char(Donation.date, "yyyy") = varYear
