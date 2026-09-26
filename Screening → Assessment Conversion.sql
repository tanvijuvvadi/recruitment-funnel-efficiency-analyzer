SELECT
    COUNT(AssessmentDate) * 100.0 /
    NULLIF(COUNT(ScreeningDate), 0)
        AS Screening_To_Assessment_Conversion
FROM RecruitmentCandidates;