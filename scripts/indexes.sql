-- 1. Ускоряет поиск матчей по дате
CREATE INDEX idx_match_date
  ON football.match(date);

-- 2. Ускоряет поиск матчей по домашней и гостевой команде
CREATE INDEX idx_match_home_team_id
  ON football.match(home_team_id);
CREATE INDEX idx_match_away_team_id
  ON football.match(away_team_id);

-- 3-4. Ускоряют поиск команд в лиге
CREATE INDEX idx_league_team_league_id
  ON football.league_team(league_id);
CREATE INDEX idx_league_team_team_id
  ON football.league_team(team_id);

-- 5. Ускоряет поиск игроков по текущему клубу
CREATE INDEX idx_player_current_team_id
  ON football.player(current_team_id);