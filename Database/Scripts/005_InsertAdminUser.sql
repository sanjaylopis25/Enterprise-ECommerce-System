USE EnterpriseECommerceDB;
GO

INSERT INTO Users
(
    FirstName,
    LastName,
    Email,
    PasswordHash,
    PhoneNumber,
    RoleId
)
VALUES
(
    'Sanjay',
    'Lopis',
    'sanjaylopis@gmail.com',
    'SamplePasswordHash',
    '8145625355',
    1
);
GO