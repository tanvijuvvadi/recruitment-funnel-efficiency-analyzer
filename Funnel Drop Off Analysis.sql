SELECT
    'Application → Screening' AS Stage,
    COUNT(*) - COUNT(ScreeningDate) AS Drop_Off,
    (COUNT(*) - COUNT(ScreeningDate)) * 100.0 /
        NULLIF(COUNT(*),0) AS Drop_Off_Rate
FROM RecruitmentCandidates

UNION ALL

SELECT
    'Screening → Assessment',
    COUNT(ScreeningDate) - COUNT(AssessmentDate),
    (COUNT(ScreeningDate) - COUNT(AssessmentDate)) * 100.0 /
        NULLIF(COUNT(ScreeningDate),0)
FROM RecruitmentCandidates

UNION ALL

SELECT
    'Assessment → Interview',
    COUNT(AssessmentDate) - COUNT(Interview1Date),
    (COUNT(AssessmentDate) - COUNT(Interview1Date)) * 100.0 /
        NULLIF(COUNT(AssessmentDate),0)
FROM RecruitmentCandidates

UNION ALL

SELECT
    'Interview → Final Interview',
    COUNT(Interview1Date) - COUNT(FinalInterviewDate),
    (COUNT(Interview1Date) - COUNT(FinalInterviewDate)) * 100.0 /
        NULLIF(COUNT(Interview1Date),0)
FROM RecruitmentCandidates

UNION ALL

SELECT
    'Final Interview → Offer',
    COUNT(FinalInterviewDate) - COUNT(OfferDate),
    (COUNT(FinalInterviewDate) - COUNT(OfferDate)) * 100.0 /
        NULLIF(COUNT(FinalInterviewDate),0)
FROM RecruitmentCandidates

UNION ALL

SELECT
    'Offer → Acceptance',
    COUNT(OfferDate) - COUNT(OfferAcceptanceDate),
    (COUNT(OfferDate) - COUNT(OfferAcceptanceDate)) * 100.0 /
        NULLIF(COUNT(OfferDate),0)
FROM RecruitmentCandidates

UNION ALL

SELECT
    'Acceptance → Joining',
    COUNT(OfferAcceptanceDate) - COUNT(JoiningDate),
    (COUNT(OfferAcceptanceDate) - COUNT(JoiningDate)) * 100.0 /
        NULLIF(COUNT(OfferAcceptanceDate),0)
FROM RecruitmentCandidates;