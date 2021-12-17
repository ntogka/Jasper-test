SELECT ename, fname, dname, phone_service, phone_mobile, email_service
FROM d_person_info_v
WHERE org_id = '0' 
AND CD = '395'; 

SELECT d_dept_history.dscr, d_person_info_v.fname, d_person_info_v.ename, d_person_info_v.phone_service, d_person_info_v.phone_mobile, d_person_info_v.email_service
FROM d_pers_dept, d_person_info_v, d_dept_history
WHERE d_pers_dept.cd_pers = d_person_info_v.cd AND d_dept_history.cd = d_pers_dept.cd_dept
AND d_person_info_v.email_service || d_person_info_v.phone_mobile || d_person_info_v.phone_service IS NOT NULL
ORDER BY d_dept_history.cd;