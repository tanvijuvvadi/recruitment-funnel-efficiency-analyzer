SELECT

    COUNT(*) AS Total_Applications,

    COUNT(ScreeningDate) AS Candidates_Screened,

    COUNT(AssessmentDate) AS Candidates_Assessed,

    COUNT(Interview1Date) AS Candidates_Interviewed,

    COUNT(OfferDate) AS Offers_Made,

    COUNT(OfferAcceptanceDate) AS Offers_Accepted,

    COUNT(JoiningDate) AS Total_Joiners,

    ROUND(
        COUNT(ScreeningDate) * 100.0 /
        NULLIF(COUNT(*),0),2
    ) AS Application_To_Screening_Percent,

    ROUND(
        COUNT(JoiningDate) * 100.0 /
        NULLIF(COUNT(*),0),2
    ) AS Application_To_Hire_Percent,

    ROUND(
        COUNT(OfferAcceptanceDate) * 100.0 /
        NULLIF(COUNT(OfferDate),0),2
    ) AS Offer_Acceptance_Percent,

    ROUND(
        COUNT(JoiningDate) * 100.0 /
        NULLIF(COUNT(OfferAcceptanceDate),0),2
    ) AS Offer_To_Join_Percent,

    ROUND(
        AVG(CAST(TimeToHire AS DECIMAL(10,2))),2
    ) AS Average_Time_To_Hire,

    ROUND(
        SUM(RecruitmentCost) * 1.0 /
        NULLIF(COUNT(JoiningDate),0),2
    ) AS Cost_Per_Hire

FROM RecruitmentCandidates;