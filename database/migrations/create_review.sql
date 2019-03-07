CREATE TABLE Review (
  AppNo: int,
  SPhone: char(11)
  PRIMARY KEY (AppNo, SPhone),
  FOREIGN KEY (AppNo) references Application,
  FOREIGN KEY (SPhone) references Shelter
);
