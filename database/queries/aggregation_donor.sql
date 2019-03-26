SELECT Donor.CPhone, SUM(Amount), COUNT(*)
FROM Donor, Donation
WHERE (
    Donor.CPhone = Donation.CPhone AND
    to_char(Donation.date, 'yyyy') = $1
    -- to_char(Donation.date, 'yyyy') = varYear;
)
GROUP BY Donor.CPhone
HAVING Donor.CPhone = $2;
-- HAVING Donor.CPhone = varPhone
