SELECT
    RecruitmentSource,
    COUNT(*) AS Rejected_Candidates
FROM RecruitmentCandidates
WHERE RejectionStage IS NOT NULL
GROUP BY RecruitmentSource
ORDER BY Rejected_Candidates DESC;