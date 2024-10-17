
CREATE TABLE User
(
  user_id  INT          NOT NULL,
  email    VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  username VARCHAR(100) NOT NULL,
  PRIMARY KEY (user_id)
);

CREATE TABLE User_Profile
(
  profile_id INT          NOT NULL,
  user_id    INT          NOT NULL,
  first_name VARCHAR(100) NOT NULL,
  last_name  VARCHAR(100) NOT NULL,
  dob        DATE         NOT NULL,
  address    VARCHAR(255) NULL    ,
  PRIMARY KEY (profile_id)
);

CREATE TABLE User_Role
(
  role_id   INT         NOT NULL,
  role_name VARCHAR(50) NULL    ,
  user_id   INT         NOT NULL,
  PRIMARY KEY (role_id)
);

ALTER TABLE User_Profile
  ADD CONSTRAINT FK_User_TO_User_Profile
    FOREIGN KEY (user_id)
    REFERENCES User (user_id);

ALTER TABLE User_Role
  ADD CONSTRAINT FK_User_TO_User_Role
    FOREIGN KEY (user_id)
    REFERENCES User (user_id);
