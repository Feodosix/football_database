-- 1. Лучшие бомбардиры.
CREATE OR REPLACE VIEW football.top_scorers AS
SELECT
  p.player_id,
  p.name,
  t.name AS team,
  p.goals_scored
FROM football.player p
JOIN football.team t ON current_team_id = team_id
ORDER BY p.goals_scored DESC;

SELECT *
FROM football.top_scorers;

-- 2. Сводная статистика команд - кол-во сыгранных матчей и разница голов.
CREATE OR REPLACE VIEW football.team_summary AS
SELECT
  t.team_id,
  t.name,
  COUNT(m.*) AS matches_played,
  SUM(
    CASE WHEN m.home_team_id = t.team_id THEN split_part(m.score, ':', 1)::INT
         WHEN m.away_team_id = t.team_id THEN split_part(m.score, ':', 2)::INT
         ELSE 0
    END
  ) AS goals_for,
  SUM(
    CASE WHEN m.home_team_id = t.team_id THEN split_part(m.score, ':', 2)::INT
         WHEN m.away_team_id = t.team_id THEN split_part(m.score, ':', 1)::INT
         ELSE 0
    END
  ) AS goals_against
FROM football.team t
LEFT JOIN football.match m
  ON t.team_id IN (m.home_team_id, m.away_team_id)
GROUP BY t.team_id, t.name
ORDER BY matches_played DESC;

SELECT *
FROM football.team_summary;

-- 3. Прошедшие матчи в порядке недавности
CREATE OR REPLACE VIEW football.team_matches AS
SELECT
  m.match_id,
  m.date,
  l.name        AS league_name,
  m.home_team_id,
  ht.name       AS home_team,
  m.away_team_id,
  at.name       AS away_team,
  m.score
FROM football.match AS m
JOIN football.league AS l     USING (league_id)
JOIN football.team   AS ht    ON m.home_team_id = ht.team_id
JOIN football.team   AS at    ON m.away_team_id = at.team_id
WHERE m.date < CURRENT_DATE
ORDER BY m.date DESC;

-- Пример для Интера
SELECT *
FROM football.team_matches
WHERE 'Inter Milan' IN (home_team, away_team);
