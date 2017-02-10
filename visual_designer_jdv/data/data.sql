DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS Kapital;
DROP TABLE IF EXISTS Eintrag;


--  private String personNr = ""; 
--  private String familienstand = "";
--  private String kundenNummer = "";
--  private String vorname = "";
CREATE TABLE person
(
  personNr varchar(50) not null,
  familienstand varchar(50) not null,
  kundenNummer varchar(50) not null,
  vorname varchar(50) not null,
  PRIMARY KEY (personNr)
);

--  protected Short kapital1;
--  protected Short kapital2;
--  protected BigDecimal kapital3;
CREATE TABLE Kapital
(
   personNr varchar(50) not null,
   kapital1 integer,
   kapital2 integer,
   kapital3 integer       
);

CREATE TABLE Eintrag
(
   personNr varchar(50) not null,
   specialId varchar(50) not null,
   dbId varchar(50) not null,
   kurzanzeige varchar(50) not null       
);

-- person
INSERT INTO person (personNr, familienstand, kundenNummer, vorname) VALUES ('101','LEDIG','01','John Doe');
INSERT INTO person (personNr, familienstand, kundenNummer, vorname) VALUES ('102','VERHEIRATET','02','Max Muster');
INSERT INTO person (personNr, familienstand, kundenNummer, vorname) VALUES ('103','VERHEIRATET','03','Test User');
INSERT INTO person (personNr, familienstand, kundenNummer, vorname) VALUES ('104','GESCHIEDEN','04','Thomas W');

-- Kapital
INSERT INTO Kapital 
(personNr, kapital1, kapital2, kapital3) VALUES ('101',333,133,100);
INSERT INTO Kapital 
(personNr, kapital1, kapital2, kapital3) VALUES ('102',444,144,100);
INSERT INTO Kapital 
(personNr, kapital1, kapital2, kapital3) VALUES ('103',555,155,100);
INSERT INTO Kapital 
(personNr, kapital1, kapital2, kapital3) VALUES ('101',333,133,100);
INSERT INTO Kapital 
(personNr, kapital1, kapital2, kapital3) VALUES ('102',444,144,100);
INSERT INTO Kapital 
(personNr, kapital1, kapital2, kapital3) VALUES ('103',555,155,100);

-- Eintrag
INSERT INTO Eintrag (personNr, specialId, dbId, kurzanzeige) VALUES ('101','200-100','DB01','A1');
INSERT INTO Eintrag (personNr, specialId, dbId, kurzanzeige) VALUES ('102','210-100','DB02','A2');
INSERT INTO Eintrag (personNr, specialId, dbId, kurzanzeige) VALUES ('103','220-100','DB03','A3');

