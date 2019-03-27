SELECT s.sname, SUM(d.amount)
FROM Donation d, Shelter s
WHERE d.sphone = s.sphone
GROUP BY s.sname;