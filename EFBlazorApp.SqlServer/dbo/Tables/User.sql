--DECLARE @pwd VARBINARY(MAX);
--SET @pwd = PWDENCRYPT('123');
 
--SELECT PWDCOMPARE('123', @pwd)
--SELECT PWDCOMPARE('12345', @pwd)


CREATE TABLE [dbo].[User]
(
	 -- Idx  Bigint Identity(1,1)         , 
      UserId Nvarchar(20)   Primary key ,
      [Password]  varbinary(128)    Not Null    ,
      FirstName Varchar(10)         Not Null    ,
      LastName  Varchar(20)         Not Null    ,
      Email     Varchar(255)                    ,
      PhoneNumber Varchar(15)                   ,
      DateOfBirth DateTime Default(GetDate())   ,
      Gender Char(1)       Default('M')         ,
      RegistrationDate datetime Default(Getdate()),
      LastLoginDate  Smalldatetime Default(null),
      LoginFailed tinyint Default(0)            ,
      DelYn Char(1) Default('N')
)
