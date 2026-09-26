SELECT
    CandidateWithdrawalStage,
    COUNT(*) AS Withdrawal_Count
FROM RecruitmentCandidates
WHERE CandidateWithdrawalStage IS NOT NULL
GROUP BY CandidateWithdrawalStage
ORDER BY Withdrawal_Count DESC;