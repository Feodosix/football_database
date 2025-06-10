-- 1. Список лучших бомбардиров
SELECT
    p.player_id,
    p.name,
    COUNT(g.scorer_id) AS total_goals,
    RANK() OVER (ORDER BY COUNT(g.scorer_id) DESC) AS goal_rank
FROM player p
LEFT JOIN goal g ON p.player_id = g.scorer_id
GROUP BY p.player_id, p.name;


-- 2. Список команд из англии
SELECT
    DISTINCT t.name AS team_name,
    l.name AS league_name
FROM team t
INNER JOIN league_team lt ON t.team_id = lt.team_id
INNER JOIN league l ON lt.league_id = l.league_id
WHERE l.country = 'England'
ORDER BY t.name;

-- 3. Статистика по всем игрокам
SELECT
    p.name,
    (SELECT COUNT(*) FROM goal g WHERE g.scorer_id = p.player_id) AS goal_count,
    (SELECT COUNT(*) FROM goal g WHERE g.assistant_id = p.player_id) AS assist_count,
    (SELECT t.name FROM team t WHERE t.team_id = p.current_team_id) AS team_name
FROM player p
ORDER BY goal_count DESC;

-- 4. Список команд, которые покупали игроков в этом десятилетии
SELECT
    t.name
FROM team t
WHERE EXISTS (
  SELECT 1
  FROM transfer tr
  WHERE tr.buyer_id = t.team_id AND CAST(tr.date AS varchar) LIKE '202%'
);

-- 5. Пары игроков из одной команды, забивавших в одном матче
SELECT DISTINCT
    g1.match_id,
    p1.name AS player1,
    p2.name AS player2
FROM goal g1
INNER JOIN goal g2
    ON g1.match_id = g2.match_id
    AND g1.scorer_id < g2.scorer_id
INNER JOIN player p1 ON g1.scorer_id = p1.player_id
INNER JOIN player p2 ON g2.scorer_id = p2.player_id
WHERE p1.current_team_id = p2.current_team_id;

-- 6. Игроки с самой высокой зарплатой
SELECT name, income
FROM player
ORDER BY income DESC
LIMIT 5;

-- 7. Игроки, у которых было хотя бы 2 трансфера
SELECT p.player_id, p.name, COUNT(t.player_id) AS transfer_count
FROM player p
JOIN transfer t ON p.player_id = t.player_id
GROUP BY p.player_id, p.name
HAVING COUNT(t.player_id) >= 2;

-- 8. Матчи, в которых забивали испанцы
SELECT DISTINCT
    m.match_id AS match_id,
    m.date,
    m.home_team_id,
    m.away_team_id,
    p.name AS spanish_scorer
FROM match m
JOIN goal g ON m.match_id = g.match_id
JOIN player p ON g.scorer_id = p.player_id
WHERE p.nationality = 'Spain';

-- 9. Среднее количество голов в матчах каждой команды лч 22/23
WITH team_matches AS (
  SELECT
    m.match_id AS match_id,
    m.home_team_id AS team_id,
    CAST(SUBSTRING(m.score, 1, 1) AS INT) AS goals
  FROM match m
  UNION ALL
  SELECT
    m.match_id AS match_id,
    m.away_team_id AS team_id,
    CAST(SUBSTRING(m.score, 3, 1) AS INT) AS goals
  FROM match m
)
SELECT
  t.name AS team_name,
  AVG(tm.goals) AS avg_goals_per_match
FROM team_matches tm
JOIN team t ON tm.team_id = t.team_id
JOIN league_team lt ON t.team_id = lt.team_id
JOIN league l ON lt.league_id = l.league_id
WHERE l.league_id = 17
GROUP BY t.team_id, t.name
ORDER BY avg_goals_per_match DESC;

-- 10. 10 самых быстрых голов
SELECT
    g.scorer_id,
    p.name AS player_name,
    m.match_id AS match_id,
    g.minute AS goal_minute
FROM goal g
JOIN player p ON g.scorer_id = p.player_id
JOIN match m ON g.match_id = m.match_id
ORDER BY g.minute ASC
LIMIT 10;
