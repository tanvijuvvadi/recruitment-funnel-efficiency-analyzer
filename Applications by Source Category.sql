SELECT
    SourceCategory,
    COUNT(*) AS Applications
FROM RecruitmentCandidates
GROUP BY SourceCategory
ORDER BY Applications DESC;