DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS KapitaldienstDetailsSummeGrundlagen;
DROP TABLE IF EXISTS ISvzEintrag;


--  private String fPersNr = "";
--  private String fFamilienstand = "";
--  private String fKundenNummer = "";
--  private String fVorname = "";
CREATE TABLE person
(
  fpersNr varchar(50) not null,
  fFamilienstand varchar(50) not null,
  fKundenNummer varchar(50) not null,
  fVorname varchar(50) not null,
  PRIMARY KEY (fpersNr)
);

--  protected Short kapdBergGrdlLfdn;
--  protected Short kapdBergGrdlRang;
--  protected BigDecimal kapdKdrgFreiSum;
CREATE TABLE KapitaldienstDetailsSummeGrundlagen
(
   fpersNr varchar(50) not null,
   kapdBergGrdlLfdn integer,
   kapdBergGrdlRang integer,
   kapdKdrgFreiSum integer       
);

CREATE TABLE ISvzEintrag
(
   fpersNr varchar(50) not null,
   svzId varchar(50) not null,
   svzDb varchar(50) not null,
   kurzanzeige varchar(50) not null       
);

-- person
INSERT INTO person (fpersNr, fFamilienstand, fKundenNummer, fVorname) VALUES ('101','LEDIG','01','John Doe');
INSERT INTO person (fpersNr, fFamilienstand, fKundenNummer, fVorname) VALUES ('102','VERHEIRATET','02','Max Muster');
INSERT INTO person (fpersNr, fFamilienstand, fKundenNummer, fVorname) VALUES ('103','VERHEIRATET','03','Test User');
INSERT INTO person (fpersNr, fFamilienstand, fKundenNummer, fVorname) VALUES ('104','GESCHIEDEN','04','Thomas W');

-- KapitaldienstDetailsSummeGrundlagen
INSERT INTO KapitaldienstDetailsSummeGrundlagen 
(fpersNr, kapdBergGrdlLfdn, kapdBergGrdlRang, kapdKdrgFreiSum) VALUES ('101',333,133,100);
INSERT INTO KapitaldienstDetailsSummeGrundlagen 
(fpersNr, kapdBergGrdlLfdn, kapdBergGrdlRang, kapdKdrgFreiSum) VALUES ('102',444,144,100);
INSERT INTO KapitaldienstDetailsSummeGrundlagen 
(fpersNr, kapdBergGrdlLfdn, kapdBergGrdlRang, kapdKdrgFreiSum) VALUES ('103',555,155,100);
INSERT INTO KapitaldienstDetailsSummeGrundlagen 
(fpersNr, kapdBergGrdlLfdn, kapdBergGrdlRang, kapdKdrgFreiSum) VALUES ('101',333,133,100);
INSERT INTO KapitaldienstDetailsSummeGrundlagen 
(fpersNr, kapdBergGrdlLfdn, kapdBergGrdlRang, kapdKdrgFreiSum) VALUES ('102',444,144,100);
INSERT INTO KapitaldienstDetailsSummeGrundlagen 
(fpersNr, kapdBergGrdlLfdn, kapdBergGrdlRang, kapdKdrgFreiSum) VALUES ('103',555,155,100);

-- ISvzEintrag
INSERT INTO ISvzEintrag (fpersNr, svzId, svzDb, kurzanzeige) VALUES ('101','200-100','DB01','A1');
INSERT INTO ISvzEintrag (fpersNr, svzId, svzDb, kurzanzeige) VALUES ('102','210-100','DB02','A2');
INSERT INTO ISvzEintrag (fpersNr, svzId, svzDb, kurzanzeige) VALUES ('103','220-100','DB03','A3');

