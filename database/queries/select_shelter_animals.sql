SELECT * FROM Animal INNER JOIN Shelter on Shelter.Sphone = Animal.Sphone
WHERE Shelter.Sphone = $1;
