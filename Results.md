### The Party Count (How many are there?)
|Total_parties|
|-------------|
| 175 |

**insight** 
-  The U.S. election dataset contains 175 unique political parties, indicating a highly diverse political landscape beyond the dominant two-party system
- Despite the perception of a two-party system (Democrats vs Republicans), the data shows a substantial number of minor and third parties participating over time
- The high party count suggests strong ballot access variation across states and years, where smaller or regional parties occasionally emerge
  
# Q1  How has the total number of votes cast nationally changed from 1976 to 2020?
year |	yearly_total	| vote_increase |
|----|--------------|---------------|
1976 |	81601344	| NULL
1980	| 86496851	| 4895507
1984	| 92654861	| 6158010
1988	| 91586825	| -1068036
1992	| 104599780	| 13012955
1996	| 96389818	| -8209962
2000	| 105593982	| 9204164
2004	| 122349450	| 16755468
2008	| 131419253	| 9069803
2012	| 129139997	| -2279256
2016	| 136787187	| 7647190
2020	| 158528503	| 21741316

**insight** 
- Total national votes increased significantly from 81.6 million (1976) to 158.5 million (2020), nearly doubling over the 44-year period.
Largest Increase in 2020
- The 2020 election recorded the highest vote increase (+21.7 million), indicating historically high voter turnout.
Periodic Declines
- Some elections experienced decreases in turnout (1988, 1996, 2012), suggesting that voter engagement fluctuates depending on political context and candidate dynamics.
Post-2000 Surge
- From 2000 onward, voter participation shows stronger growth momentum, particularly in 2004, 2008, and 2020 — possibly reflecting heightened political polarization and mobilization.
# Q2: Party Dominance — What is the total percentage of votes for Democrats vs. Republicans for every year in the dataset?
 | Year | Democrat (%) | Republican (%) | Other (%) |
|------|-------------:|---------------:|----------:|
| 1976 | 49.85 | 47.64 | 2.51 |
| 1980 | 41.02 | 50.46 | 8.52 |
| 1984 | 40.42 | 58.46 | 1.12 |
| 1988 | 45.55 | 53.11 | 1.34 |
| 1992 | 42.88 | 37.09 | 20.02 |
| 1996 | 49.07 | 40.46 | 10.47 |
| 2000 | 48.14 | 47.65 | 4.22 |
| 2004 | 48.14 | 50.57 | 1.29 |
| 2008 | 52.76 | 45.36 | 1.88 |
| 2012 | 50.92 | 46.98 | 2.10 |
| 2016 | 48.01 | 45.83 | 6.15 |
| 2020 | 51.26 | 46.82 | 1.92 | 

**insight** 
- Two-Party Dominance Is Consistent
Across all years, Democrats and Republicans collectively control the overwhelming majority of votes, typically exceeding 90%
- Republican Peak in 1984
Republicans achieved their strongest performance in 1984 (58.46%), marking the largest margin in the dataset.
- Third-Party Surge in 1992
The 1992 election shows an unusually high “Other” percentage (20.02%), indicating significant third-party influence that year
- ncreased Competitiveness Post-2000
From 2000 onward, vote shares between Democrats and Republicans are much closer, often within 3–5 percentage points — reflecting heightened political polarization and tighter races.

Q3: Third-Party Impact — In which election years did third-party candidates have the highest impact on total vote share?
| Year | Total Third-Party Votes | Third-Party Share (%) |
|------|-----------------------:|----------------------:|
| 1992 | 20,944,120 | 20.02 |
| 1996 | 10,090,770 | 10.47 |
| 1980 | 7,373,264  | 8.52  |
| 2016 | 8,417,229  | 6.15  |
| 2000 | 4,452,030  | 4.22  |
| 1976 | 2,050,005  | 2.51  |
| 2012 | 2,717,863  | 2.10  |
| 2020 | 3,043,449  | 1.92  |
| 2008 | 2,466,572  | 1.88  |
| 1988 | 1,227,506  | 1.34  |
| 2004 | 1,582,178  | 1.29  |
| 1984 | 1,038,219  | 1.12  |
**insight** 
- 1992 Was the Peak of Third-Party Influence
Third-party candidates captured 20.02% of the total vote — by far the highest in the dataset, indicating an exceptional deviation from typical two-party dominance.
- Sharp Drop After 1992
Third-party vote share fell by nearly half in 1996 (10.47%) and continued declining in subsequent elections, showing that the 1992 surge was not sustained.
- Moderate Resurgence in 2016
2016 saw a noticeable increase (6.15%), suggesting voter dissatisfaction with major party candidates that year.
- Long-Term Decline Trend
Since 2000, third-party vote share has generally remained below 5%, reinforcing the structural dominance of the two-party system.
# Q4 Which 5 states have consistently voted for the same party in every election since 1976?
### 🔵 Consistently Democratic States (Since 1992 without flipping)
These states have voted Democratic in every election from 1992 through 2020, and have not flipped since:
- California
- New York
- Massachusetts
- Illinois
- Maryland

These are considered strong Democratic strongholds

### 🔴 Consistently Republican States (Since 1980 without flipping)
Some of the most loyal Republican states include:
- Alabama
- Oklahoma
- Utah
- Idaho
- Wyoming
# Q5  How many votes did Democrats and Republicans receive in each state? 2020 

| State       | Democratic Votes | Republican Votes | Total Major Votes | Dem %  | Rep %  |
|------------|-----------------|----------------|-----------------|--------|--------|
| California | 11,110,250      | 6,006,429      | 17,116,679      | 64.9%  | 35.1%  |
| Texas      | 5,259,126       | 5,890,347      | 11,149,473      | 47.2%  | 52.8%  |
| Florida    | 5,297,045       | 5,668,731      | 10,965,776      | 48.3%  | 51.7%  |
| New York   | 5,244,886       | 3,251,997      | 8,496,883       | 61.7%  | 38.3%  |
| Pennsylvania | 3,458,229     | 3,377,674      | 6,835,903       | 50.6%  | 49.4%  |
| Illinois   | 3,471,915       | 2,446,891      | 5,918,806       | 58.7%  | 41.3%  |
| Ohio       | 2,679,165       | 3,154,834      | 5,833,999       | 45.9%  | 54.1%  |
| Michigan   | 2,804,040       | 2,649,852      | 5,453,892       | 51.4%  | 48.6%  |

**insight** 
# Q6 How many votes went to non-major parties (OTHER) per state?
| State      | Other Votes | % of Total State Vote | Total State Votes |
|-----------|------------|---------------------|-----------------|
| California | 384,202    | 2.20%               | 17,500,881      |
| Illinois   | 114,938    | 1.90%               | 6,033,744       |
| Florida    | 101,680    | 0.92%               | 11,067,456      |
| Colorado   | 87,993     | 2.70%               | 3,256,952       |
| Georgia    | 62,229     | 1.25%               | 4,997,716       |
| Indiana    | 61,186     | 2.02%               | 3,033,121       |
| Arizona    | 53,497     | 1.58%               | 3,387,326       |
| Arkansas   | 34,490     | 2.83%               | 1,219,069       |
| Iowa       | 34,138     | 2.02%               | 1,690,871       |
| Alabama    | 32,488     | 1.40%               | 2,323,282       |

#  Q7 Which states have the highest number of write-in votes?
| State                | Total Write-ins | Latest Record Year |
|---------------------|----------------|-----------------|
| District of Columbia | 357,024        | 2020            |
| California           | 195,192        | 2020            |
| Washington           | 135,057        | 2020            |
| North Carolina       | 104,855        | 2020            |
| Texas                | 97,154         | 2020            |
| Virginia             | 71,028         | 2020            |
| Maryland             | 71,013         | 2020            |
| Minnesota            | 69,581         | 2020            |
| Alabama              | 40,997         | 2020            |
| Indiana              | 39,105         | 2020            |

#  Q8 How many votes did each candidate receive by state?
| State       | Joe Biden (D) | Donald Trump (R) | Jo Jorgensen (L) | Howie Hawkins (G) |
|------------|---------------|-----------------|-----------------|-----------------|
| California | 11,110,250    | 6,006,429       | 187,895         | 81,029          |
| Texas      | 5,259,126     | 5,890,347       | 126,243         | 33,396          |
| Florida    | 5,297,045     | 5,668,731       | 70,324          | 14,721          |
| New York   | 5,244,886     | 3,251,997       | 60,383          | 32,832          |
| Illinois   | 3,471,915     | 2,446,891       | 38,484          | 15,605          |
| Pennsylvania | 3,458,229   | 3,377,674       | 79,380          | —               |
| Ohio       | 2,679,165     | 3,154,834       | 67,569          | 18,812          |
| Georgia    | 2,473,633     | 2,461,854       | 62,229          | —               |
| Michigan   | 2,804,040     | 2,649,852       | 60,371          | 13,718          |
| Arizona    | 1,672,143     | 1,661,686       | 51,465          | —               |

#  Q9  Did the winning party change in any state across election years?
| State      | 2012 Winner  | 2016 Winner  | 2020 Winner  | 2024 Winner  | Total Flips |
|-----------|-------------|-------------|-------------|-------------|-------------|
| Arizona   | Republican  | Republican  | Democratic  | Republican  | 2           |
| Georgia   | Republican  | Republican  | Democratic  | Republican  | 2           |
| Michigan  | Democratic  | Republican  | Democratic  | Republican  | 3           |
| Pennsylvania | Democratic | Republican | Democratic  | Republican  | 3           |
| Wisconsin | Democratic  | Republican  | Democratic  | Republican  | 3           |
| Florida   | Democratic  | Republican  | Republican  | Republican  | 1           |
| Ohio      | Democratic  | Republican  | Republican  | Republican  | 1           |
| Nevada    | Democratic  | Democratic  | Democratic  | Republican  | 1           |

