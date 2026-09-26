SELECT
    'Application → Screening' AS Funnel_Stage,
    COUNT(*) AS Candidates_Entering,
    COUNT(ScreeningDate) AS Candidates_Progressed,
    COUNT(ScreeningDate) * 100.0 /
        NULLIF(COUNT(*),0) AS Conversion_Rate
FROM RecruitmentCandidates

UNION ALL

SELECT
    'Screening → Assessment',
    COUNT(ScreeningDate),
    COUNT(AssessmentDate),
    COUNT(AssessmentDate) * 100.0 /
        NULLIF(COUNT(ScreeningDate),0)
FROM RecruitmentCandidates

UNION ALL

SELECT
    'Assessment → Interview',
    COUNT(AssessmentDate),
    COUNT(Interview1Date),
    COUNT(Interview1Date) * 100.0 /
        NULLIF(COUNT(AssessmentDate),0)
FROM RecruitmentCandidates

UNION ALL

SELECT
    'Interview → Final Interview',
    COUNT(Interview1Date),
    COUNT(FinalInterviewDate),
    COUNT(FinalInterviewDate) * 100.0 /
        NULLIF(COUNT(Interview1Date),0)
FROM RecruitmentCandidates

UNION ALL

SELECT
    'Final Interview → Offer',
    COUNT(FinalInterviewDate),
    COUNT(OfferDate),
    COUNT(OfferDate) * 100.0 /
        NULLIF(COUNT(FinalInterviewDate),0)
FROM RecruitmentCandidates

UNION ALL

SELECT
    'Offer → Acceptance',
    COUNT(OfferDate),
    COUNT(OfferAcceptanceDate),
    COUNT(OfferAcceptanceDate) * 100.0 /
        NULLIF(COUNT(OfferDate),0)
FROM RecruitmentCandidates

UNION ALL

SELECT
    'Acceptance → Joining',
    COUNT(OfferAcceptanceDate),
    COUNT(JoiningDate),
    COUNT(JoiningDate) * 100.0 /
        NULLIF(COUNT(OfferAcceptanceDate),0)
FROM RecruitmentCandidates;