SELECT
    SourceCategory,
    COUNT(*) AS Applications,
    COUNT(OfferDate) AS Offers,
    COUNT(JoiningDate) AS Joiners
FROM RecruitmentCandidates
GROUP BY SourceCategory
ORDER BY Joiners DESC;