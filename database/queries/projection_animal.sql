SELECT a.aname, a.age, a.weight, a.gender, a.bname, b.species, b.goodwithkids, b.goodwithcats, b.goodwithdogs, s.sname
FROM Animal a, Breed b, Shelter s
WHERE a.SPhone = s.SPhone
 AND a.bname = b.bname;