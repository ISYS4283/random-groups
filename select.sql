SELECT *, NTILE(5) OVER(ORDER BY NEWID()) AS [group] 
FROM [isys4283-2017fa].[dbo].[users]
