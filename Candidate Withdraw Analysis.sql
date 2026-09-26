SELECT
    CandidateWithdrawalStage,
    WithdrawalReason,
    COUNT(*) AS Withdrawals
FROM RecruitmentCandidates
WHERE CandidateWithdrawalStage IS NOT NULL
GROUP BY
    CandidateWithdrawalStage,
    WithdrawalReason
ORDER BY Withdrawals DESC;