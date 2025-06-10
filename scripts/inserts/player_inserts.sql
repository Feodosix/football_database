TRUNCATE TABLE football.player RESTART IDENTITY CASCADE;

INSERT INTO football.player (name, age, current_team_id, nationality, value, income, goals_scored)
VALUES
  -- Benfica players
  ('Petar Musa',         24, 101, 'Portugal', 60, 12, 8),
  ('Frederik Aursnes',     25, 101, 'Denmark',  55, 10, 7),
  ('Rafa Silva',           26, 101, 'Portugal', 50,  9, 6),
  ('Alex Grimaldo',             27, 44, 'Portugal', 45,  8, 5),
  ('Antonio Silva',        28, 101, 'Portugal', 50,  9, 7),

  -- Inter players
  ('Romelu Lukaku',               30, 62,  'Belgium',  85, 13, 12),
  ('Federico Di Marco',             27, 60,  'Italy',    70, 11, 5),
  ('Nikolo Barella',              26, 60,  'Italy',    68, 10, 4),
  ('Lautaro Martinez',     24, 60,  'Argentina',90, 14,15),
  ('Alessandro Bastoni',              23, 60,  'Italy',    65, 10, 4),
  ('Joaquin Correa',       28, 60,  'Argentina',75, 12, 7),
  ('Henrikh Mkhitaryan',           29, 60,  'Armenia',  60,  9, 6),
  ('Edin Dzeko',                 27, 60,  'Italy',    70, 11, 5),
  ('Hakan Chalhanoğlu',          31, 60,  'Turkey',   75, 12, 7),

  -- Manchester City players
  ('Kevin De Bruyne', 30, 1, 'Belgium', 120, 20, 18),
  ('Phil Foden', 22, 1, 'England', 100, 15, 12),
  ('Rodri',                26, 1,   'Spain',    75, 12, 5),
  ('Bernardus Silva',      30, 1,   'Portugal', 80, 13, 4),
  ('Erling Haaland',              23, 1,   'Netherlands',85,14,16),
  ('John Stones',          25, 1,   'England',  70, 11, 3),
  ('Ilkay Gündogan',       32, 1,   'Germany',  80, 12, 6),
  ('Manuel Akandji',              24, 1,   'Turkey',   60,  9, 5),
  ('Julian Alvarez',              21, 1,   'Argentina',90, 15,10),

  -- Bayern Munich players
  ('Robert Lewandowski', 33, 41, 'Poland', 110, 18, 20),
  ('Thomas Müller', 31, 41, 'Germany', 90, 14, 15),
  ('Joshua Kimmich',       27, 41,  'Germany',  90, 15, 4),

  -- Real Madrid players
  ('Karim Benzema', 34, 33, 'France', 105, 17, 22),
  ('Vinícius Júnior', 23, 33, 'Brazil', 95, 16, 19),
  ('Marko Asensio',              30, 33,  'Spain',    80, 13, 6),
  ('Rodrigo',              23, 33,  'Brazil',   85, 14, 8),
  ('Federico Valverde',             24, 33,  'Spain',    75, 12, 5),
  ('Camavinga',            27, 33,  'Spain',    80, 13, 7),

  -- Chelsea players
  ('Mason Mount', 24, 5, 'England', 85, 13, 10),
  ('N''Golo Kanté', 30, 5, 'France', 80, 12, 6),

  -- Milan players
  ('Zlatan Ibrahimović', 39, 61, 'Sweden', 70, 10, 5),
  ('Theo Hernandez', 26, 61, 'France', 95, 14, 12),
  ('Benasser',             26, 61,  'Italy',    70, 11, 5),
  ('Giroud',                25, 61,  'Italy',    65, 10, 4),
  ('Braim Diaz',           24, 61,  'Italy',    68, 10, 6),
  ('Raphael Leao',                 22, 61,  'Brazil',   85, 14, 10),

  -- Napoli players
  ('Victor Osimhen', 25, 62, 'Nigeria', 110, 16, 20),
  ('Piotr Zielinski', 28, 62, 'Poland', 90, 13, 8);
