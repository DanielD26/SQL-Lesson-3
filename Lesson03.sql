--Task 1
CREATE database Project;
USE Project;

--Task 2
CREATE TABLE PROJTABLE (
    ProjCode        SMALLINT
   ,ProjectTitle    VARCHAR(20)
   ,PRIMARY KEY     (ProjCode)
);

CREATE TABLE WORKER (
    Wid         SMALLINT
   ,WName       VARCHAR (20)
   ,Gender      VARCHAR (1)
   ,ProjCode    SMALLINT
   ,PRIMARY KEY (Wid)
   ,FOREIGN KEY (ProjCode) REFERENCES PROJTABLE (ProjCode)
);

--Task 3
INSERT INTO PROJTABLE (ProjCode, ProjectTitle) VALUES (1, 'Project One');
INSERT INTO PROJTABLE (ProjCode, ProjectTitle) VALUES (2, 'Project Two');
INSERT INTO PROJTABLE (ProjCode, ProjectTitle) VALUES (3, 'Project Three');

INSERT INTO WORKER (Wid, WName, Gender, ProjCode) VALUES (21, 'Dave Jones', 'M', 2);
INSERT INTO WORKER (Wid, WName, Gender, ProjCode) VALUES (22, 'Emma Quilt', 'F', 2);
INSERT INTO WORKER (Wid, WName, Gender, ProjCode) VALUES (23, 'Fred Gingers', 'M', 1);
INSERT INTO WORKER (Wid, WName, Gender, ProjCode) VALUES (24, 'Pat Smith', 'F', 2);
INSERT INTO WORKER (Wid, WName, Gender, ProjCode) VALUES (25, 'Daniel Diaz', 'M', 3);
INSERT INTO WORKER (Wid, WName, Gender, ProjCode) VALUES (26, 'Vanessa Nguyen', 'F', 3);

--Task 4
SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES;
EXEC sp_columns PROJTABLE;
SELECT * FROM PROJTABLE;

EXEC sp_columns worker;
SELECT * FROM WORKER;

--Task 5
INSERT INTO PROJTABLE (ProjCode, ProjectTitle) VALUES (1, 'Project Four');
INSERT INTO WORKER (Wid, WName, Gender, ProjCode) VALUES (25, 'Helen Nogood', 'F', 4);
DELETE FROM PROJTABLE WHERE ProjCode = 2;

--Task 6
SELECT W.WName, P.ProjectTitle
FROM PROJTABLE P
INNER JOIN WORKER W
ON W.ProjCode = P.ProjCode;

--Task 7
SELECT COUNT (*) FROM WORKER;
SELECT ProjCode, COUNT (ProjCode) FROM PROJTABLE
GROUP BY PROJCODE;

SELECT * FROM PROJTABLE;
SELECT * FROM WORKER;
DROP TABLE WORKER;
DROP TABLE PROJTABLE;