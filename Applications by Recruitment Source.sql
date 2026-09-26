SELECT
    RecruitmentSource,
    COUNT(*) AS Applications
FROM RecruitmentCandidates
GROUP BY RecruitmentSource
ORDER BY Applications DESC;