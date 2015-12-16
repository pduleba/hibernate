DROP TABLE HIBERNATE.T_USER_DETAILS;
DROP TABLE HIBERNATE.T_USERS;
DROP SEQUENCE HIBERNATE.USERS_SEQ;
DROP SEQUENCE HIBERNATE.USERS_DETAILS_SEQ;

-- ON HIBERNATE
CREATE TABLE HIBERNATE.T_USERS (
  ID								NUMBER(15),
  CREATE_DATE						TIMESTAMP,
  CHANGE_DATE						TIMESTAMP,
  NAME								VARCHAR2(100 CHAR),
  SURNAME							VARCHAR2(100 CHAR),
  LOGIN            					VARCHAR2(50 CHAR) NOT NULL,
  PASSWORD		     				VARCHAR2(100 CHAR),
  BIRTH_DATE						DATE,
  CONSTRAINT USER_PK PRIMARY KEY (ID),
  CONSTRAINT LOGIN_UK UNIQUE (LOGIN)
);

CREATE TABLE HIBERNATE.T_USER_DETAILS (
  ID								NUMBER(15),
  CREATE_DATE						TIMESTAMP,
  CHANGE_DATE						TIMESTAMP,
  DETAILS							VARCHAR2(100 CHAR) NOT NULL,
  CONSTRAINT UDETAILS_PK PRIMARY KEY (ID),
  CONSTRAINT UDETAILS_FK FOREIGN KEY (ID) REFERENCES T_USERS(ID)
);

CREATE SEQUENCE HIBERNATE.USERS_SEQ START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE HIBERNATE.USERS_DETAILS_SEQ START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
