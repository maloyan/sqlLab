/*Выбрать название и город отдела, в котором разница в зарплатах менеджера и сотрудников более 1500.*/
SELECT DISTINCT department.name, location.regional_group
FROM employee 
JOIN job ON job.job_id = employee.job_id
JOIN department ON department.department_id = employee.department_id
JOIN location ON location.location_id = department.location_id
JOIN 
   (SELECT department.name AS dep, regional_group AS reg, salary AS sal
	FROM employee 
	JOIN job ON job.job_id = employee.job_id
	JOIN department ON department.department_id = employee.department_id
	JOIN location ON location.location_id = department.location_id
	WHERE [function] = 'MANAGER') tmp ON tmp.dep = department.name AND tmp.reg = location.regional_group
WHERE tmp.sal - salary > 1500 AND tmp.dep = department.name AND tmp.reg = location.regional_group