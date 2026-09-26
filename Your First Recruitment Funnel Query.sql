SELECT
    COUNT(*) AS Applications,

    COUNT(ScreeningDate) AS Screened,

    COUNT(AssessmentDate) AS Assessed,

    COUNT(Interview1Date) AS Interviewed,

    COUNT(FinalInterviewDate) AS Final_Interviews,

    COUNT(OfferDate) AS Offers,

    COUNT(OfferAcceptanceDate) AS Offers_Accepted,

    COUNT(JoiningDate) AS Joined

FROM RecruitmentCandidates;