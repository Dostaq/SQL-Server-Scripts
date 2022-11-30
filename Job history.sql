SELECT '[DCPWIN21836554\MSSQLSERVER_PROD]' as Server,
   sj.name,
   sh.run_date,
   sh.step_name,
   case sh.run_status
		when 0 then 'Failed'
		when 1 then 'Succeeded'
		when 2 then 'Retry'
		when 3 then 'Canceled'
		when 4 then 'In Progress'
		else '-'
		end as run_status,
   STUFF(STUFF(RIGHT(REPLICATE('0', 6) +  CAST(sh.run_time as varchar(6)), 6), 3, 0, ':'), 6, 0, ':') 'run_time',
   CASE
       WHEN sh.run_duration > 235959 THEN
   		   CAST((CAST(LEFT(CAST(sh.run_duration AS VARCHAR), LEN(CAST(sh.run_duration AS VARCHAR)) - 4) AS INT) / 24) AS VARCHAR)
   		   + '.' + RIGHT('00' + CAST(CAST(LEFT(CAST(sh.run_duration AS VARCHAR), LEN(CAST(sh.run_duration AS VARCHAR)) - 4) AS INT) % 24 AS VARCHAR), 2)
   		   + ':' + STUFF(CAST(RIGHT(CAST(sh.run_duration AS VARCHAR), 4) AS VARCHAR(6)), 3, 0, ':')
   		ELSE
   		   STUFF(STUFF(RIGHT(REPLICATE('0', 6) + CAST(sh.run_duration AS VARCHAR(6)), 6), 3, 0, ':'), 6, 0, ':')
   		END AS 'LastRunDuration (d.HH:mm:SS) '
   FROM [DCPWIN21836554\MSSQLSERVER_PROD].msdb.dbo.sysjobs sj
JOIN [DCPWIN21836554\MSSQLSERVER_PROD].msdb.dbo.sysjobhistory sh
   ON sj.job_id = sh.job_id
where sj.enabled = 1  --Only Enabled Jobs
and sj.name like 'TSI_IndexMaint/UpStatistics%'
UNION
SELECT '[HSTSCMN19769\MSSQLSERVER_PROD]' as Server,
   sj.name,
   sh.run_date,
   sh.step_name,
   case sh.run_status
		when 0 then 'Failed'
		when 1 then 'Succeeded'
		when 2 then 'Retry'
		when 3 then 'Canceled'
		when 4 then 'In Progress'
		else '-'
		end as run_status,
   STUFF(STUFF(RIGHT(REPLICATE('0', 6) +  CAST(sh.run_time as varchar(6)), 6), 3, 0, ':'), 6, 0, ':') 'run_time',
   CASE
       WHEN sh.run_duration > 235959 THEN
   		   CAST((CAST(LEFT(CAST(sh.run_duration AS VARCHAR), LEN(CAST(sh.run_duration AS VARCHAR)) - 4) AS INT) / 24) AS VARCHAR)
   		   + '.' + RIGHT('00' + CAST(CAST(LEFT(CAST(sh.run_duration AS VARCHAR), LEN(CAST(sh.run_duration AS VARCHAR)) - 4) AS INT) % 24 AS VARCHAR), 2)
   		   + ':' + STUFF(CAST(RIGHT(CAST(sh.run_duration AS VARCHAR), 4) AS VARCHAR(6)), 3, 0, ':')
   		ELSE
   		   STUFF(STUFF(RIGHT(REPLICATE('0', 6) + CAST(sh.run_duration AS VARCHAR(6)), 6), 3, 0, ':'), 6, 0, ':')
   		END AS 'LastRunDuration (d.HH:mm:SS) '
   FROM [HSTSCMN19769\MSSQLSERVER_PROD].msdb.dbo.sysjobs sj
JOIN [HSTSCMN19769\MSSQLSERVER_PROD].msdb.dbo.sysjobhistory sh
   ON sj.job_id = sh.job_id
where sj.enabled = 1  --Only Enabled Jobs
and sj.name like 'TSI_IndexMaint/UpStatistics%'
UNION
SELECT '[HSTSCMN19770\MSSQLSERVER_PROD]' as Server,
   sj.name,
   sh.run_date,
   sh.step_name,
   case sh.run_status
		when 0 then 'Failed'
		when 1 then 'Succeeded'
		when 2 then 'Retry'
		when 3 then 'Canceled'
		when 4 then 'In Progress'
		else '-'
		end as run_status,
   STUFF(STUFF(RIGHT(REPLICATE('0', 6) +  CAST(sh.run_time as varchar(6)), 6), 3, 0, ':'), 6, 0, ':') 'run_time',
   CASE
       WHEN sh.run_duration > 235959 THEN
   		   CAST((CAST(LEFT(CAST(sh.run_duration AS VARCHAR), LEN(CAST(sh.run_duration AS VARCHAR)) - 4) AS INT) / 24) AS VARCHAR)
   		   + '.' + RIGHT('00' + CAST(CAST(LEFT(CAST(sh.run_duration AS VARCHAR), LEN(CAST(sh.run_duration AS VARCHAR)) - 4) AS INT) % 24 AS VARCHAR), 2)
   		   + ':' + STUFF(CAST(RIGHT(CAST(sh.run_duration AS VARCHAR), 4) AS VARCHAR(6)), 3, 0, ':')
   		ELSE
   		   STUFF(STUFF(RIGHT(REPLICATE('0', 6) + CAST(sh.run_duration AS VARCHAR(6)), 6), 3, 0, ':'), 6, 0, ':')
   		END AS 'LastRunDuration (d.HH:mm:SS) '
   FROM [HSTSCMN19770\MSSQLSERVER_PROD].msdb.dbo.sysjobs sj
JOIN [HSTSCMN19770\MSSQLSERVER_PROD].msdb.dbo.sysjobhistory sh
   ON sj.job_id = sh.job_id
where sj.enabled = 1  --Only Enabled Jobs
and sj.name like 'TSI_IndexMaint/UpStatistics%'
UNION
SELECT '[HSTSCMN20150\MSSQLSERVER_PROD]' as Server,
   sj.name,
   sh.run_date,
   sh.step_name,
   case sh.run_status
		when 0 then 'Failed'
		when 1 then 'Succeeded'
		when 2 then 'Retry'
		when 3 then 'Canceled'
		when 4 then 'In Progress'
		else '-'
		end as run_status,
   STUFF(STUFF(RIGHT(REPLICATE('0', 6) +  CAST(sh.run_time as varchar(6)), 6), 3, 0, ':'), 6, 0, ':') 'run_time',
   CASE
       WHEN sh.run_duration > 235959 THEN
   		   CAST((CAST(LEFT(CAST(sh.run_duration AS VARCHAR), LEN(CAST(sh.run_duration AS VARCHAR)) - 4) AS INT) / 24) AS VARCHAR)
   		   + '.' + RIGHT('00' + CAST(CAST(LEFT(CAST(sh.run_duration AS VARCHAR), LEN(CAST(sh.run_duration AS VARCHAR)) - 4) AS INT) % 24 AS VARCHAR), 2)
   		   + ':' + STUFF(CAST(RIGHT(CAST(sh.run_duration AS VARCHAR), 4) AS VARCHAR(6)), 3, 0, ':')
   		ELSE
   		   STUFF(STUFF(RIGHT(REPLICATE('0', 6) + CAST(sh.run_duration AS VARCHAR(6)), 6), 3, 0, ':'), 6, 0, ':')
   		END AS 'LastRunDuration (d.HH:mm:SS) '
   FROM [HSTSCMN20150\MSSQLSERVER_PROD].msdb.dbo.sysjobs sj
JOIN [HSTSCMN20150\MSSQLSERVER_PROD].msdb.dbo.sysjobhistory sh
   ON sj.job_id = sh.job_id
where sj.enabled = 1  --Only Enabled Jobs
and sj.name like 'TSI_IndexMaint/UpStatistics%'
