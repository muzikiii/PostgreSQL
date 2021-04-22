
-- Update 1 Table 2 ครั้ง (ไปหา ทั้งหมด 2 Table)
	
	update schema.table1 as t1
    SET t1.col1_aname = t2.col1_aname  from schema.table2 as t2
    where t1.col_something like t2.col_want;
	
	update schema.table1 as t1
	SET (col2_bname, col3_cname ) = (t3.col2_bname, t3.col3_cname )  from schema.table3 as t3
	where  t1.col_something = t3.col_something ;
	
	
-- Update 1 Table by Join

	UPDATE schema.table1 AS  t1 
   	set  col1_aname   = t2.col1_aname
   		, col2_bname  = t3.col2_bname 
		, col3_cname  = t3.col3_cname
   	from schema.table2 as t2 
	join schema.table3 as t3 on t2.col1_aname = t3.col1_aname
   	where t1.col_something like t2.col_want ;  