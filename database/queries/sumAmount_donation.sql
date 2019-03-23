SELECT SPhone, Sum(Amount)
FROM Donation
GROUP BY SPhone;