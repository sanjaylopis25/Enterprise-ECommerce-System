USE EnterpriseECommerceDB;
GO

CREATE TABLE Users
(
    UserId INT IDENTITY(1,1) PRIMARY KEY,

    FirstName NVARCHAR(100) NOT NULL,

    LastName NVARCHAR(100) NOT NULL,

    Email NVARCHAR(255) NOT NULL,
    CONSTRAINT UQ_Users_Email UNIQUE (Email),

    PasswordHash NVARCHAR(500) NOT NULL,

    PhoneNumber NVARCHAR(20) NULL,

    RoleId INT NOT NULL,

    IsActive BIT NOT NULL DEFAULT 1,

    IsDeleted BIT NOT NULL DEFAULT 0,

    EmailConfirmed BIT NOT NULL DEFAULT 0,

    FailedLoginAttempts INT NOT NULL DEFAULT 0,

    LockoutEnd DATETIME2 NULL,

    CreatedDate DATETIME2 NOT NULL DEFAULT GETUTCDATE(),

    ModifiedDate DATETIME2 NULL,

    CONSTRAINT FK_Users_Roles
        FOREIGN KEY(RoleId)
        REFERENCES Roles(RoleId)
);
GO