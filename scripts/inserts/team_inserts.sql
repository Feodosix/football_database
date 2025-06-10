TRUNCATE TABLE football.team RESTART IDENTITY CASCADE;

-- Команды АПЛ сезона 23/24
INSERT INTO football.team (name, country, stadium_name, titles_amount)
VALUES
  ('Manchester City', 'England', 'Etihad Stadium', 43),
  ('Arsenal', 'England', 'Emirates Stadium', 47),
  ('Manchester United', 'England', 'Old Trafford', 66),
  ('Liverpool', 'England', 'Anfield', 67),
  ('Chelsea', 'England', 'Stamford Bridge', 34),
  ('Tottenham Hotspur ', 'England', 'Tottenham Hotspur Stadium', 24),
  ('Newcastle United ', 'England', 'St. James'' Park', 4),
  ('Brighton & Hove Albion ', 'England', 'Falmer Stadium', 0),
  ('Brentford ', 'England', 'Brentford Community Stadium', 0),
  ('Fulham ', 'England', 'Craven Cottage', 0),
  ('Aston Villa ', 'England', 'Villa Park', 25),
  ('Crystal Palace ', 'England', 'Selhurst Park', 0),
  ('Everton ', 'England', 'Goodison Park', 9),
  ('AFC Bournemouth', 'England', 'Vitality Stadium', 0),
  ('Nottingham Forest ', 'England', 'City Ground', 5),
  ('West Ham United ', 'England', 'London Stadium', 3),
  ('Wolverhampton Wanderers ', 'England', 'Molineux Stadium', 3),
  ('Burnley ', 'England', 'Turf Moor', 2),
  ('Sheffield United ', 'England', 'Bramall Lane', 4),
  ('Luton Town ', 'England', 'Kenilworth Road', 0);

-- Команды ЛаЛиги сезона 23/24
INSERT INTO football.team (name, country, stadium_name, titles_amount)
VALUES
  ('Almería', 'Spain', 'Estadio de los Juegos Mediterráneos', 0),
  ('Athletic Bilbao', 'Spain', 'San Mamés', 30),
  ('Atlético Madrid', 'Spain', 'Wanda Metropolitano', 25),
  ('Barcelona', 'Spain', 'Camp Nou', 95),
  ('Cádiz', 'Spain', 'Nuevo Mirandilla', 1),
  ('Celta de Vigo', 'Spain', 'Abanca-Balaídos', 2),
  ('Getafe', 'Spain', 'Coliseum Alfonso Pérez', 0),
  ('Granada', 'Spain', 'Estadio Nuevo Los Cármenes', 0),
  ('Mallorca', 'Spain', 'Son Moix', 1),
  ('Osasuna', 'Spain', 'El Sadar', 0),
  ('Rayo Vallecano', 'Spain', 'Campo de Fútbol de Vallecas', 0),
  ('Real Betis', 'Spain', 'Estadio Benito Villamarín', 3),
  ('Real Madrid', 'Spain', 'Santiago Bernabéu', 95),
  ('Real Sociedad', 'Spain', 'Anoeta Stadium', 7),
  ('Sevilla', 'Spain', 'Ramón Sánchez Pizjuán', 32),
  ('Valencia', 'Spain', 'Mestalla', 7),
  ('Villarreal', 'Spain', 'Estadio de la Cerámica', 1),
  ('Deportivo Alavés', 'Spain', 'Mendizorrotza Stadium', 0),
  ('Las Palmas', 'Spain', 'Estadio Gran Canaria', 0),
  ('Girona', 'Spain', 'Estadi Montilivi', 0);

-- Команды Бундеслиги сезона 23/24
INSERT INTO football.team (name, country, stadium_name, titles_amount)
VALUES
  ('Bayern Munich', 'Germany', 'Allianz Arena', 83),
  ('Borussia Dortmund', 'Germany', 'Signal Iduna Park', 67),
  ('RB Leipzig', 'Germany', 'Red Bull Arena', 0),
  ('Bayer Leverkusen', 'Germany', 'BayArena', 0),
  ('Eintracht Frankfurt', 'Germany', 'Deutsche Bank Park', 1),
  ('Union Berlin', 'Germany', 'Stadion An der Alten Försterei', 1),
  ('Freiburg', 'Germany', 'Europa-Park Stadion', 1),
  ('Borussia Mönchengladbach', 'Germany', 'Borussia-Park', 5),
  ('Hoffenheim', 'Germany', 'PreZero Arena', 0),
  ('Wolfsburg', 'Germany', 'Volkswagen Arena', 1),
  ('Stuttgart', 'Germany', 'Mercedes-Benz Arena', 5),
  ('Mainz 05', 'Germany', 'Mewa Arena', 0),
  ('Augsburg', 'Germany', 'WWK Arena', 0),
  ('Köln', 'Germany', 'RheinEnergieStadion', 0),
  ('Bochum', 'Germany', 'Vonovia-Ruhrstadion', 0),
  ('Werder Bremen', 'Germany', 'Wohninvest Weserstadion', 4),
  ('Darmstadt 98', 'Germany', 'Stadion am Böllenfalltor', 0),
  ('Heidenheim', 'Germany', 'Voith-Arena', 0);

-- Команды Серии А сезона 23/24
INSERT INTO football.team (name, country, stadium_name, titles_amount)
VALUES
  ('Juventus', 'Italy', 'Allianz Stadium', 70),
  ('Inter Milan', 'Italy', 'San Siro', 35),
  ('Milan', 'Italy', 'San Siro', 43),
  ('Napoli', 'Italy', 'Stadio Diego Armando Maradona', 30),
  ('Roma', 'Italy', 'Stadio Olimpico', 30),
  ('Lazio', 'Italy', 'Stadio Olimpico', 30),
  ('Atalanta', 'Italy', 'Gewiss Stadium', 1),
  ('Fiorentina', 'Italy', 'Stadio Artemio Franchi', 2),
  ('Torino', 'Italy', 'Stadio Olimpico Grande Torino', 7),
  ('Udinese', 'Italy', 'Dacia Arena', 0),
  ('Bologna', 'Italy', 'Stadio Renato Dall''Ara', 7),
  ('Frosinone', 'Italy', 'Stadio Benito Stirpe', 0),
  ('Genoa', 'Italy', 'Stadio Luigi Ferraris', 9),
  ('Hellas Verona', 'Italy', 'Stadio Marc''Antonio Bentegodi', 1),
  ('Empoli', 'Italy', 'Stadio Carlo Castellani', 0),
  ('Salernitana', 'Italy', 'Stadio Arechi', 0),
  ('Monza', 'Italy', 'Stadio Brianteo', 0),
  ('Lecce', 'Italy', 'Stadio Via del Mare', 0),
  ('Cagliari', 'Italy', 'Stadio Sant''Elia', 0),
  ('Sassuolo', 'Italy', 'Mapei Stadium', 0);

-- Команды Лиги 1 сезона 23/24
INSERT INTO football.team (name, country, stadium_name, titles_amount)
VALUES
  ('Paris Saint-Germain', 'France', 'Parc des Princes', 42),
  ('Marseille', 'France', 'Stade Vélodrome', 40),
  ('Lyonnais', 'France', 'Groupama Stadium', 7),
  ('Lille', 'France', 'Stade Pierre-Mauroy', 4),
  ('Monaco', 'France', 'Stade Louis II', 8),
  ('Nice', 'France', 'Allianz Riviera', 4),
  ('Rennais', 'France', 'Roazhon Park', 6),
  ('Montpellier', 'France', 'Stade de la Mosson', 2),
  ('Lens', 'France', 'Stade Bollaert-Delelis', 1),
  ('Nantes', 'France', 'Stade de la Beaujoire', 8),
  ('Strasbourg', 'France', 'Stade de la Meinau', 1),
  ('Reims', 'France', 'Stade Auguste-Delaune', 6),
  ('Metz', 'France', 'Stade Saint-Symphorien', 1),
  ('Lorient', 'France', 'Stade du Moustoir', 0),
  ('Toulouse', 'France', 'Stadium de Toulouse', 0),
  ('Le Havre', 'France', 'Stade Océane', 0),
  ('Brestois 29', 'France', 'Stade Francis-Le Blé', 0),
  ('Clermont Foot', 'France', 'Stade Gabriel Montpied', 0);

-- Команды ЛЧ 23/24 (которые не были добавлены ранее)
INSERT INTO football.team (name, country, stadium_name, titles_amount)
VALUES
  ('Copenhagen', 'Denmark', 'Parken Stadium', 14),
  ('Galatasaray', 'Turkey', 'Nef Stadium', 23),
  ('PSV Eindhoven', 'Netherlands', 'Philips Stadion', 24),
  ('Braga', 'Portugal', 'Estádio Municipal de Braga', 0),
  ('Benfica', 'Portugal', 'Estádio da Luz', 37),
  ('Red Bull Salzburg', 'Austria', 'Red Bull Arena', 15),
  ('Feyenoord', 'Netherlands', 'De Kuip', 15),
  ('Celtic ', 'Scotland', 'Celtic Park', 51),
  ('Young Boys', 'Switzerland', 'Stade de Suisse Wankdorf', 7),
  ('Crvena zvezda', 'Serbia', 'Rajko Mitić Stadium', 32),
  ('Porto', 'Portugal', 'Estádio do Dragão', 30),
  ('Shakhtar Donetsk', 'Ukraine', 'Donbass Arena', 13),
  ('Royal Antwerp ', 'Belgium', 'Bosuilstadion', 7);

-- Команды топ-5 лиг сезонов 21/22 и 22/23, не игравшие в сезоне 23/24
INSERT INTO football.team (name, country, stadium_name, titles_amount)
VALUES
  -- Английская Премьер-лига:
  ('Leicester City ', 'England', 'King Power Stadium', 1),
  ('Southampton ', 'England', 'St Mary''s Stadium', 1),
  ('Leeds United ', 'England', 'Elland Road', 3),
  ('Norwich City F.C.', 'England', 'Carrow Road', 0),
  ('Watford F.C.', 'England', 'Vicarage Road', 0),

  -- Ла Лига:
  ('Real Valladolid', 'Spain', 'José Zorrilla', 0),
  ('Elche', 'Spain', 'Nuevo Estadio Martínez Valero', 0),
  ('Espanyol', 'Spain', 'RCDE Stadium', 4),
  ('Levante', 'Spain', 'Estadio Ciudad de Valencia', 0),

  -- Бундеслига:
  ('Schalke 04', 'Germany', 'Veltins-Arena', 7),
  ('Hertha', 'Germany', 'Olympiastadion Berlin', 0),
  ('Arminia Bielefeld', 'Germany', 'SchücoArena', 0),
  ('Greuther Fürth', 'Germany', 'Paradies Stadion', 0),

  -- Серия A:
  ('Spezia', 'Italy', 'Stadio Alberto Picco', 0),
  ('Cremonese', 'Italy', 'Stadio Giovanni Zini', 0),
  ('Sampdoria', 'Italy', 'Stadio Luigi Ferraris', 1),
  ('Venezia', 'Italy', 'Stadio Pierluigi Penzo', 0),

  -- Лига 1:
  ('Angers', 'France', 'Stade Raymond Kopa', 1),
  ('Troyes', 'France', 'Stade de l''Aube', 0),
  ('Auxerre', 'France', 'Stade de l''Abbé-Deschamps', 1),
  ('Ajaccio', 'France', 'Stade François Coty', 0),
  ('Saint-Étienne', 'France', 'Stade Geoffroy-Guichard', 10),
  ('Bordeaux', 'France', 'Matmut Atlantique', 6);

-- Команды ЛЧ 22/23, которых еще нет в таблице
INSERT INTO football.team (name, country, stadium_name, titles_amount)
VALUES
  ('Ajax', 'Netherlands', 'Johan Cruyff Arena', 35),
  ('Rangers ', 'Scotland', 'Ibrox Stadium', 55),
  ('Viktoria Plzeň', 'Czech Republic', 'Doosan Arena', 3),
  ('Sporting', 'Portugal', 'Estádio José Alvalade', 19),
  ('Dinamo Zagreb', 'Croatia', 'Stadion Maksimir', 24),
  ('Club Brugge', 'Belgium', 'Jan Breydel Stadium', 17),
  ('Maccabi Haifa ', 'Israel', 'Sammy Ofer Stadium', 4);
