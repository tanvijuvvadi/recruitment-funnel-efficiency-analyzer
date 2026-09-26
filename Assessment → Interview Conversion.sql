SELECT
    COUNT(Interview1Date) * 100.0 /
    NULLIF(COUNT(AssessmentDate), 0)
        AS Assessment_To_Interview_Conversion
FROM RecruitmentCandidates;