DROP TABLE IF EXISTS football.goal CASCADE;
DROP TABLE IF EXISTS football.transfer CASCADE;
DROP TABLE IF EXISTS football.player CASCADE;
DROP TABLE IF EXISTS football.match CASCADE;
DROP TABLE IF EXISTS football.league_team CASCADE;
DROP TABLE IF EXISTS football.league CASCADE;
DROP TABLE IF EXISTS football.team CASCADE;

-- 1. Таблица Team
CREATE TABLE football.team (
    team_id       SERIAL        PRIMARY KEY,
    name          VARCHAR(100)  NOT NULL,
    country       VARCHAR(100)  NOT NULL,
    stadium_name  VARCHAR(200)  NOT NULL,
    titles_amount INT           NOT NULL
);

-- 2. Таблица League
CREATE TABLE football.league (
    league_id     SERIAL       PRIMARY KEY,
    name          VARCHAR(100) NOT NULL,
    country       VARCHAR(100),
    format        VARCHAR(50)  NOT NULL,
    season        VARCHAR(50)  NOT NULL,
    winner_id     INT,
    FOREIGN KEY (winner_id) REFERENCES football.team(team_id)
);

-- 3. Таблица League_Team
CREATE TABLE football.league_team (
    league_id INT NOT NULL,
    team_id   INT NOT NULL,
    PRIMARY KEY (league_id, team_id),
    FOREIGN KEY (league_id) REFERENCES football.league(league_id),
    FOREIGN KEY (team_id)   REFERENCES football.team(team_id)
);

-- 4. Таблица Match
CREATE TABLE football.match (
    match_id      SERIAL       PRIMARY KEY,
    league_id     INT,
    home_team_id  INT,
    away_team_id  INT,
    score         VARCHAR(10)  NOT NULL,
    date          DATE         NOT NULL,
    FOREIGN KEY (home_team_id) REFERENCES football.team(team_id),
    FOREIGN KEY (away_team_id) REFERENCES football.team(team_id),
    FOREIGN KEY (league_id)    REFERENCES football.league(league_id)
);

-- 5. Таблица Player
CREATE TABLE football.player (
    player_id       SERIAL       PRIMARY KEY,
    name            VARCHAR(100) NOT NULL,
    age             INT          NOT NULL,
    current_team_id INT,
    nationality     VARCHAR(50)  NOT NULL,
    value           INT          NOT NULL,
    income          INT          NOT NULL,
    goals_scored    INT          NOT NULL,
    FOREIGN KEY (current_team_id) REFERENCES football.team(team_id)
);

-- 6. Таблица Goal
CREATE TABLE football.goal (
    goal_id       SERIAL  PRIMARY KEY,
    match_id      INT,
    scorer_id     INT,
    assistant_id  INT,
    minute        INT     NOT NULL,
    FOREIGN KEY (match_id)     REFERENCES football.match(match_id),
    FOREIGN KEY (scorer_id)    REFERENCES football.player(player_id),
    FOREIGN KEY (assistant_id) REFERENCES football.player(player_id)
);

-- 7. Таблица Transfer
CREATE TABLE football.transfer (
    transfer_id   SERIAL PRIMARY KEY,
    player_id     INT,
    date          DATE   NOT NULL,
    buyer_id      INT,
    seller_id     INT,
    cost          INT    NOT NULL,
    FOREIGN KEY (buyer_id)  REFERENCES football.team(team_id),
    FOREIGN KEY (seller_id) REFERENCES football.team(team_id),
    FOREIGN KEY (player_id) REFERENCES football.player(player_id)
);