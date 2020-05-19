SELECT TOP 5
    dest.text,
    deqs.execution_count
FROM
    sys.dm_exec_query_stats AS deqs
CROSS APPLY sys.dm_exec_sql_text(deqs.sql_handle) AS dest
ORDER BY deqs.execution_count DESC;