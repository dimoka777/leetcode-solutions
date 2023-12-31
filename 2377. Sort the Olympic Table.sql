// Table: Olympic
//
// +---------------+---------+
// | Column Name   | Type    |
// +---------------+---------+
// | country       | varchar |
// | gold_medals   | int     |
// | silver_medals | int     |
// | bronze_medals | int     |
// +---------------+---------+
// country is the primary key for this table.
// Each row in this table shows a country name and the number of gold, silver, and bronze
// medals it won in the Olympic games.
//
//
// The Olympic table is sorted according to the following rules:
//
// The country with more gold medals comes first.
// If there is a tie in the gold medals, the country with more silver medals comes first.
// If there is a tie in the silver medals, the country with more bronze medals comes first.
// If there is a tie in the bronze medals, the countries with the tie are sorted in ascending order lexicographically.
// Write an SQL query to sort the Olympic table
//
// The query result format is shown in the following example.


SELECT country, gold_medals, silver_medals, bronze_medals
FROM Olympic
ORDER BY gold_medals DESC, silver_medals DESC, bronze_medals DESC, country