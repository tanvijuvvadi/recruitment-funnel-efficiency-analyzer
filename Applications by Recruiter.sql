SELECT
    RecruiterID,
    COUNT(*) AS Applications_Managed
FROM RecruitmentCandidates
GROUP BY RecruiterID
ORDER BY Applications_Managed DESC;