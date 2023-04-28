
CREATE TABLE [dbo].[tbluser](
	[Key] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](40) not NULL,
	[Phone] [varchar](20) not NULL,
	[Last_m] date not null
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[tblControl](
   [TableName] [varchar](50) NOT NULL,
   [LastLoadDate] [datetime] NOT NULL
   );


   insert into [dbo].[tbluser] 
   values
   ('Abu'   , '123456' , '05/07/2021'),
   ('Raju'  , '456789' , '06/07/2021'),
   ('Soya'  , '123645' , '07/07/2021'),
   ('Philip', '698547' , '08/07/2021')

   
   SELECT [Key]
      ,[Name]
      ,[Phone]
      ,[Last_m]
  FROM [tbluser];


  
   Insert into [dbo].[tblControl]
   values    ('tbluser'   ,  '08/07/2021');

   
  -- truncate table [dbo].[tbluser] 

   --truncate table [dbo].[tblControl]

   drop table [dbo].[tblControl]
  SELECT  [TableName]
      ,[LastLoadDate]
  FROM [tblControl]


   
   SELECT [Key]
      ,[Name]
      ,[Phone]
      ,[Last_m]
  FROM [tbluser];


 -- =============================================
CREATE PROCEDURE SPUpdateLoadInfo
	@TableName [varchar](50) ,
   	@ModifiedDate [date] 
AS
BEGIN
	
UPDATE [dbo].[tblControl]
   SET 
      [LastLoadDate] = @ModifiedDate
 WHERE [TableName] = @TableName
  
END
GO


CREATE TABLE [dbo].[userData](
	[Key] [int]  NOT NULL,
	[Name] [varchar](40) not NULL,
	[Phone] [varchar](20) not NULL,
	[Last_m] date not null
) 
GO

--Get Max Modified Date

Select max([Last_m]) as Last_m
from tbluser


--Get Last Updated Date

select [LastLoadDate] as LastLoadDate
from tblControl



--truncate table [dbo].[tbluser] 

   insert into [dbo].[tbluser] 
   values    ('Vinod'   , '487589' , '11/07/2021')
   insert into [dbo].[tbluser] 
   values    ('santhosh'   , '987589' , '10/07/2021');
   insert into [dbo].[tbluser] 
   values    ('lokesh'   , '347589' , '09/07/2021');



Select * from tbluser
Where Last_m <= '05/01/2021' And   Last_m >  '03/01/2021'



---------------
CREATE TABLE [dbo].[userData](
	[Key] [int]  NOT NULL,
	[Name] [varchar](40) not NULL,
	[Phone] [varchar](20) not NULL,
	[Last_m] date not null
) 
--GO
--truncate table [dbo].[userData]


select * from [dbo].[userData]