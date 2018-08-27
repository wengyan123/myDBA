--------------------------------------------
-- Binary logs
--------------------------------------------
-- List current log files and file size
show binary logs;

-- Show the master status for the next event
show master status;

-- binlog config
show variables like 'log_bin%';
show variables like 'binlog%';

-- binlog ratation
show variables like 'binlog_expire_logs_seconds';

-- delete binlog 
PURGE BINARY LOGS TO 'mysql-bin.000010';
PURGE BINARY LOGS BEFORE now() - INTERVAL 3 day;

--------------------------------------------
-- Server status variables
--------------------------------------------
show global status;

show session status;
