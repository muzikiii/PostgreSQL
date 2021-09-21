-- Create id ---> auto generate id (datatype = integer)
CREATE SEQUENCE schema_name.seq_log_id;
ALTER TABLE xxx.yyy ALTER COLUMN log_id SET DEFAULT nextval('seq_log_id');

-- Reset value = 1 ---------------
ALTER SEQUENCE seq_log_id RESTART WITH 1;

-- Drop auto id -----------------
DROP SEQUENCE seq_log_id CASCADE ; 


-- ==================================================================================================
-- Create Seq Text + Digit
CREATE TABLE schema.table (
	 id TEXT PRIMARY KEY,
   name varchar(100)
);
create sequence schema.seq_name;
alter table schema.table alter column id set default 'OTH'||to_char(nextval('schema.seq_name'),'0000')

-- Output 
-- id         name
-- OTH 0001   Hello1
-- OTH 0002   Hello2
