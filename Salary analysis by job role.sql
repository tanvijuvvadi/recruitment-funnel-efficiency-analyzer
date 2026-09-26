SELECT
    JobRole,
    AVG(OfferedSalary) AS Average_Offered_Salary,
    AVG(ExpectedSalary) AS Average_Expected_Salary,
    AVG(SalaryGap) AS Average_Salary_Gap
FROM RecruitmentCandidates
GROUP BY JobRole
ORDER BY Average_Salary_Gap DESC;