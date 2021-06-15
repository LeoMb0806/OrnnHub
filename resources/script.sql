DROP TABLE champ;
DROP TABLE team;

CREATE TABLE champ(
	champName VARCHAR(20),
    lane VARCHAR(20),
    champRole VARCHAR(20),
    RD Date,
    damageType VARCHAR(20),
    linkFan VARCHAR(255),
    linkGuide VARCHAR(255),
    PRIMARY KEY (champName)
);
CREATE TABLE team(
	id INTEGER GENERATED ALWAYS AS IDENTITY,
    fkTop VARCHAR(20),
	fkJngl VARCHAR(20),
    fkMid VARCHAR(20),
    fkAdc VARCHAR(20),
    fkSupp VARCHAR(20),
	PRIMARY KEY (id),
    FOREIGN KEY (fkTop, fkJngl, fkMid, fkAdc, fkSupp) REFERENCES champ(champName)
);
INSERT INTO champ VALUES('Aatrox', 'TOP', 'BRUISER', TO_DATE('13.06.2013'), 'Physical', 'https://leagueoflegends.fandom.com/wiki/Aatrox/LoL', 'https://u.gg/lol/champions/aatrox/build');
INSERT INTO champ VALUES('Riven', 'TOP', 'BRUISER', TO_DATE('14.09.2011'), 'Physical', 'https://leagueoflegends.fandom.com/wiki/Riven/LoL', 'https://u.gg/lol/champions/riven/build');
INSERT INTO champ VALUES('Sett', 'TOP', 'BRUISER', TO_DATE('14.01.2020'), 'Physical', 'https://leagueoflegends.fandom.com/wiki/Sett/LoL', 'https://u.gg/lol/champions/sett/build');

INSERT INTO champ VALUES('Warwick', 'JUNGLE', 'BRUISER', TO_DATE('21.02.2009'), 'Physical', 'https://leagueoflegends.fandom.com/wiki/Warwick/LoL', 'https://u.gg/lol/champions/warwick/build');
INSERT INTO champ VALUES('Zac', 'JUNGLE', 'TANK', TO_DATE('29.03.2013'), 'Physical', 'https://leagueoflegends.fandom.com/wiki/Zac/LoL', 'https://u.gg/lol/champions/zac/build');
INSERT INTO champ VALUES('Skarner', 'JUNGLE', 'TANK', TO_DATE('09.08.2011'), 'Physical', 'https://leagueoflegends.fandom.com/wiki/Skarner/LoL', 'https://u.gg/lol/champions/skarner/build');

INSERT INTO champ VALUES('Yasuo', 'MID', 'AD_DAMAGE', TO_DATE('13.12.2013'), 'Physical', 'https://leagueoflegends.fandom.com/wiki/Yasuo/LoL', 'https://u.gg/lol/champions/yasuo/build');
INSERT INTO champ VALUES('Yone', 'MID', 'AD_DAMAGE', TO_DATE('06.08.2020'), 'Physical', 'https://leagueoflegends.fandom.com/wiki/Yone/LoL', 'https://u.gg/lol/champions/yone/build');
INSERT INTO champ VALUES('Aurelion Sol', 'MID', 'CONTROL_MAGE', TO_DATE('24.03.2016'), 'Magic', 'https://leagueoflegends.fandom.com/wiki/Aurelion_Sol/LoL', 'https://u.gg/lol/champions/aurelionsol/build');

INSERT INTO champ VALUES('Jhin', 'ADC', 'AD_DAMAGE', TO_DATE('01.02.2016'), 'Physical', 'https://leagueoflegends.fandom.com/wiki/Jhin/LoL', 'https://u.gg/lol/champions/jhin/build');
INSERT INTO champ VALUES('Vayne', 'ADC', 'AD_DAMAGE', TO_DATE('10.05.2011'), 'Physical', 'https://leagueoflegends.fandom.com/wiki/Vayne/LoL', 'https://u.gg/lol/champions/vayne/build');
INSERT INTO champ VALUES('Draven', 'ADC', 'AD_DAMAGE', TO_DATE('06.06.2012'), 'Physical', 'https://leagueoflegends.fandom.com/wiki/Draven/LoL', 'https://u.gg/lol/champions/draven/build');

INSERT INTO champ VALUES('Nautilus', 'SUPP', 'TANK', TO_DATE('14.02.2012'), 'Magic', 'https://leagueoflegends.fandom.com/wiki/Nautilus/LoL', 'https://u.gg/lol/champions/nautilus/build');
INSERT INTO champ VALUES('Taric', 'SUPP', 'TANK', TO_DATE('19.08.2009'), 'Magic', 'https://leagueoflegends.fandom.com/wiki/Taric/LoL', 'https://u.gg/lol/champions/taric/build');
INSERT INTO champ VALUES('Swain', 'SUPP', 'BATTLEMAGE', TO_DATE('05.10.2010'), 'Magic', 'https://leagueoflegends.fandom.com/wiki/Swain/LoL', 'https://u.gg/lol/champions/swain/build');

COMMIT;