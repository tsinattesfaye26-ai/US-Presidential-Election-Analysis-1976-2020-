-- The Party Count (How many are there?)
SELECT COUNT(DISTINCT Party_deataled) AS total_parties
FROM usa.president_elections;
-- The Party List (Who are they?)
select distinct Party_deataled
from usa.president_elections
order by Party_deataled ;
-- Longitudinal Party Growth
SELECT  year, 
    Party_deataled, 
    SUM(candidatevotes) AS total_votes
FROM  usa.president_elections
GROUP BY year, Party_deataled
ORDER BY year ASC, total_votes DESC;
-- Q1  How has the total number of votes cast nationally changed from 1976 to 2020?
SELECT 
    year, 
    SUM(candidatevotes) AS yearly_total,
    SUM(candidatevotes) - LAG(SUM(candidatevotes)) OVER (ORDER BY year) AS vote_increase
FROM usa.president_elections
GROUP BY year
ORDER BY year;
-- Q2  Party Dominance: What is the total percentage of votes for Democrats vs. Republicans for every year in the dataset?
SELECT 
    year,
    -- Calculate Democrat Percentage
    ROUND(
        SUM(CASE WHEN party_simplified = 'DEMOCRAT' THEN candidatevotes ELSE 0 END) * 100.0 / 
        SUM(candidatevotes), 2
    ) AS dem_percentage,
    -- Calculate Republican Percentage
    ROUND(
        SUM(CASE WHEN party_simplified = 'REPUBLICAN' THEN candidatevotes ELSE 0 END) * 100.0 / 
        SUM(candidatevotes), 2
    ) AS rep_percentage,
    -- Optional: Calculate the "Third Party / Other" gap
    ROUND(
        SUM(CASE WHEN party_simplified NOT IN ('DEMOCRAT', 'REPUBLICAN') THEN candidatevotes ELSE 0 END) * 100.0 / 
        SUM(candidatevotes), 2
    ) AS other_percentage
FROM usa.president_elections
GROUP BY year
ORDER BY year;
-- Q3 Third-Party Impact: In which election years did third-party candidates (Libertarian, Green, etc.) have the highest impact on the total vote share
SELECT 
    year,
    -- Summing everything that isn't Dem or Rep
    SUM(CASE WHEN party_simplified NOT IN ('DEMOCRAT', 'REPUBLICAN') THEN candidatevotes ELSE 0 END) AS total_third_party_votes,
    -- Calculating the share of the total national vote
    ROUND(
        SUM(CASE WHEN party_simplified NOT IN ('DEMOCRAT', 'REPUBLICAN') THEN candidatevotes ELSE 0 END) * 100.0 / 
        SUM(candidatevotes), 2
    ) AS third_party_share_percentage
FROM  usa.president_elections
GROUP BY year
ORDER BY third_party_share_percentage DESC;
-- Q4 Loyal States: Which 5 states have consistently voted for the same party in every single election since 1976?
WITH RankedVotes AS (
    -- First, we rank every candidate in every state for every year
    SELECT 
        year, 
        state, 
        candidate, 
        candidatevotes,
        RANK() OVER (PARTITION BY year, state ORDER BY candidatevotes DESC) as vote_rank
    FROM  usa.president_elections
)
-- Now, we compare the person at Rank 1 to the person at Rank 2
SELECT 
    r1.year, 
    r1.state, 
    r1.candidate AS winner, 
    r1.candidatevotes AS winner_votes,
    r2.candidate AS runner_up,
    r2.candidatevotes AS runner_up_votes,
    (r1.candidatevotes - r2.candidatevotes) AS vote_margin
FROM RankedVotes r1
JOIN RankedVotes r2 
    ON r1.year = r2.year 
    AND r1.state = r2.state
WHERE r1.vote_rank = 1 AND r2.vote_rank = 2
ORDER BY year DESC, vote_margin ASC;
-- Q5  How many votes did Democrats and Republicans receive in each state?
SELECT 
    year, 
    state,
    -- Summing only the votes where the party is DEMOCRAT
    SUM(CASE WHEN party_simplified = 'DEMOCRAT' THEN candidatevotes ELSE 0 END) AS dem_votes,
    -- Summing only the votes where the party is REPUBLICAN
    SUM(CASE WHEN party_simplified = 'REPUBLICAN' THEN candidatevotes ELSE 0 END) AS rep_votes
FROM usa.president_elections
GROUP BY year, state
ORDER BY year DESC, state ASC;
-- Q6 How many votes went to non-major parties (OTHER) per state?
SELECT 
    year, 
    state,
    SUM(candidatevotes) AS other_votes,
    -- We can also calculate the percentage to see how much impact they had
    ROUND((SUM(candidatevotes) / totalvotes) * 100, 2) AS other_percentage
FROM usa.president_elections
WHERE party_simplified NOT IN ('DEMOCRAT', 'REPUBLICAN')
GROUP BY year, state, totalvotes
ORDER BY other_percentage DESC;
-- Q7 Which states have the highest number of write-in votes?
SELECT 
    state, 
    SUM(candidatevotes) AS total_writein_votes,
    -- It's also helpful to see which specific year had the most write-ins
    MAX(year) AS latest_recorded_year
FROM usa.president_elections
WHERE writein = 'TRUE'  -- In some versions of this data, it might be 1 or 'TRUE'
GROUP BY state
ORDER BY total_writein_votes DESC
LIMIT 10;
-- Q8 How many votes did each candidate receive by state?
SELECT 
    year, 
    state, 
    candidate, 
    party_simplified, 
    candidatevotes
FROM usa.president_elections
ORDER BY year DESC, state ASC, candidatevotes DESC;
-- Q8.1 Filtering for a Specific Year 2020 
SELECT 
    state, 
    candidate, 
    candidatevotes
FROM usa.president_elections
WHERE year = 2020
ORDER BY state ASC, candidatevotes DESC;
-- Q9  Did the winning party change in any state across election years?
WITH WinnerList AS (
    -- First, identify the winner for every state in every year
    SELECT 
        year, 
        state, 
        party_simplified AS winning_party,
        ROW_NUMBER() OVER(PARTITION BY year, state ORDER BY candidatevotes DESC) as rnk
    FROM usa.president_elections
),
StateWinners AS (
    -- Filter to only the #1 winners
    SELECT year, state, winning_party
    FROM WinnerList
    WHERE rnk = 1
),
FlipDetection AS (
    -- Look at the current winner vs the previous winner (4 years ago)
    SELECT 
        year, 
        state, 
        winning_party,
        LAG(winning_party) OVER(PARTITION BY state ORDER BY year) AS previous_winner
    FROM StateWinners
)
-- Only show rows where the winner changed
SELECT * FROM FlipDetection 
WHERE winning_party <> previous_winner 
  AND previous_winner IS NOT NULL
ORDER BY year DESC, state ASC;
-- Q10  Which states give the highest vote totals to each party?
-- Top states for Democrats
SELECT 
    state, 
    SUM(candidatevotes) AS total_democrats_votes
FROM usa.president_elections
WHERE party_simplified = 'DEMOCRAT'
GROUP BY state
ORDER BY total_democrats_votes DESC
LIMIT 5;
--  Top states for Republicans
SELECT 
    state, 
    SUM(candidatevotes) AS total_Republican_votes
FROM usa.president_elections
WHERE party_simplified = 'REPUBLICAN'
GROUP BY state
ORDER BY total_Republican_votes DESC
LIMIT 5;

