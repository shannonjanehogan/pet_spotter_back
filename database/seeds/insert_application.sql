INSERT INTO Application (AppNo, DateSubmitted, DateApproved, CPhone, LicenseNo) VALUES (
  1,
  '2019-03-01',
  NULL,
  (SELECT CPhone FROM PotentialOwner WHERE CPhone = '7884321987'),
  (SELECT LicenseNo FROM Animal WHERE LicenseNo = 1)
);
