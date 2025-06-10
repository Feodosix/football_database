TRUNCATE TABLE football.league RESTART IDENTITY CASCADE;

-- По 3 сезона топ-5 лиг и 2 сезона Лиги Чемпионов
INSERT INTO football.league (name, country, format, season, winner_id)
VALUES
  ('Premier League', 'England', 'League', '21/22', 1),
  ('Premier League', 'England', 'League', '22/23', 1),
  ('Premier League', 'England', 'League', '23/24', 1),

  ('La Liga', 'Spain', 'League', '21/22', 33),
  ('La Liga', 'Spain', 'League', '22/23', 24),
  ('La Liga', 'Spain', 'League', '23/24', 33),

  ('Bundesliga', 'Germany', 'League', '21/22', 41),
  ('Bundesliga', 'Germany', 'League', '22/23', 41),
  ('Bundesliga', 'Germany', 'League', '23/24', 44),

  ('Serie A', 'Italy', 'League', '21/22', 61),
  ('Serie A', 'Italy', 'League', '22/23', 62),
  ('Serie A', 'Italy', 'League', '23/24', 60),

  ('Ligue 1', 'France', 'League', '21/22', 79),
  ('Ligue 1', 'France', 'League', '22/23', 79),
  ('Ligue 1', 'France', 'League', '23/24', 79),

  ('Champions League', NULL, 'Cup', '22/23', 1),
  ('Champions League', NULL, 'Cup', '23/24', 33);
