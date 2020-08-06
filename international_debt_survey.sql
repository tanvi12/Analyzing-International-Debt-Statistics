SELECT * FROM debt_data LIMIT 10;
SELECT COUNT(DISTINCT country_name) AS total_distinct_countries FROM debt_data;
SELECT DISTINCT indicator_code AS distinct_debt_indicators FROM debt_data ORDER BY distinct_debt_indicators;
SELECT ROUND(SUM(debt)/1000000, 2) AS total_debt FROM debt_data;
SELECT country_name,  SUM(debt) AS total_debt FROM debt_data GROUP BY country_name ORDER BY total_debt DESC LIMIT 1;
SELECT indicator_code AS debt_indicator, indicator_name, AVG(debt) AS average_debt FROM debt_data GROUP BY debt_indicator, indicator_name ORDER BY average_debt DESC LIMIT 10;
SELECT country_name, indicator_name FROM debt_data WHERE debt = (SELECT MAX(debt) FROM debt_data WHERE indicator_code='DT.AMT.DLXF.CD');
SELECT country_name, indicator_code, MAX(debt) AS maximum_debt FROM debt_data GROUP BY country_name, indicator_code ORDER BY maximum_debt DESC LIMIT 10;