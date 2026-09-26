SELECT
    Department,
    COUNT(*) AS Applications
FROM RecruitmentCandidates
GROUP BY Department
ORDER BY Applications DESC;