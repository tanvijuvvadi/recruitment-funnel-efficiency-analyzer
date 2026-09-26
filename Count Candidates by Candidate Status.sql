SELECT
    CandidateStatus,
    COUNT(*) AS Candidate_Count
FROM RecruitmentCandidates
GROUP BY CandidateStatus
ORDER BY Candidate_Count DESC;