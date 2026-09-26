SELECT
    JobRole,
    COUNT(*) AS Applications
FROM RecruitmentCandidates
GROUP BY JobRole
ORDER BY Applications DESC;