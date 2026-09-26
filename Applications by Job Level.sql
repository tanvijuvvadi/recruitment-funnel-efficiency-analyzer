SELECT
    JobLevel,
    COUNT(*) AS Applications
FROM RecruitmentCandidates
GROUP BY JobLevel
ORDER BY Applications DESC;