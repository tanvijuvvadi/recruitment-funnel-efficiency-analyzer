SELECT
    RecruiterID,
    COUNT(*) AS Applications_Handled
FROM RecruitmentCandidates
GROUP BY RecruiterID
ORDER BY Applications_Handled DESC;