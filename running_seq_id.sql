-- Create id ---> auto generate id (datatype = integer)
CREATE SEQUENCE seq_log_id;
ALTER TABLE xxx.yyy ALTER COLUMN log_id SET DEFAULT nextval('seq_log_id');


-- Reset value = 1 ---------------
ALTER SEQUENCE seq_log_id RESTART WITH 1;


-- Drop auto id -----------------
DROP SEQUENCE seq_log_id CASCADE ; 
