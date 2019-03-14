CREATE TABLE Application (
 	AppNo SERIAL,
  DateSubmitted date,
  DateApproved date,
  CPhone char(11)               NOT NULL,
  LicenseNo int                 NOT NULL,
  PRIMARY KEY (AppNo),
  FOREIGN KEY (CPhone) references PotentialOwner
  ON DELETE NO ACTION
  ON UPDATE CASCADE,
  FOREIGN KEY (LicenseNo) references Animal
  ON DELETE NO ACTION
  ON UPDATE CASCADE
);
