SELECT
    COUNT(*) AS Applications,
    COUNT(ScreeningDate) AS Screened,
    COUNT(AssessmentDate) AS Assessed,
    COUNT(Interview1Date) AS Interview1,
    COUNT(Interview2Date) AS Interview2,
    COUNT(FinalInterviewDate) AS FinalInterview,
    COUNT(OfferDate) AS Offers,
    COUNT(OfferAcceptanceDate) AS AcceptedOffers,
    COUNT(JoiningDate) AS Joiners
FROM RecruitmentCandidates;