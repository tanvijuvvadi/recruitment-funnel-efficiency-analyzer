CREATE TABLE RecruitmentCandidates
(
    CandidateApplicationID NVARCHAR(20) NOT NULL,
    RequisitionID NVARCHAR(20) NOT NULL,

    JobRole NVARCHAR(100) NOT NULL,
    Department NVARCHAR(50) NOT NULL,
    JobLevel NVARCHAR(30),
    Location NVARCHAR(50),

    RecruiterID NVARCHAR(20),
    HiringManagerTeamID NVARCHAR(20),

    RequisitionOpenDate DATE,
    ApplicationDate DATE NOT NULL,

    RecruitmentSource NVARCHAR(100),
    SourceCategory NVARCHAR(50),

    ScreeningDate DATE,
    ScreeningStatus NVARCHAR(30),

    AssessmentDate DATE,
    AssessmentStatus NVARCHAR(30),

    Interview1Date DATE,
    Interview1Status NVARCHAR(30),

    Interview2Date DATE,
    Interview2Status NVARCHAR(30),

    FinalInterviewDate DATE,
    FinalInterviewStatus NVARCHAR(30),

    OfferDate DATE,
    OfferStatus NVARCHAR(30),

    OfferedSalary DECIMAL(15,2),
    ExpectedSalary DECIMAL(15,2),

    OfferAcceptanceDate DATE,
    JoiningDate DATE,

    JoiningStatus NVARCHAR(40),

    RejectionStage NVARCHAR(50),
    RejectionReason NVARCHAR(100),

    CandidateWithdrawalStage NVARCHAR(50),
    WithdrawalReason NVARCHAR(100),

    CostOfSource DECIMAL(15,2),
    RecruitmentCost DECIMAL(15,2),

    DaysToScreen INT,
    DaysToInterview INT,
    TimeToOffer INT,
    TimeToHire INT,
    TimeToFill INT,

    CandidateStatus NVARCHAR(50) NOT NULL,

    RecruitmentProcessRating INT,
    CommunicationRating INT,
    InterviewExperienceRating INT,
    OfferExperienceRating INT,

    SalaryGap DECIMAL(15,2),

    CONSTRAINT PK_RecruitmentCandidates
        PRIMARY KEY (CandidateApplicationID)
);
