DROP TABLE HIBERNATE.T_CAR;
DROP TABLE HIBERNATE.T_OWNER;
DROP SEQUENCE HIBERNATE.CAR_SEQ;
DROP SEQUENCE HIBERNATE.OWNER_SEQ;

CREATE TABLE HIBERNATE.T_CAR (
    ID NUMBER(19,0) NOT NULL,
    CREATED_IN DATE,
    IMAGE BLOB,
    NAME VARCHAR2(255 CHAR),
    SPEC CLOB,
    WHEELS_NUMBER NUMBER(10,0),
    ID_OWNER NUMBER(19,0),
    PRIMARY KEY (ID)
);
    
CREATE TABLE HIBERNATE.T_OWNER (
    ID NUMBER(19,0) NOT NULL,
    AGE NUMBER(10,0),
    FIRST_NAME VARCHAR2(255 CHAR),
    LAST_NAME VARCHAR2(255 CHAR),
    SINCE DATE,
    PRIMARY KEY (ID)
);
    
ALTER TABLE HIBERNATE.T_CAR ADD CONSTRAINT FK_CAR_ID_OWNER FOREIGN KEY (ID_OWNER) REFERENCES HIBERNATE.T_CAR;
        
CREATE SEQUENCE HIBERNATE.CAR_SEQ START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE HIBERNATE.OWNER_SEQ START WITH 1 INCREMENT BY 1;
