SELECT * FROM bbplayers;


SELECT * 
FROM accounts
WHERE balance > 100;


SELECT account, balance 
FROM accounts;

SELECT *
FROM accounts
ORDER BY balance DESC;


INSERT INTO accounts (account, balance, locked)
VALUES ('premium-savings', 10000, 0);  -- 0 = false, 1 = true


SELECT * 
FROM accounts;

SELECT * 
FROM accounts
WHERE account IN ('holiday-savings', 'premium-savings', 'student-checking', 'retirement', 'travel-fund');


SELECT * 
FROM accounts
WHERE balance >= 1000;



SELECT player_name
FROM bbplayers;

SELECT player_name, team
FROM bbplayers
WHERE team = 'Red Sox';


ALTER TABLE bbplayers
ADD team VARCHAR(50);

SELECT * FROM bbplayers


SELECT player_name, team
FROM bbplayers;


UPDATE bbplayers
SET team = 'Red Sox'
WHERE player_name = 'Jane Smith';

INSERT INTO bbplayers (player_name, team)
VALUES ('Carlos Rivera', 'Dodgers');


-- Create a helper table of teams
CREATE TABLE teams (team_name VARCHAR(50));
INSERT INTO teams VALUES ('Yankees'), ('Red Sox'), ('Dodgers'), ('Cubs'), ('Giants');

-- Update players with random teams
UPDATE bbplayers
SET team = t.team_name
FROM bbplayers p
CROSS APPLY (
    SELECT TOP 1 team_name
    FROM teams
    ORDER BY NEWID()
) t;



/* https://learn.microsoft.com/en-us/sql/tools/visual-studio-code-extensions/mssql/mssql-extension-visual-studio-code?view=sql-server-ver17 */
/* https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.dotnet-interactive-vscode */
