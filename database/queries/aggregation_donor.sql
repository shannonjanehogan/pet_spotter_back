SELECT Donor.CPhone, SUM(Amount), COUNT(*)
FROM Donor, Donation
WHERE (
    Donor.CPhone = Donation.CPhone AND 
    to_char(Donation.date, 'yyyy') = '2018'
    -- to_char(Donation.date, 'yyyy') = varYear;
)
GROUP BY Donor.CPhone
HAVING Donor.CPhone = '7785556666';
-- HAVING Donor.CPhone = varPhone
