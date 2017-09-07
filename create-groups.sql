SELECT *, NTILE(5) OVER(ORDER BY NEWID()) AS [group]
INTO [groups_09-05]
FROM [isys4283-2017fa].[dbo].[users]
