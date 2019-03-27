SELECT Donor.CPhone, Client.CName, SUM(Amount), COUNT(*)
FROM Donor, Donation, Client
WHERE (
	Donor.CPhone = Client.CPhone AND
    Donor.CPhone = Donation.CPhone AND
    to_char(Donation.date, 'yyyy') = $1
    -- to_char(Donation.date, 'yyyy') = varYear;
)
GROUP BY Donor.CPhone, Client.CName
HAVING Donor.CPhone = $2;
