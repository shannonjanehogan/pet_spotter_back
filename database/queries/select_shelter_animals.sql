SELECT a.aname, a.age, a.weight, a.gender, a.bname, b.species, b.goodwithkids, b.goodwithcats, b.goodwithdogs
FROM Animal a INNER JOIN Shelter s on s.Sphone = a.Sphone INNER JOIN Breed b on b.bname = a.bname
WHERE s.Sphone = $1;
