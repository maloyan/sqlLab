/*Расположить отделы по среднему стажу работника в порядке убывания, вывести их города и количество сотрудников.*/
SELECT location.regional_group, count(department.department_id) as 'number_of_employees'
FROM department
JOIN employee ON department.department_id = employee.department_id
JOIN location ON department.location_id = location.location_id
GROUP BY department.department_id, location.regional_group
ORDER BY AVG(1.0 * DATEDIFF(d, hire_date, CURRENT_TIMESTAMP)) DESC