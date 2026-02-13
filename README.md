# US-Presidential-Election-Analysis-1976-2020-
# 📊 Project Overview
This project provides a comprehensive analysis of the U.S. Presidential Election results over a 44-year period. By processing raw data from the MIT Election Data and Science Lab (MEDSL), I explored voter turnout trends, identified "swing" states, and visualized the shifting political landscape across the United States.

# 🛠️ Tools Used
Excel: Initial data cleaning, standardization, and exploratory data analysis.
MySQL: Data warehousing, complex querying, and margin of victory calculations.
Power BI: Created interactive visualizations and heatmaps
# 🧼 Data Cleaning Process (The "Work")
To ensure the raw data was "Analysis-Ready," I performed the following steps in Excel:
Standardization: Corrected truncated state names and standardized party naming conventions.
Space Removal: Used the TRIM() function to remove trailing and leading spaces that interfere with SQL groupings
Handling Blanks: Identified and cleared placeholder text (like "null" or "nun") to ensure MySQL correctly recognized missing values as NULL.
Data Typing: Formatted columns to ensure candidatevotes and totalvotes were imported as integers for mathematical analysis.
