SELECT
    RecruiterID,
    COUNT(*) AS Applications,
    COUNT(JoiningDate) AS Joiners,
    COUNT(JoiningDate) * 100.0 /
        NULLIF(COUNT(*), 0) AS Application_To_Hire_Rate
FROM RecruitmentCandidates
GROUP BY RecruiterID
ORDER BY Application_To_Hire_Rate DESC;