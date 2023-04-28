
--reset our source tables
truncate table [dbo].[tbluser] ;
truncate table [dbo].[tblControl];


--insert same data
   insert into [dbo].[tbluser] 
   values
   ('Abu'   , '123456' , '01/01/2021'),
   ('Raju'  , '456789' , '01/01/2021'),
   ('Soya'  , '145365' , '02/01/2021'),
   ('Philip', '698547' , '03/01/2021');

   
   Insert into [dbo].[tblControl]
   values    ('tbluser'   ,  '03/01/2021');

   
   --Insert new data
   
   insert into [dbo].[tbluser] 
   values    ('Vinod'   , '487589' , '05/01/2021');

   select * from [dbo].[tbluser] 


   --Update old data

Update  [dbo].[tbluser] 
set [Phone] = '123645',
	[Last_m] ='04/01/2021'
where name ='Soya';

--check new and updated data

   select * from [dbo].[tbluser]

   --
   truncate table [dbo].[userData]
--insert same data
   insert into [dbo].[userData]
   values
   (1,'Abu'   , '123456' , '01/01/2021'),
   (2,'Raju'  , '456789' , '01/01/2021'),
   (3,'Soya'  , '145365' , '02/01/2021'),
   (4,'Philip', '698547' , '03/01/2021');


   select * from [dbo].[userData];
