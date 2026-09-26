SELECT
    Location,
    COUNT(*) AS Applications
FROM RecruitmentCandidates
GROUP BY Location
ORDER BY Applications DESC;