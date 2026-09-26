SELECT
    YEAR(ApplicationDate) AS Application_Year,
    MONTH(ApplicationDate) AS Application_Month,
    COUNT(*) AS Applications
FROM RecruitmentCandidates
GROUP BY
    YEAR(ApplicationDate),
    MONTH(ApplicationDate)
ORDER BY
    Application_Year,
    Application_Month;