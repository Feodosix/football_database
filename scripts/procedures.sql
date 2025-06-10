-- 1. Добавление матча
CREATE OR REPLACE PROCEDURE football.add_match(
  _league_name      VARCHAR,
  _season           VARCHAR,
  _home_team_name   VARCHAR,
  _away_team_name   VARCHAR,
  _score            VARCHAR,
  _match_date       DATE
)
LANGUAGE plpgsql
AS $$
DECLARE
  v_league_id  INT;
  v_home_id    INT;
  v_away_id    INT;
BEGIN

  SELECT league_id
    INTO v_league_id
    FROM football.league
   WHERE name = _league_name AND season = _season;
  IF NOT FOUND THEN
    RAISE EXCEPTION 'League "%" not found in season "%"', _league_name, _season;
  END IF;

  SELECT team_id
    INTO v_home_id
    FROM football.team
   WHERE name = _home_team_name;
  IF NOT FOUND THEN
    RAISE EXCEPTION 'Team "%" not found', _home_team_name;
  END IF;

  SELECT team_id
    INTO v_away_id
    FROM football.team
   WHERE name = _away_team_name;
  IF NOT FOUND THEN
    RAISE EXCEPTION 'Team "%" not found', _away_team_name;
  END IF;

  IF v_home_id = v_away_id THEN
    RAISE EXCEPTION 'Home team and away team are the same';
  END IF;

  INSERT INTO football.match (league_id, home_team_id, away_team_id, score, date)
  VALUES (v_league_id, v_home_id, v_away_id, _score, _match_date);
END;
$$;

-- Пример использования:
--CALL football.add_match(
--     'Premier League',
--     '23/24',
--    'Chelsea',
--     'Liverpool',
--     '1:1',
--     '2023-08-13'
--     );

-- 2. Трансфер игрока
CREATE OR REPLACE PROCEDURE football.transfer_player(
  _player_name      VARCHAR,
  _new_team_name    VARCHAR
)
LANGUAGE plpgsql
AS $$
DECLARE
  v_player_id  INT;
  v_team_id    INT;
BEGIN
  SELECT team_id
    INTO v_team_id
    FROM football.team
   WHERE name = _new_team_name;
  IF NOT FOUND THEN
    RAISE EXCEPTION 'Team "%" not found', _new_team_name;
  END IF;

  SELECT player_id
    INTO v_player_id
    FROM football.player
   WHERE name = _player_name;
  IF NOT FOUND THEN
    RAISE EXCEPTION 'Team "%" not found', _player_name;
  END IF;

  UPDATE football.player
     SET current_team_id = v_team_id
   WHERE player_id = v_player_id;
END;
$$;

-- Пример использования:
--CALL football.transfer_player('Rodri', 'Bayern Munich');

--SELECT *
--FROM football.player
--JOIN football.team ON current_team_id = team.team_id
--WHERE team.name = 'Bayern Munich';

-- 3. Получение матчей команды по имени
DROP FUNCTION get_team_matches(_team_name VARCHAR);
CREATE OR REPLACE FUNCTION football.get_team_matches(_team_name VARCHAR)
  RETURNS TABLE(
    match_date           DATE,
    league_name    VARCHAR,
    home_team      VARCHAR,
    away_team      VARCHAR,
    score          VARCHAR,
    match_id       INT
  )
AS $$
BEGIN
  RETURN QUERY
    SELECT tm.date AS match_date,tm.league_name, tm.home_team, tm.away_team, tm.score, tm.match_id
      FROM football.team_matches tm
     WHERE _team_name in (tm.home_team, tm.away_team)
    ORDER BY date DESC;
END;
$$ LANGUAGE plpgsql;

-- Пример использования:
--SELECT *
--FROM get_team_matches('Inter Milan');
