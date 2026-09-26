SELECT
    FORMAT(ApplicationDate, 'yyyy-MM') AS Application_Month,
    COUNT(*) AS Applications
FROM RecruitmentCandidates
GROUP BY FORMAT(ApplicationDate, 'yyyy-MM')
ORDER BY Application_Month;