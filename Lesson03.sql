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
    Wid         SMALLINT PRIMARY KEY
   ,WName       VARCHAR (20)
   ,Gender      VARCHAR (1)
   ,ProjCode    SMALLINT
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