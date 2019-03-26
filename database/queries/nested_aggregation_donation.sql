SELECT *
FROM Shelter
WHERE SHouseNo IN (
    SELECT HouseNo
    FROM Address
    GROUP BY HouseNo, Street
    HAVING Street LIKE '%Ave%'
);

-- TODO: doesn't the nested aggregation need to return a sum?
