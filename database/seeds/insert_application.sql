INSERT INTO Application VALUES (0001, make_date('2019-01-05', 'yyyy-mm-dd'), (SELECT DateApproved FROM ApplicationApproved WHERE DateApproved = make_date('2019-01-08', 'yyyy-mm-dd')), (SELECT CPhone FROM PotentialOwner WHERE CPhone = '7785550000'), (SELECT LicenseNo FROM Animal WHERE LicenseNo = 2056));
INSERT INTO Application VALUES (0002, make_date('2019-02-05', 'yyyy-mm-dd'), (SELECT DateApproved FROM ApplicationApproved WHERE DateApproved = make_date('2019-02-15', 'yyyy-mm-dd')), (SELECT CPhone FROM PotentialOwner WHERE CPhone = '7785551111'), (SELECT LicenseNo FROM Animal WHERE LicenseNo = 8912));
INSERT INTO Application VALUES (0003, make_date('2019-02-28', 'yyyy-mm-dd'), (SELECT DateApproved FROM ApplicationApproved WHERE DateApproved = make_date('2019-03-03', 'yyyy-mm-dd')), (SELECT CPhone FROM PotentialOwner WHERE CPhone = '7785552222'), (SELECT LicenseNo FROM Animal WHERE LicenseNo = 1884));
INSERT INTO Application VALUES (0004, make_date('2019-03-05', 'yyyy-mm-dd'), (SELECT DateApproved FROM ApplicationApproved WHERE DateApproved = make_date('2019-03-07', 'yyyy-mm-dd')), (SELECT CPhone FROM PotentialOwner WHERE CPhone = '7785553333'), (SELECT LicenseNo FROM Animal WHERE LicenseNo = 2424));
INSERT INTO Application VALUES (0005, make_date('2019-03-15', 'yyyy-mm-dd'), (SELECT DateApproved FROM ApplicationApproved WHERE DateApproved = make_date('2019-03-20', 'yyyy-mm-dd')), (SELECT CPhone FROM PotentialOwner WHERE CPhone = '7785554444'), (SELECT LicenseNo FROM Animal WHERE LicenseNo = 1506));
INSERT INTO Application VALUES (0006, make_date('2019-03-25', 'yyyy-mm-dd'), (SELECT DateApproved FROM ApplicationApproved WHERE DateApproved = make_date('2100-01-01', 'yyyy-mm-dd')), (SELECT CPhone FROM PotentialOwner WHERE CPhone = '7785552222'), (SELECT LicenseNo FROM Animal WHERE LicenseNo = 4896));

INSERT INTO Application (AppNo, DateSubmitted, DateApproved, CPhone, LicenseNo) VALUES (
  1,
  '2019-03-01',
  NULL,
  (SELECT CPhone FROM PotentialOwner WHERE CPhone = '7884321987'),
  (SELECT LicenseNo FROM Animal WHERE AName = 'Whiskey')
);
