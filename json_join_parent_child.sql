select row_to_json(m) as json
from (
select  p.db_code, p.db_name , p.db_desc, -- p.record_status, 
	CASE p.mendix_status 
           WHEN 0 THEN p.record_status 
           WHEN 1 THEN 'N'
	END actionDatabase, (
select array_to_json(array_agg(row_to_json(child)))
  from (
    select s.sch_code, s.sch_name,s.sch_desc, -- s.record_status 
	  CASE s.mendix_status 
           WHEN 0 THEN s.record_status 
           WHEN 1 THEN 'N'
		END actionSchema,(
	   select array_to_json(array_agg(row_to_json(child2)))
			  from (
				select t.tb_code, t.tb_name,t.tb_desc, t.record_status
				from metadata.meta_table t
				  where s.sch_code = t.sch_code and t. mendix_status = 0
			  ) child2
			  ) as table
    from metadata.meta_schema s
    where p.db_code = s.db_code
  ) child
  ) as schema
from  metadata.meta_database p --) as database
 ) m;
