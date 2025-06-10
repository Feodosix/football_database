TRUNCATE TABLE football.league_team RESTART IDENTITY CASCADE;

-- АПЛ 21/22
INSERT INTO football.league_team (league_id, team_id)
VALUES
  (1, 1),    -- Manchester City
  (1, 4),    -- Liverpool
  (1, 5),    -- Chelsea
  (1, 6),    -- Tottenham Hotspur
  (1, 2),    -- Arsenal
  (1, 3),    -- Manchester United
  (1, 16),   -- West Ham United
  (1, 110),  -- Leicester City
  (1, 8),    -- Brighton & Hove Albion
  (1, 17),   -- Wolverhampton Wanderers
  (1, 7),    -- Newcastle United
  (1, 12),   -- Crystal Palace
  (1, 9),    -- Brentford
  (1, 11),   -- Aston Villa
  (1, 111),  -- Southampton
  (1, 13),   -- Everton
  (1, 112),  -- Leeds United
  (1, 18),   -- Burnley
  (1, 114),  -- Watford
  (1, 113);  -- Norwich City

-- АПЛ 22/23
INSERT INTO football.league_team (league_id, team_id)
VALUES
  (2, 1),    -- Manchester City
  (2, 2),    -- Arsenal
  (2, 3),    -- Manchester United
  (2, 7),    -- Newcastle United
  (2, 4),    -- Liverpool
  (2, 8),    -- Brighton & Hove Albion
  (2, 11),   -- Aston Villa
  (2, 6),    -- Tottenham Hotspur
  (2, 9),    -- Brentford
  (2, 10),   -- Fulham
  (2, 12),   -- Crystal Palace
  (2, 5),    -- Chelsea
  (2, 17),   -- Wolverhampton Wanderers
  (2, 16),   -- West Ham United
  (2, 14),   -- Bournemouth
  (2, 15),   -- Nottingham Forest
  (2, 13),   -- Everton
  (2, 110),  -- Leicester City
  (2, 112),  -- Leeds United
  (2, 111);  -- Southampton

-- АПЛ 23/24
INSERT INTO football.league_team (league_id, team_id)
VALUES
  (3, 2),    -- Arsenal
  (3, 11),   -- Aston Villa
  (3, 14),   -- Bournemouth
  (3, 8),    -- Brighton & Hove Albion
  (3, 9),    -- Brentford
  (3, 18),   -- Burnley
  (3, 16),   -- West Ham United
  (3, 17),   -- Wolverhampton Wanderers
  (3, 12),   -- Crystal Palace
  (3, 4),    -- Liverpool
  (3, 20),   -- Luton Town
  (3, 1),    -- Manchester City
  (3, 3),    -- Manchester United
  (3, 15),   -- Nottingham Forest
  (3, 7),    -- Newcastle United
  (3, 6),    -- Tottenham Hotspur
  (3, 10),   -- Fulham
  (3, 5),    -- Chelsea
  (3, 19),   -- Sheffield United
  (3, 13);   -- Everton

-- Ла Лига 21/22
INSERT INTO football.league_team (league_id, team_id)
VALUES
  (4, 33),  -- Real Madrid
  (4, 24),  -- Barcelona
  (4, 23),  -- Atlético Madrid
  (4, 35),  -- Sevilla
  (4, 32),  -- Real Betis
  (4, 34),  -- Real Sociedad
  (4, 37),  -- Villarreal
  (4, 22),  -- Athletic Bilbao
  (4, 36),  -- Valencia
  (4, 30),  -- Osasuna
  (4, 26),  -- Celta Vigo
  (4, 31),  -- Rayo Vallecano
  (4, 116),  -- Elche
  (4, 117),  -- Espanyol
  (4, 27),  -- Getafe
  (4, 29),  -- Mallorca
  (4, 25),  -- Cádiz
  (4, 28),  -- Granada
  (4, 118),  -- Levante
  (4, 38);  -- Alavés

-- Ла Лига 22/23
INSERT INTO football.league_team (league_id, team_id)
VALUES
  (5, 24),   -- Barcelona
  (5, 33),   -- Real Madrid
  (5, 23),   -- Atlético Madrid
  (5, 34),   -- Real Sociedad
  (5, 37),   -- Villarreal
  (5, 32),   -- Real Betis
  (5, 30),   -- Osasuna
  (5, 22),   -- Athletic Bilbao
  (5, 29),   -- Mallorca
  (5, 40),   -- Girona
  (5, 31),   -- Rayo Vallecano
  (5, 35),   -- Sevilla
  (5, 26),   -- Celta Vigo
  (5, 25),   -- Cádiz
  (5, 27),   -- Getafe
  (5, 36),   -- Valencia
  (5, 21),   -- Almería
  (5, 115),  -- Real Valladolid
  (5, 117),  -- Espanyol
  (5, 116);  -- Elche

-- Ла Лига 23/24
INSERT INTO football.league_team (league_id, team_id)
VALUES
  (6, 38),   -- Alavés
  (6, 21),   -- Almería
  (6, 22),   -- Athletic Bilbao
  (6, 23),   -- Atlético Madrid
  (6, 24),   -- Barcelona
  (6, 32),   -- Real Betis
  (6, 36),   -- Valencia
  (6, 37),   -- Villarreal
  (6, 28),   -- Granada
  (6, 40),   -- Girona
  (6, 25),   -- Cádiz
  (6, 39),  -- Las Palmas
  (6, 29),   -- Mallorca
  (6, 30),   -- Osasuna
  (6, 31),   -- Rayo Vallecano
  (6, 33),   -- Real Madrid
  (6, 34),   -- Real Sociedad
  (6, 35),   -- Sevilla
  (6, 26),   -- Celta Vigo
  (6, 27);   -- Getafe

-- Бугдеслига 21/22
INSERT INTO football.league_team (league_id, team_id)
VALUES
  (7, 41),  -- Bayern München
  (7, 42),  -- Borussia Dortmund
  (7, 43),  -- Bayer Leverkusen
  (7, 44),  -- RB Leipzig
  (7, 45),  -- Union Berlin
  (7, 46),  -- SC Freiburg
  (7, 47),  -- 1. FC Köln
  (7, 48),  -- Mainz 05
  (7, 49),  -- TSG Hoffenheim
  (7, 50),  -- Borussia Mönchengladbach
  (7, 51),  -- Eintracht Frankfurt
  (7, 52),  -- VfL Wolfsburg
  (7, 53),  -- VfL Bochum
  (7, 54),  -- FC Augsburg
  (7, 55),  -- VfB Stuttgart
  (7, 56),  -- Hertha BSC
  (7, 121),  -- Arminia Bielefeld
  (7, 122);  -- Greuther Fürth

-- Бундеслига 22/23
INSERT INTO football.league_team (league_id, team_id)
VALUES
  (8, 41),  -- Bayern München
  (8, 42),  -- Borussia Dortmund
  (8, 44),  -- RB Leipzig
  (8, 45),  -- Union Berlin
  (8, 46),  -- SC Freiburg
  (8, 43),  -- Bayer Leverkusen
  (8, 51),  -- Eintracht Frankfurt
  (8, 52),  -- VfL Wolfsburg
  (8, 48),  -- Mainz 05
  (8, 50),  -- Borussia Mönchengladbach
  (8, 47),  -- 1. FC Köln
  (8, 49),  -- TSG Hoffenheim
  (8, 56),  -- Werder Bremen
  (8, 53),  -- VfL Bochum
  (8, 54),  -- FC Augsburg
  (8, 55),  -- VfB Stuttgart
  (8, 119),  -- Schalke 04
  (8, 120);  -- Hertha BSC

-- Бундеслига 23/24
INSERT INTO football.league_team (league_id, team_id)
VALUES
  (9, 41),  -- Bayern München
  (9, 43),  -- Bayer 04 Leverkusen
  (9, 42),  -- Borussia Dortmund
  (9, 44),  -- RB Leipzig
  (9, 45),  -- Union Berlin
  (9, 46),  -- SC Freiburg
  (9, 51),  -- Eintracht Frankfurt
  (9, 52),  -- VfL Wolfsburg
  (9, 48),  -- Mainz 05
  (9, 50),  -- Borussia Mönchengladbach
  (9, 47),  -- 1. FC Köln
  (9, 49),  -- TSG Hoffenheim
  (9, 56),  -- Werder Bremen
  (9, 53),  -- VfL Bochum
  (9, 54),  -- FC Augsburg
  (9, 55),  -- VfB Stuttgart
  (9, 58),  -- Heidenheim
  (9, 57);  -- Darmstadt 98

-- Серия А 21/22
INSERT INTO football.league_team (league_id, team_id)
VALUES
  (10, 61),   -- Milan
  (10, 60),   -- Inter
  (10, 62),   -- Napoli
  (10, 59),   -- Juventus
  (10, 64),   -- Lazio
  (10, 63),   -- Roma
  (10, 66),   -- Fiorentina
  (10, 65),   -- Atalanta
  (10, 72),   -- Hellas Verona
  (10, 67),   -- Torino
  (10, 78),   -- Sassuolo
  (10, 68),   -- Udinese
  (10, 69),   -- Bologna
  (10, 73),   -- Empoli
  (10, 125),  -- Sampdoria
  (10, 123),  -- Spezia
  (10, 74),   -- Salernitana
  (10, 77),   -- Cagliari
  (10, 71),   -- Genoa
  (10, 126);  -- Venezia

-- Серия А 22/23
INSERT INTO football.league_team (league_id, team_id)
VALUES
  (11, 62),   -- Napoli
  (11, 64),   -- Lazio
  (11, 60),   -- Inter Milan
  (11, 61),   -- Milan
  (11, 65),   -- Atalanta
  (11, 63),   -- Roma
  (11, 59),   -- Juventus
  (11, 66),   -- Fiorentina
  (11, 69),   -- Bologna
  (11, 67),   -- Torino
  (11, 75),   -- Monza
  (11, 68),   -- Udinese
  (11, 78),   -- Sassuolo
  (11, 73),   -- Empoli
  (11, 74),   -- Salernitana
  (11, 76),   -- Lecce
  (11, 123),  -- Spezia
  (11, 72),   -- Hellas Verona
  (11, 124),  -- Cremonese
  (11, 125);  -- Sampdoria

-- Серия А 23/24
INSERT INTO football.league_team (league_id, team_id)
VALUES
  (12, 65),   -- Atalanta
  (12, 69),   -- Bologna
  (12, 71),   -- Genoa
  (12, 60),   -- Inter Milan (Интернационале)
  (12, 77),   -- Cagliari
  (12, 64),   -- Lazio
  (12, 76),   -- Lecce
  (12, 61),   -- Milan
  (12, 75),   -- Monza
  (12, 62),   -- Napoli
  (12, 63),   -- Roma
  (12, 74),   -- Salernitana
  (12, 78),   -- Sassuolo
  (12, 67),   -- Torino
  (12, 68),   -- Udinese
  (12, 66),   -- Fiorentina
  (12, 70),   -- Frosinone
  (12, 72),   -- Hellas Verona
  (12, 73),   -- Empoli
  (12, 59);   -- Juventus

-- Лига 1 21/22
INSERT INTO football.league_team (league_id, team_id)
VALUES
  (13, 79),   -- Paris Saint-Germain
  (13, 80),   -- Olympique de Marseille
  (13, 83),   -- AS Monaco
  (13, 85),   -- Stade Rennais
  (13, 84),   -- OGC Nice
  (13, 89),   -- RC Strasbourg
  (13, 87),   -- RC Lens
  (13, 81),   -- Olympique Lyonnais
  (13, 88),   -- FC Nantes
  (13, 82),   -- Lille OSC
  (13, 95),   -- Brest (Stade Brestois)
  (13, 90),   -- Stade de Reims
  (13, 86),   -- Montpellier HSC
  (13, 127),  -- Angers SCO
  (13, 128),  -- ESTAC Troyes
  (13, 92),   -- FC Lorient
  (13, 96),   -- Clermont Foot
  (13, 131),  -- AS Saint-Étienne
  (13, 91),   -- FC Metz
  (13, 132);  -- Girondins de Bordeaux

-- Лига 1 22/23
INSERT INTO football.league_team (league_id, team_id)
VALUES
  (14, 79),   -- Paris Saint-Germain
  (14, 80),   -- Olympique de Marseille
  (14, 87),   -- RC Lens
  (14, 93),   -- Toulouse FC
  (14, 82),   -- LOSC Lille
  (14, 81),   -- Olympique Lyonnais
  (14, 85),   -- Stade Rennais
  (14, 83),   -- AS Monaco
  (14, 88),   -- FC Nantes
  (14, 84),   -- OGC Nice
  (14, 89),   -- RC Strasbourg Alsace
  (14, 86),   -- Montpellier HSC
  (14, 95),   -- Brest (Stade Brestois 29)
  (14, 90),   -- Stade de Reims
  (14, 92),   -- FC Lorient
  (14, 96),   -- Clermont Foot 63
  (14, 128),  -- ES Troyes AC
  (14, 130),  -- AC Ajaccio
  (14, 129),  -- AJ Auxerre
  (14, 127);  -- Angers SCO

-- Лига 1 23/24
INSERT INTO football.league_team (league_id, team_id)
VALUES
  (15, 79),   -- Paris Saint-Germain
  (15, 80),   -- Olympique de Marseille
  (15, 87),   -- RC Lens
  (15, 82),   -- LOSC Lille
  (15, 81),   -- Olympique Lyonnais
  (15, 85),   -- Stade Rennais
  (15, 83),   -- AS Monaco
  (15, 88),   -- FC Nantes
  (15, 84),   -- OGC Nice
  (15, 89),   -- RC Strasbourg Alsace
  (15, 86),   -- Montpellier HSC
  (15, 95),   -- Brest (Stade Brestois 29)
  (15, 90),   -- Stade de Reims
  (15, 92),   -- FC Lorient
  (15, 96),   -- Clermont Foot 63
  (15, 94),   -- Le Havre AC
  (15, 91),   -- FC Metz
  (15, 93);   -- Toulouse FC

-- Лига Чемпионов 22/23
INSERT INTO football.league_team (league_id, team_id)
VALUES
  (16, 133),  -- Ajax
  (16, 4),    -- Liverpool
  (16, 62),   -- Napoli
  (16, 134),  -- Rangers
  (16, 107),  -- Porto
  (16, 23),   -- Atlético Madrid
  (16, 44),   -- Bayer Leverkusen
  (16, 138),  -- Club Brugge
  (16, 41),   -- Bayern Munich
  (16, 24),   -- Barcelona
  (16, 60),   -- Inter Milan
  (16, 135),  -- Viktoria Plzeň
  (16, 45),   -- Eintracht Frankfurt
  (16, 6),    -- Tottenham Hotspur
  (16, 136),  -- Sporting Lisbon
  (16, 80),   -- Olympique de Marseille
  (16, 61),   -- Milan
  (16, 5),    -- Chelsea
  (16, 102),  -- Red Bull Salzburg
  (16, 137),  -- Dinamo Zagreb
  (16, 33),   -- Real Madrid
  (16, 43),   -- RB Leipzig
  (16, 108),  -- Shakhtar Donetsk
  (16, 104),  -- Celtic
  (16, 1),    -- Manchester City
  (16, 35),   -- Sevilla
  (16, 42),   -- Borussia Dortmund
  (16, 97),   -- Copenhagen
  (16, 79),   -- Paris Saint-Germain
  (16, 59),   -- Juventus
  (16, 101),  -- Benfica
  (16, 139);  -- Maccabi Haifa

-- Лига чемпионов 23/24
INSERT INTO football.league_team (league_id, team_id)
VALUES
  (17, 41),   -- Bayern Munich
  (17, 3),    -- Manchester United
  (17, 97),   -- Copenhagen
  (17, 98),   -- Galatasaray
  (17, 35),   -- Sevilla
  (17, 2),    -- Arsenal
  (17, 99),   -- PSV Eindhoven
  (17, 87),   -- RC Lens
  (17, 62),   -- Napoli
  (17, 33),   -- Real Madrid
  (17, 100),  -- Braga
  (17, 46),   -- Union Berlin
  (17, 60),   -- Inter Milan
  (17, 101),  -- Benfica
  (17, 102),  -- Red Bull Salzburg
  (17, 34),   -- Real Sociedad
  (17, 103),  -- Feyenoord
  (17, 23),   -- Atlético Madrid
  (17, 64),   -- Lazio
  (17, 104),  -- Celtic
  (17, 79),   -- Paris Saint-Germain
  (17, 42),   -- Borussia Dortmund
  (17, 61),   -- Milan
  (17, 7),    -- Newcastle United
  (17, 1),    -- Manchester City
  (17, 43),   -- RB Leipzig
  (17, 106),  -- Crvena zvezda
  (17, 105),  -- Young Boys
  (17, 24),   -- Barcelona
  (17, 107),  -- Porto
  (17, 108),  -- Shakhtar Donetsk
  (17, 109);  -- Royal Antwerp
