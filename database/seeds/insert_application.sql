INSERT INTO Application (AppNo, DateSubmitted, DateApproved, CPhone, LicenseNo) VALUES (
  1,
  '2019-03-01',
  (SELECT DateApproved FROM ApplicationApproved WHERE DateApproved = '2019-03-10'),
  (SELECT CPhone FROM PotentialOwner WHERE CPhone = '7884321987'),
  (SELECT LicenseNo FROM Animal WHERE LicenseNo = 1)
);
