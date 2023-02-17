-- เรียงลำดับตัวอักษรภาษาไทย และตัดข้อมูลซ้ำออกก่อนเรียง

SELECT province from (
SELECT distinct province FROM Schema_name.table_name
) as prov_name
order by  province COLLATE "th_TH" asc;
