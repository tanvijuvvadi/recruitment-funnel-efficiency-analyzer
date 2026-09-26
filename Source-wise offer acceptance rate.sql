SELECT
    RecruitmentSource,
    COUNT(OfferDate) AS Offers,
    COUNT(OfferAcceptanceDate) AS Accepted_Offers,
    COUNT(OfferAcceptanceDate) * 100.0 /
        NULLIF(COUNT(OfferDate), 0) AS Offer_Acceptance_Rate
FROM RecruitmentCandidates
GROUP BY RecruitmentSource
ORDER BY Offer_Acceptance_Rate DESC;