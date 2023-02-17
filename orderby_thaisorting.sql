-- เรียงลำดับตัวอักษรภาษาไทย และตัดข้อมูลซ้ำออกก่อนเรียง

SELECT province from (
SELECT distinct province FROM Schema_name.table_name
) as prov_name
order by  province COLLATE "th_TH" asc;



---> ดูข้อมูลตัวอย่างได้ที่ https://medium.com/@muzikiii/postgresql-order-by-thai-sorting-b80f220f51e5
