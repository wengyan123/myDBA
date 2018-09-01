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

--------------------------------------------
-- INFORMATION_SCHEMA
--------------------------------------------
select table_name
from information_schema.tables
where table_schema = 'information_schema'
order by table_name;

select column_name
from information_schema.columns
where table_schema = 'information_schema'
and table_name = 'VIEWS';

-- Displays the storage engines used for the tables in a given database
select table_name, engine
from information_schema.tables
where table_schema = 'world_innodb';

-- displays the number of tables in each database
select table_schema, count(*)
from information_schema.tables
group by table_schema;

-- obtain metadata about database(schema)
select * 
from information_schema.schemata
where schema_name = 'world_innodb';

-- list number of tables, per storage engine, for each database(schema)
select table_schema, engine, count(*)
from information_schema.tables
group by table_schema, engine;


--------------------------------------------
-- AUTOCOMMIT
--------------------------------------------
show global variables like 'AUTOCOMMIT';

-- enable autocommit
set global autocommit=1;

-- disable autocommit
set global autocommit=0;


--------------------------------------------
-- ISOLATION LEVEL
--------------------------------------------
-- read uncommitted
-- read committed
-- repeatable read
-- serializable
set session transaction isolation level read committed;

