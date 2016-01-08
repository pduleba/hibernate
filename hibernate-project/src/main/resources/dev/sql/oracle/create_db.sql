DROP TABLE HIBERNATE.T_CAR;
DROP SEQUENCE HIBERNATE.CAR_SEQ;

CREATE TABLE HIBERNATE.T_CAR (
  ID								    NUMBER(19),
  NAME								    VARCHAR2(100 CHAR),
  DATE_ID							    VARCHAR2(100 CHAR),
  CONSTRAINT PK_CAR PRIMARY KEY (ID)
);

CREATE SEQUENCE HIBERNATE.CAR_SEQ START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;