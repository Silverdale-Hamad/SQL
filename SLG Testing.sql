--05:00 to go 05:35 --35 +25 1 hour addd workorder logic


select @@servername
EXEC master..xp_cmdshell 'bcp [AdventureWorksDW2019].dbo.SQLServerTable out D:\Hamad Data\API\SLG\FHA_HCAHPS_230125_001.xlsx -c -t HAMAD_SAFDER -T -S'


--true --EXECUTE master.dbo.xp_cmdshell 'bcp "SELECT * FROM JOANI.[dbo].colver_test " queryout \\fs1\DataProcessing\4_RAW_FILES\CLOVER_TEST\test1.txt -t "|" -c -T '

EXEC master..xp_cmdshell 'bcp  D:\Hamad Data\API\SLG\FHA_HCAHPS_230125_001_TEST.xlsx -c -S ADMIN-PC -T -F 2 -e'


insert into OPENROWSET('Microsoft.Jet.OLEDB.4.0', 
    'Excel 8.0;Database=D:\FHA_HCAHPS_230125_001.xlsx;', 
    'SELECT * FROM [SurveyTakers$]') select * from SQLServerTable

	--create table SQLServerTable
	--(name varchar(250))

	select * 
into SQLServerTabl FROM OPENROWSET('Microsoft.Jet.OLEDB.4.0', 
    'Excel 8.0;Database=D:\DGS\FHA_HCAHPS_230125_001.xlsx;HDR=YES', 
    'SELECT * FROM [SurveyTakers$]')



	
	SELECT * FROM OPENROWSET('Microsoft.ACE.OLEDB.15.0', 
    'Excel 12.0;Database=D:\DGS\FHA_HCAHPS_230125_001.xlsx;;HDR=NO;IMEX=1', 'SELECT * FROM [SurveyTakers$]')


SELECT * FROM OPENROWSET(
'Microsoft.ACE.OLEDB.12.0'
,'Excel 12.0;Database=D:\DGS\FHA_HCAHPS_230125_001.xlsx;HDR=YES;IMEX=1'
,'SELECT * FROM [SurveyTakers$]')


declare fil_name varchar()

SELECT * FROM OPENROWSET(
'Microsoft.ACE.OLEDB.12.0'
,'Excel 12.0;Database=D:\DGS\FHA_HCAHPS_230125_001_test.xlsx'
,'SELECT * FROM [SurveyTakers$]')

select * from #FHA_HCAHPS

EXECUTE master.dbo.xp_cmdshell 'bcp "SELECT * FROM #FHA_HCAHPS " '

EXECUTE master.dbo.xp_cmdshell 'bcp "SELECT * FROM #FHA_HCAHPS " queryout D:\DGS\Objects.txt -t"|" -c -T -s'

EXECUTE master.dbo.xp_cmdshell 'bcp "SELECT * FROM [DatabaseLog] " queryout D:\DGS\Objects.txt -w -T'


DECLARE @fileName VARCHAR(50)
 
DECLARE @sqlStr VARCHAR(1000)
DECLARE @sqlCmd VARCHAR(1000)
 
exec master..xp_cmdshell 'BCP AdventureWorks.Person.Address OUT d:\PersonAddressAll.txt -T -c'

exec master..xp_cmdshell 'BCP SELECT * FROM #FHA_HCAHPS QUERYOUT D:\DGS\Objects.txt -w  -s -t'

exec master..xp_cmdshell "BCP SELECT *  FROM QA_PLANETWHOLESALE.dbo.T_BE_2_DUNS QUERYOUT C:\BE_2_DUNS.txt -T -c"

Copy direction must be either 'in', 'out' or 'format'.



exec master..xp_cmdshell 'BCP AdventureWorks.Person.Address2 IN d:\PersonAddressAll.txt -T -c -s'
select * from [dbo].[DatabaseLog]
/*

EXEC master.dbo.sp_MSset_oledb_prop N'Microsoft.ACE.OLEDB.12.0', N'AllowInProcess', 1   
EXEC master.dbo.sp_MSset_oledb_prop N'Microsoft.ACE.OLEDB.12.0', N'DynamicParameters', 1



USE [master]
GO
EXEC master.dbo.sp_MSset_oledb_prop N'Microsoft.ACE.OLEDB.12.0', N'DisallowAdHocAccess', 0
GO
*/
/*
EXEC sp_configure 'show advanced options', 1
RECONFIGURE WITH OVERRIDE
GO
EXEC sp_configure 'ad hoc distributed queries', 1
RECONFIGURE WITH OVERRIDE
GO
*/
/*
sp_configure 'show advanced options', 1;
RECONFIGURE;
GO
sp_configure 'Ad Hoc Distributed Queries', 1;
RECONFIGURE;
GO

*/

exec master.dbo.xp_cmdshell 'type D:\Hamad Data\API\DGS\FHA_HCAHPS_230125_001_TEST.xlsx'

exec master.dbo.xp_cmdshell 'bcp D:\DGS\FHA_HCAHPS_230125_001_TEST.xlsx'


exec master.dbo.xp_cmdshell 'type D:\DGS\Aiyol-mhg.txt'
exec master.dbo.xp_cmdshell 'type D:\DGS\FHA_HCAHPS_230125_001.xlsx'

EXEC master..xp_cmdshell 'BCP ProdSQLShackDemo.dbo.SQLShackAuthor OUT f:\PowerSQL\ProdSQLShackDemo.txt -T -c'

select top 1 ClientID into ##t  from  ##temp

EXEC master..xp_cmdshell 'BCP "Select * FROM #temp" queryout "F:\Share\Test\test.csv" -T -c -S'


EXEC master..xp_cmdshell 'Echo "Hi > D:\DGS\test.txt'

DECLARE @H VARCHAR(2) = 'HI'
exec xp_cmdshell 'bcp "SELECT @H AS Place"
queryout 
"D:\DGS\drew.txt"
-c -T'



EXEC master..xp_cmdshell 'bcp Select * FROM [AdventureWorksDW2019].[dbo].[DatabaseLog] > D:\DGS\test.txt -c -T'

declare @var varchar(200)
set @var ='this is test file'
select @var
select * into #tt from (select @var ) A
select * from ##t

EXEC xp_cmdshell 'MKDIR "D:\DGS\Data\"'

EXEC master..xp_cmdshell 'bcp queryout D:\DGS\test1.txt -c -T'
EXEC master..xp_cmdshell 'bcp "tets"  queryout D:\DGS\test1.txt -c -T'

EXEC master..xp_cmdshell 'bcp "Select * FROM #temp"  queryout D:\DGS\test1.txt -c -T'  

EXEC master..xp_cmdshell 'BCP "Select * FROM #temp"  Out D:\DGS\test1.txt -T -c'  

EXEC master..xp_cmdshell 'bcp "Select * FROM #temp" '

EXEC master..xp_cmdshell 'bcp'

EXEC master..xp_cmdshell 'bcp "Select * FROM [AdventureWorksDW2019].[dbo].[DatabaseLog]"  queryout c:\test1.txt -c -T'

EXEC xp_cmdshell 'bcp "select * from ##temp" queryout "C:\Users\PatriceW\Documents\sales.csv" -c -T -t, -r\r\n'



--https://www.youtube.com/watch?v=o_ljf5X4XtU

EXEC xp_cmdshell 'dir /B "c:\';

EXEC master..xp_cmdshell 'ipconfig'



EXECUTE master.dbo.xp_cmdshell 'bcp "SELECT * FROM [AdventureWorksDW2019].[dbo].[DatabaseLog] " queryout D:\DGS\test1.txt -t "|" -c -T '