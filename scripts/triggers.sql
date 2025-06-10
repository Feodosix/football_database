-- 1. Перевод игрока в новую команду при добавлении новой строки в таблицу Transfer
CREATE OR REPLACE FUNCTION football.on_new_transfer()
  RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
DECLARE
    v_team_name VARCHAR;
    v_player_name VARCHAR;
BEGIN
  SELECT name
  INTO v_player_name
  FROM football.player
  WHERE player_id = NEW.player_id;

  SELECT name
  INTO v_team_name
  FROM football.team
  WHERE team_id = NEW.buyer_id;

  CALL football.transfer_player(v_player_name, v_team_name);
  RETURN NEW;
END;
$$;

CREATE TRIGGER trg_after_transfer_insert
  AFTER INSERT ON football.transfer
  FOR EACH ROW
  EXECUTE FUNCTION football.on_new_transfer();

-- Пример использования:
--INSERT INTO football.transfer (player_id, date, buyer_id, seller_id, cost)
--VALUES
-- (24, '2022-07-19', 24, 41, 45);

--SELECT *
--FROM transfer;

--SELECT *
--FROM player
--WHERE player_id = 24;


-- 2. Пересчёт количества голов игрока при добавлении новой строки в таблицу Goal
CREATE OR REPLACE FUNCTION football.increment_player_goals()
  RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
  UPDATE football.player
     SET goals_scored = goals_scored + 1
   WHERE player_id = NEW.scorer_id;
  RETURN NEW;
END;
$$;

CREATE TRIGGER trg_increment_goals
  AFTER INSERT ON football.goal
  FOR EACH ROW
  EXECUTE FUNCTION football.increment_player_goals();

-- Пример использования:
-- Этот гол уже вставлен
--INSERT INTO football.goal (match_id, scorer_id, assistant_id, minute)
--VALUES
--  (127, 19, 15, 51);

-- Этот еще нет
--INSERT INTO football.goal (match_id, scorer_id, assistant_id, minute)
--VALUES
--  (127, 19, NULL, 91);

--SELECT *
--FROM player
--WHERE player_id = 19;

-- 3. Проверка корректности вставки в таблицу Match
CREATE OR REPLACE FUNCTION football.check_score_format()
  RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
  IF NEW.score !~ '^\d+:\d+$' THEN
    RAISE EXCEPTION 'Invalid score format "%"', NEW.score;
  END IF;
  RETURN NEW;
END;
$$;

CREATE TRIGGER trg_validate_score
  BEFORE INSERT OR UPDATE ON football.match
  FOR EACH ROW
  EXECUTE FUNCTION football.check_score_format();

-- Пример использования:
--UPDATE football.match
--SET score = '4;0'
--WHERE match_id = 1;
